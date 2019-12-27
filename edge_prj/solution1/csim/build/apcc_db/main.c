/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void edge_det(signed int *llvm_cbe_video, signed int *llvm_cbe_sob_x1, signed int *llvm_cbe_sob_y1);
signed int convolution(signed int *llvm_cbe_operatr, signed int *llvm_cbe_block);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void edge_det(signed int *llvm_cbe_video, signed int *llvm_cbe_sob_x1, signed int *llvm_cbe_sob_y1) {
  static  unsigned long long aesl_llvm_cbe_sob_x_count = 0;
  signed int llvm_cbe_sob_x[9];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_sob_y_count = 0;
  signed int llvm_cbe_sob_y[9];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_block_count = 0;
  signed int llvm_cbe_block[9];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  signed int *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  signed int *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  signed int *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
   char *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  signed int *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  signed int *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  signed int *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  signed int *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  signed int *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge9_count = 0;
  unsigned int llvm_cbe_storemerge9;
  unsigned int llvm_cbe_storemerge9__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge18_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge18_2e_us;
  unsigned int llvm_cbe_storemerge18_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  signed int *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  signed int *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge18_count = 0;
  unsigned int llvm_cbe_storemerge18;
  unsigned int llvm_cbe_storemerge18__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  signed int *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned long long llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  signed int *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  signed int *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  unsigned long long llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  signed int *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  signed int *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned int llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned long long llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  signed int *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  signed int *llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned long long llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  signed int *llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  signed int *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned long long llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  signed int *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  signed int *llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  unsigned long long llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  signed int *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  signed int *llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  unsigned long long llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  signed int *llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  signed int *llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  unsigned long long llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  signed int *llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  signed int *llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  unsigned int llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  signed int *llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  unsigned int llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  signed int *llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned int llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  unsigned long long llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  signed int *llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  signed int *llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  unsigned int llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond13_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond14_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @edge_det\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [9 x i32]* %%sob_x to i8*, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_10_count);
  llvm_cbe_tmp__1 = ( char *)(( char *)(&llvm_cbe_sob_x));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memset(i8* %%1, i32 0, i64 36 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_11_count);
  ( char *)memset(( char *)llvm_cbe_tmp__1, 0u, 36ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",36ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 0, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_12_count);
  llvm_cbe_tmp__3 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -1, i32* %%3, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_13_count);
  *llvm_cbe_tmp__3 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__4 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%4, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_15_count);
  *llvm_cbe_tmp__4 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 3, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__5 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -2, i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_17_count);
  *llvm_cbe_tmp__5 = 4294967294u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967294u);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 5, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__6 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 2, i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_19_count);
  *llvm_cbe_tmp__6 = 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2u);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 6, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__7 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -1, i32* %%7, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_21_count);
  *llvm_cbe_tmp__7 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__8 = (signed int *)(&llvm_cbe_sob_x[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 9 && "Write access out of array 'sob_x' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%8, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_23_count);
  *llvm_cbe_tmp__8 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = bitcast [9 x i32]* %%sob_y to i8*, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__9 = ( char *)(( char *)(&llvm_cbe_sob_y));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = call i8* @memset(i8* %%9, i32 0, i64 36 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_26_count);
  ( char *)memset(( char *)llvm_cbe_tmp__9, 0u, 36ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",36ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 0, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__11 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -1, i32* %%11, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_28_count);
  *llvm_cbe_tmp__11 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__12 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -2, i32* %%12, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_30_count);
  *llvm_cbe_tmp__12 = 4294967294u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967294u);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__13 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 -1, i32* %%13, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_32_count);
  *llvm_cbe_tmp__13 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 6, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__14 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%14, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_34_count);
  *llvm_cbe_tmp__14 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 7, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__15 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )7ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )7ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 2, i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_36_count);
  *llvm_cbe_tmp__15 = 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2u);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__16 = (signed int *)(&llvm_cbe_sob_y[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 9 && "Write access out of array 'sob_y' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%16, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_38_count);
  *llvm_cbe_tmp__16 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 0, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__17 = (signed int *)(&llvm_cbe_block[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge9__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader7;

  do {     /* Syntactic loop '.preheader7' to make GCC happy */
llvm_cbe__2e_preheader7:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge9 = phi i32 [ 0, %%0 ], [ %%86, %%.us-lcssa.us  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge9_count);
  llvm_cbe_storemerge9 = (unsigned int )llvm_cbe_storemerge9__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge9 = 0x%X",llvm_cbe_storemerge9);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__81);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%storemerge9, 100, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_storemerge9&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge9) > ((signed int )97u))) {
    llvm_cbe_storemerge18_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__82;
  } else {
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader7_2e__2e_preheader7_2e_split_crit_edge;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = add nsw i32 %%storemerge9, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_243_count);
  llvm_cbe_tmp__81 = (unsigned int )((unsigned int )(llvm_cbe_storemerge9&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__81&4294967295ull)));
  if (((llvm_cbe_tmp__81&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__83;
  } else {
    llvm_cbe_storemerge9__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__81;   /* for PHI node */
    goto llvm_cbe__2e_preheader7;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__82:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge18.us = phi i32 [ %%25, %%20 ], [ 0, %%.preheader7  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge18_2e_us_count);
  llvm_cbe_storemerge18_2e_us = (unsigned int )llvm_cbe_storemerge18_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge18.us = 0x%X",llvm_cbe_storemerge18_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__23);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add nsw i32 %%storemerge18.us, %%19, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = sext i32 %%21 to i64, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__20 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i32* %%sob_x1, i64 %%22, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__21 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%23, align 4, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_65_count);
  *llvm_cbe_tmp__21 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds i32* %%sob_y1, i64 %%22, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__22 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%24, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_67_count);
  *llvm_cbe_tmp__22 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = add nsw i32 %%storemerge18.us, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__23&4294967295ull)));
  if (((llvm_cbe_tmp__23&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge18_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__23;   /* for PHI node */
    goto llvm_cbe_tmp__82;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader7..preheader7.split_crit_edge' to make GCC happy */
llvm_cbe__2e_preheader7_2e__2e_preheader7_2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge18 = phi i32 [ %%85, %%84 ], [ 0, %%.preheader7  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge18_count);
  llvm_cbe_storemerge18 = (unsigned int )llvm_cbe_storemerge18__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge18 = 0x%X",llvm_cbe_storemerge18);
printf("\n = 0x%X",llvm_cbe_tmp__80);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge18) > ((signed int )97u))) {
    goto llvm_cbe_tmp__84;
  } else {
    goto llvm_cbe__2e_preheader5;
  }

llvm_cbe_tmp__85:
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = add nsw i32 %%storemerge18, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__80 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__80&4294967295ull)));
  if (((llvm_cbe_tmp__80&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__80;   /* for PHI node */
    goto llvm_cbe__2e_preheader7_2e__2e_preheader7_2e_split_crit_edge;
  }

llvm_cbe__2e_preheader5:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add i32 %%19, %%storemerge18, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_tmp__18&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = sext i32 %%27 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i32* %%video, i64 %%28, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__26 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i32* %%29, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__27 = (unsigned int )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%30, i32* %%17, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_93_count);
  *llvm_cbe_tmp__17 = llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = add i32 %%27, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__28 = (unsigned int )((unsigned int )(llvm_cbe_tmp__24&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__28&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = sext i32 %%31 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__29 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds i32* %%video, i64 %%32, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__30 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__29))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__29));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__31 = (unsigned int )*llvm_cbe_tmp__30;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__32 = (signed int *)(&llvm_cbe_block[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%34, i32* %%35, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_104_count);
  *llvm_cbe_tmp__32 = llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i32 %%27, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_tmp__24&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = sext i32 %%36 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__34 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i32* %%video, i64 %%37, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__35 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__34))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__34));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i32* %%38, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__36 = (unsigned int )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__37 = (signed int *)(&llvm_cbe_block[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%39, i32* %%40, align 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_115_count);
  *llvm_cbe_tmp__37 = llvm_cbe_tmp__36;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = mul i32 %%storemerge9, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__38 = (unsigned int )((unsigned int )(llvm_cbe_storemerge9&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__38&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = add i32 %%41, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__39 = (unsigned int )((unsigned int )(llvm_cbe_tmp__38&4294967295ull)) + ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__39&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = add i32 %%42, %%storemerge18, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__40 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__40&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = sext i32 %%43 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__41 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds i32* %%video, i64 %%44, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__42 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__43 = (unsigned int )*llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 3, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__44 = (signed int *)(&llvm_cbe_block[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%46, i32* %%47, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_137_count);
  *llvm_cbe_tmp__44 = llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add i32 %%43, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__40&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = sext i32 %%48 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__46 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__45);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds i32* %%video, i64 %%49, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__47 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__46))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__46));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = load i32* %%50, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__48 = (unsigned int )*llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__49 = (signed int *)(&llvm_cbe_block[(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )4ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%51, i32* %%52, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_148_count);
  *llvm_cbe_tmp__49 = llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = add i32 %%43, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_tmp__40&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = sext i32 %%53 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__51 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds i32* %%video, i64 %%54, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__52 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__51))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__51));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = load i32* %%55, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__53 = (unsigned int )*llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 5, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__54 = (signed int *)(&llvm_cbe_block[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%56, i32* %%57, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_159_count);
  *llvm_cbe_tmp__54 = llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = mul i32 %%storemerge9, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(llvm_cbe_storemerge9&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__55&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = add i32 %%58, 200, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_tmp__55&4294967295ull)) + ((unsigned int )(200u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add i32 %%59, %%storemerge18, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__57 = (unsigned int )((unsigned int )(llvm_cbe_tmp__56&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__57&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = sext i32 %%60 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_177_count);
  llvm_cbe_tmp__58 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = getelementptr inbounds i32* %%video, i64 %%61, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_178_count);
  llvm_cbe_tmp__59 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__58))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__58));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = load i32* %%62, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__60 = (unsigned int )*llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 6, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__61 = (signed int *)(&llvm_cbe_block[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%63, i32* %%64, align 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_181_count);
  *llvm_cbe_tmp__61 = llvm_cbe_tmp__60;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = add i32 %%60, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(llvm_cbe_tmp__57&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__62&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = sext i32 %%65 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__63 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__63);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds i32* %%video, i64 %%66, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__64 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__63))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__63));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i32* %%67, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__65 = (unsigned int )*llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 7, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__66 = (signed int *)(&llvm_cbe_block[(((signed long long )7ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )7ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%68, i32* %%69, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_192_count);
  *llvm_cbe_tmp__66 = llvm_cbe_tmp__65;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = add i32 %%60, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_198_count);
  llvm_cbe_tmp__67 = (unsigned int )((unsigned int )(llvm_cbe_tmp__57&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__67&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = sext i32 %%70 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__68 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = getelementptr inbounds i32* %%video, i64 %%71, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__69 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__68))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__68));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = load i32* %%72, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__70 = (unsigned int )*llvm_cbe_tmp__69;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__71 = (signed int *)(&llvm_cbe_block[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%73, i32* %%74, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_203_count);
  *llvm_cbe_tmp__71 = llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = call i32 @convolution(i32* %%3, i32* %%17), !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__72 = (unsigned int )convolution((signed int *)llvm_cbe_tmp__3, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__72);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = getelementptr inbounds i32* %%sob_x1, i64 %%28, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_217_count);
  llvm_cbe_tmp__73 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%75, i32* %%76, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_218_count);
  *llvm_cbe_tmp__73 = llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = call i32 @convolution(i32* %%11, i32* %%17), !dbg !8 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_219_count);
  llvm_cbe_tmp__74 = (unsigned int )convolution((signed int *)llvm_cbe_tmp__11, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__74);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = getelementptr inbounds i32* %%sob_y1, i64 %%28, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_222_count);
  llvm_cbe_tmp__75 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%77, i32* %%78, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_223_count);
  *llvm_cbe_tmp__75 = llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__74);
  goto llvm_cbe_tmp__85;

llvm_cbe_tmp__84:
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = add nsw i32 %%storemerge18, %%19, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__76 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__76&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = sext i32 %%80 to i64, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__77 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__77);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = getelementptr inbounds i32* %%sob_x1, i64 %%81, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__78 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__77))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__77));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%82, align 4, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_228_count);
  *llvm_cbe_tmp__78 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = getelementptr inbounds i32* %%sob_y1, i64 %%81, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__79 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__77))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__77));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%83, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_230_count);
  *llvm_cbe_tmp__79 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__85;

  } while (1); /* end of syntactic loop '.preheader7..preheader7.split_crit_edge' */
  } while (1); /* end of syntactic loop '.preheader7' */
llvm_cbe_tmp__83:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @edge_det}\n");
  return;
}


signed int convolution(signed int *llvm_cbe_operatr, signed int *llvm_cbe_block) {
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  unsigned int llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  signed int *llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  unsigned int llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  signed int *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  signed int *llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  unsigned int llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  signed int *llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  unsigned int llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  unsigned int llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  unsigned int llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  signed int *llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  signed int *llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  unsigned int llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  unsigned int llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  signed int *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  unsigned int llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  signed int *llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  unsigned int llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  unsigned int llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  signed int *llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  unsigned int llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  signed int *llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  unsigned int llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  signed int *llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  signed int *llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  unsigned int llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  signed int *llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  signed int *llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  unsigned int llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  unsigned int llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  unsigned int llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  signed int *llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  unsigned int llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  signed int *llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  unsigned int llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  unsigned int llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  unsigned int llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @convolution\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = load i32* %%operatr, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_271_count);
  llvm_cbe_tmp__86 = (unsigned int )*llvm_cbe_operatr;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__86);
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* %%block, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_272_count);
  llvm_cbe_tmp__87 = (unsigned int )*llvm_cbe_block;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul nsw i32 %%1, %%0, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__88 = (unsigned int )((unsigned int )(llvm_cbe_tmp__87&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__86&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__88&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i32* %%operatr, i64 1, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__89 = (signed int *)(&llvm_cbe_operatr[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__90 = (unsigned int )*llvm_cbe_tmp__89;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds i32* %%block, i64 1, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__91 = (signed int *)(&llvm_cbe_block[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__92 = (unsigned int )*llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__92);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = mul nsw i32 %%6, %%4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_286_count);
  llvm_cbe_tmp__93 = (unsigned int )((unsigned int )(llvm_cbe_tmp__92&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__90&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__93&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%7, %%2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_287_count);
  llvm_cbe_tmp__94 = (unsigned int )((unsigned int )(llvm_cbe_tmp__93&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__88&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__94&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i32* %%operatr, i64 2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_296_count);
  llvm_cbe_tmp__95 = (signed int *)(&llvm_cbe_operatr[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__96 = (unsigned int )*llvm_cbe_tmp__95;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i32* %%block, i64 2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__97 = (signed int *)(&llvm_cbe_block[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_299_count);
  llvm_cbe_tmp__98 = (unsigned int )*llvm_cbe_tmp__97;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__98);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = mul nsw i32 %%12, %%10, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_300_count);
  llvm_cbe_tmp__99 = (unsigned int )((unsigned int )(llvm_cbe_tmp__98&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__96&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__99&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, %%8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__100 = (unsigned int )((unsigned int )(llvm_cbe_tmp__99&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__94&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__100&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i32* %%operatr, i64 3, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_319_count);
  llvm_cbe_tmp__101 = (signed int *)(&llvm_cbe_operatr[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_320_count);
  llvm_cbe_tmp__102 = (unsigned int )*llvm_cbe_tmp__101;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i32* %%block, i64 3, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__103 = (signed int *)(&llvm_cbe_block[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* %%17, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_322_count);
  llvm_cbe_tmp__104 = (unsigned int )*llvm_cbe_tmp__103;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__104);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%18, %%16, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_323_count);
  llvm_cbe_tmp__105 = (unsigned int )((unsigned int )(llvm_cbe_tmp__104&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__102&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__105&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%19, %%14, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__106 = (unsigned int )((unsigned int )(llvm_cbe_tmp__105&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__100&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__106&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds i32* %%operatr, i64 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_333_count);
  llvm_cbe_tmp__107 = (signed int *)(&llvm_cbe_operatr[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_334_count);
  llvm_cbe_tmp__108 = (unsigned int )*llvm_cbe_tmp__107;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i32* %%block, i64 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__109 = (signed int *)(&llvm_cbe_block[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i32* %%23, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_336_count);
  llvm_cbe_tmp__110 = (unsigned int )*llvm_cbe_tmp__109;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = mul nsw i32 %%24, %%22, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__111 = (unsigned int )((unsigned int )(llvm_cbe_tmp__110&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__108&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__111&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%25, %%20, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__112 = (unsigned int )((unsigned int )(llvm_cbe_tmp__111&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__106&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__112&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds i32* %%operatr, i64 5, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_347_count);
  llvm_cbe_tmp__113 = (signed int *)(&llvm_cbe_operatr[(((signed long long )5ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%27, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__114 = (unsigned int )*llvm_cbe_tmp__113;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i32* %%block, i64 5, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__115 = (signed int *)(&llvm_cbe_block[(((signed long long )5ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i32* %%29, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__116 = (unsigned int )*llvm_cbe_tmp__115;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = mul nsw i32 %%30, %%28, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_351_count);
  llvm_cbe_tmp__117 = (unsigned int )((unsigned int )(llvm_cbe_tmp__116&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__114&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__117&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%31, %%26, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_352_count);
  llvm_cbe_tmp__118 = (unsigned int )((unsigned int )(llvm_cbe_tmp__117&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__112&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__118&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds i32* %%operatr, i64 6, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_370_count);
  llvm_cbe_tmp__119 = (signed int *)(&llvm_cbe_operatr[(((signed long long )6ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_371_count);
  llvm_cbe_tmp__120 = (unsigned int )*llvm_cbe_tmp__119;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__120);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds i32* %%block, i64 6, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_372_count);
  llvm_cbe_tmp__121 = (signed int *)(&llvm_cbe_block[(((signed long long )6ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i32* %%35, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_373_count);
  llvm_cbe_tmp__122 = (unsigned int )*llvm_cbe_tmp__121;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = mul nsw i32 %%36, %%34, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_374_count);
  llvm_cbe_tmp__123 = (unsigned int )((unsigned int )(llvm_cbe_tmp__122&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__120&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__123&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add nsw i32 %%37, %%32, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__124 = (unsigned int )((unsigned int )(llvm_cbe_tmp__123&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__118&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__124&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds i32* %%operatr, i64 7, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_384_count);
  llvm_cbe_tmp__125 = (signed int *)(&llvm_cbe_operatr[(((signed long long )7ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i32* %%39, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_385_count);
  llvm_cbe_tmp__126 = (unsigned int )*llvm_cbe_tmp__125;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i32* %%block, i64 7, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_386_count);
  llvm_cbe_tmp__127 = (signed int *)(&llvm_cbe_block[(((signed long long )7ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32* %%41, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_387_count);
  llvm_cbe_tmp__128 = (unsigned int )*llvm_cbe_tmp__127;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__128);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = mul nsw i32 %%42, %%40, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_388_count);
  llvm_cbe_tmp__129 = (unsigned int )((unsigned int )(llvm_cbe_tmp__128&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__126&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__129&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = add nsw i32 %%43, %%38, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_389_count);
  llvm_cbe_tmp__130 = (unsigned int )((unsigned int )(llvm_cbe_tmp__129&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__124&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__130&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds i32* %%operatr, i64 8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_398_count);
  llvm_cbe_tmp__131 = (signed int *)(&llvm_cbe_operatr[(((signed long long )8ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_399_count);
  llvm_cbe_tmp__132 = (unsigned int )*llvm_cbe_tmp__131;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds i32* %%block, i64 8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_400_count);
  llvm_cbe_tmp__133 = (signed int *)(&llvm_cbe_block[(((signed long long )8ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i32* %%47, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_401_count);
  llvm_cbe_tmp__134 = (unsigned int )*llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = mul nsw i32 %%48, %%46, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_402_count);
  llvm_cbe_tmp__135 = (unsigned int )((unsigned int )(llvm_cbe_tmp__134&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__132&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__135&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add nsw i32 %%49, %%44, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_403_count);
  llvm_cbe_tmp__136 = (unsigned int )((unsigned int )(llvm_cbe_tmp__135&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__130&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__136&4294967295ull)));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @convolution}\n");
  return llvm_cbe_tmp__136;
}

