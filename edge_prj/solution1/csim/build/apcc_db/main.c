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
void edge_det(signed int *llvm_cbe_video, signed int *llvm_cbe_sob_x1, signed int *llvm_cbe_sob_y1, signed int *llvm_cbe_sob_xy1);
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

void edge_det(signed int *llvm_cbe_video, signed int *llvm_cbe_sob_x1, signed int *llvm_cbe_sob_y1, signed int *llvm_cbe_sob_xy1) {
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
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  signed int *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  signed int *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  signed int *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
   char *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  signed int *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  signed int *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  signed int *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  signed int *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  signed int *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge22_count = 0;
  unsigned int llvm_cbe_storemerge22;
  unsigned int llvm_cbe_storemerge22__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge112_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge112_2e_us;
  unsigned int llvm_cbe_storemerge112_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  signed int *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  signed int *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond25_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge112_2e_us13_count = 0;
  unsigned int llvm_cbe_storemerge112_2e_us13;
  unsigned int llvm_cbe_storemerge112_2e_us13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  signed int *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  signed int *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge112_count = 0;
  unsigned int llvm_cbe_storemerge112;
  unsigned int llvm_cbe_storemerge112__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned long long llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  signed int *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned long long llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  signed int *llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  unsigned long long llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  signed int *llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  signed int *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
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
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  unsigned long long llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  signed int *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  signed int *llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  unsigned long long llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  signed int *llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  signed int *llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  unsigned long long llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  signed int *llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  signed int *llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
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
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  unsigned long long llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  signed int *llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  signed int *llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  unsigned int llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  unsigned long long llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  signed int *llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  unsigned int llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  signed int *llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  unsigned int llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  unsigned long long llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  signed int *llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  unsigned int llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  signed int *llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  unsigned int llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  unsigned long long llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  signed int *llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  unsigned int llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  signed int *llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_ispos_count = 0;
  static  unsigned long long aesl_llvm_cbe_neg_count = 0;
  unsigned int llvm_cbe_neg;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  unsigned int llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_ispos4_count = 0;
  static  unsigned long long aesl_llvm_cbe_neg5_count = 0;
  unsigned int llvm_cbe_neg5;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  signed int *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  unsigned long long llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  signed int *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  signed int *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond28_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond29_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @edge_det\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [9 x i32]* %%sob_x to i8*, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__1 = ( char *)(( char *)(&llvm_cbe_sob_x));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memset(i8* %%1, i32 0, i64 36 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_15_count);
  ( char *)memset(( char *)llvm_cbe_tmp__1, 0u, 36ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",36ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 0, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_16_count);
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
printf("\n  store i32 -1, i32* %%3, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_17_count);
  *llvm_cbe_tmp__3 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_18_count);
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
printf("\n  store i32 1, i32* %%4, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_19_count);
  *llvm_cbe_tmp__4 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 3, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_20_count);
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
printf("\n  store i32 -2, i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_21_count);
  *llvm_cbe_tmp__5 = 4294967294u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967294u);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 5, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_22_count);
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
printf("\n  store i32 2, i32* %%6, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_23_count);
  *llvm_cbe_tmp__6 = 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2u);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 6, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_24_count);
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
printf("\n  store i32 -1, i32* %%7, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_25_count);
  *llvm_cbe_tmp__7 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr [9 x i32]* %%sob_x, i64 0, i64 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_26_count);
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
printf("\n  store i32 1, i32* %%8, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_27_count);
  *llvm_cbe_tmp__8 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = bitcast [9 x i32]* %%sob_y to i8*, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__9 = ( char *)(( char *)(&llvm_cbe_sob_y));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = call i8* @memset(i8* %%9, i32 0, i64 36 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_30_count);
  ( char *)memset(( char *)llvm_cbe_tmp__9, 0u, 36ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",36ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 0, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_31_count);
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
printf("\n  store i32 -1, i32* %%11, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_32_count);
  *llvm_cbe_tmp__11 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_33_count);
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
printf("\n  store i32 -2, i32* %%12, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_34_count);
  *llvm_cbe_tmp__12 = 4294967294u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967294u);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_35_count);
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
printf("\n  store i32 -1, i32* %%13, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_36_count);
  *llvm_cbe_tmp__13 = 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 4294967295u);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 6, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_37_count);
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
printf("\n  store i32 1, i32* %%14, align 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_38_count);
  *llvm_cbe_tmp__14 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 7, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_39_count);
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
printf("\n  store i32 2, i32* %%15, align 4, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_40_count);
  *llvm_cbe_tmp__15 = 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2u);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr [9 x i32]* %%sob_y, i64 0, i64 8, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_41_count);
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
printf("\n  store i32 1, i32* %%16, align 16, !dbg !6 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_42_count);
  *llvm_cbe_tmp__16 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 0, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__17 = (signed int *)(&llvm_cbe_block[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 9
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge22__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader11;

  do {     /* Syntactic loop '.preheader11' to make GCC happy */
llvm_cbe__2e_preheader11:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge22 = phi i32 [ 0, %%0 ], [ %%100, %%.us-lcssa.us  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge22_count);
  llvm_cbe_storemerge22 = (unsigned int )llvm_cbe_storemerge22__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge22 = 0x%X",llvm_cbe_storemerge22);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__94);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = mul nsw i32 %%storemerge22, 100, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_storemerge22&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
  if (((llvm_cbe_storemerge22&4294967295U) == (99u&4294967295U))) {
    llvm_cbe_storemerge112_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__95;
  } else {
    goto llvm_cbe__2e_preheader11_2e__2e_preheader11_2e_split_crit_edge;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = add nsw i32 %%storemerge22, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_295_count);
  llvm_cbe_tmp__94 = (unsigned int )((unsigned int )(llvm_cbe_storemerge22&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__94&4294967295ull)));
  if (((llvm_cbe_tmp__94&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__96;
  } else {
    llvm_cbe_storemerge22__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__94;   /* for PHI node */
    goto llvm_cbe__2e_preheader11;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__95:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge112.us = phi i32 [ %%26, %%21 ], [ 0, %%.preheader11  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge112_2e_us_count);
  llvm_cbe_storemerge112_2e_us = (unsigned int )llvm_cbe_storemerge112_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge112.us = 0x%X",llvm_cbe_storemerge112_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__23);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add nsw i32 %%storemerge112.us, %%20, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = sext i32 %%22 to i64, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__20 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds i32* %%sob_x1, i64 %%23, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__21 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%24, align 4, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_79_count);
  *llvm_cbe_tmp__21 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds i32* %%sob_y1, i64 %%23, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__22 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%25, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_81_count);
  *llvm_cbe_tmp__22 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge112.us, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__23&4294967295ull)));
  if (((llvm_cbe_tmp__23&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge112_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__23;   /* for PHI node */
    goto llvm_cbe_tmp__95;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_us_2d_lcssa:
  goto llvm_cbe__2e_us_2d_lcssa_2e_us;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__97:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge112.us13 = phi i32 [ %%32, %%27 ], [ 0, %%.preheader11..preheader11.split_crit_edge  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge112_2e_us13_count);
  llvm_cbe_storemerge112_2e_us13 = (unsigned int )llvm_cbe_storemerge112_2e_us13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge112.us13 = 0x%X",llvm_cbe_storemerge112_2e_us13);
printf("\n = 0x%X",llvm_cbe_tmp__28);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = add nsw i32 %%storemerge112.us13, %%20, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112_2e_us13&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = sext i32 %%28 to i64, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds i32* %%sob_x1, i64 %%29, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__26 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%30, align 4, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_100_count);
  *llvm_cbe_tmp__26 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds i32* %%sob_y1, i64 %%29, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__27 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%31, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_102_count);
  *llvm_cbe_tmp__27 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%storemerge112.us13, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__28 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112_2e_us13&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__28&4294967295ull)));
  if (((llvm_cbe_tmp__28&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa;
  } else {
    llvm_cbe_storemerge112_2e_us13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__28;   /* for PHI node */
    goto llvm_cbe_tmp__97;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader11_2e__2e_preheader11_2e_split_crit_edge:
  if (((llvm_cbe_storemerge22&4294967295U) == (1u&4294967295U))) {
    llvm_cbe_storemerge112_2e_us13__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__97;
  } else {
    llvm_cbe_storemerge112__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader11_2e_split_2e__2e_preheader11_2e_split_2e_split_crit_edge;
  }

  do {     /* Syntactic loop '.preheader11.split..preheader11.split.split_crit_edge' to make GCC happy */
llvm_cbe__2e_preheader11_2e_split_2e__2e_preheader11_2e_split_2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge112 = phi i32 [ %%99, %%98 ], [ 0, %%.preheader11..preheader11.split_crit_edge  for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_storemerge112_count);
  llvm_cbe_storemerge112 = (unsigned int )llvm_cbe_storemerge112__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge112 = 0x%X",llvm_cbe_storemerge112);
printf("\n = 0x%X",llvm_cbe_tmp__93);
printf("\n = 0x%X",0u);
}
  switch (((unsigned int )(llvm_cbe_storemerge112&4294967295ull))) {
  default:
    goto llvm_cbe__2e_preheader9;
;
  case ((unsigned int )(99u&4294967295ull)):
    goto llvm_cbe_tmp__98;
  case ((unsigned int )(1u&4294967295ull)):
    goto llvm_cbe_tmp__98;
  }
llvm_cbe_tmp__99:
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = add nsw i32 %%storemerge112, 1, !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_279_count);
  llvm_cbe_tmp__93 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__93&4294967295ull)));
  if (((llvm_cbe_tmp__93&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa;
  } else {
    llvm_cbe_storemerge112__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__93;   /* for PHI node */
    goto llvm_cbe__2e_preheader11_2e_split_2e__2e_preheader11_2e_split_2e_split_crit_edge;
  }

llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = add i32 %%storemerge112, -101, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__29 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112&4294967295ull)) + ((unsigned int )(4294967195u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__29&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = add i32 %%33, %%20, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = sext i32 %%34 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__31 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds i32* %%video, i64 %%35, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__32 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__31))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__31));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32* %%36, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__33 = (unsigned int )*llvm_cbe_tmp__32;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 9 && "Write access out of array 'block' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%37, i32* %%17, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_132_count);
  *llvm_cbe_tmp__17 = llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add i32 %%34, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_tmp__30&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = sext i32 %%38 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__35 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds i32* %%video, i64 %%39, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__36 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__35))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__35));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i32* %%40, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__37 = (unsigned int )*llvm_cbe_tmp__36;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__38 = (signed int *)(&llvm_cbe_block[(((signed long long )1ull))
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
printf("\n  store i32 %%41, i32* %%42, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_143_count);
  *llvm_cbe_tmp__38 = llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = add i32 %%34, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__39 = (unsigned int )((unsigned int )(llvm_cbe_tmp__30&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__39&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = sext i32 %%43 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_150_count);
  llvm_cbe_tmp__40 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds i32* %%video, i64 %%44, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_151_count);
  llvm_cbe_tmp__41 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__40))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__40));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__42 = (unsigned int )*llvm_cbe_tmp__41;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__43 = (signed int *)(&llvm_cbe_block[(((signed long long )2ull))
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
printf("\n  store i32 %%46, i32* %%47, align 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_154_count);
  *llvm_cbe_tmp__43 = llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = mul i32 %%storemerge22, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__44 = (unsigned int )((unsigned int )(llvm_cbe_storemerge22&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__44&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add i32 %%48, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) + ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add i32 %%33, %%49, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__45&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = sext i32 %%50 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__47 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds i32* %%video, i64 %%51, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_173_count);
  llvm_cbe_tmp__48 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__47))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__47));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = load i32* %%52, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__49 = (unsigned int )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 3, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__50 = (signed int *)(&llvm_cbe_block[(((signed long long )3ull))
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
printf("\n  store i32 %%53, i32* %%54, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_176_count);
  *llvm_cbe_tmp__50 = llvm_cbe_tmp__49;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = add i32 %%50, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_tmp__46&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = sext i32 %%55 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__52 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds i32* %%video, i64 %%56, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__53 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__52))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__52));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i32* %%57, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__54 = (unsigned int )*llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__55 = (signed int *)(&llvm_cbe_block[(((signed long long )4ull))
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
printf("\n  store i32 %%58, i32* %%59, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_187_count);
  *llvm_cbe_tmp__55 = llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add i32 %%50, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_tmp__46&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = sext i32 %%60 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__57 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = getelementptr inbounds i32* %%video, i64 %%61, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_195_count);
  llvm_cbe_tmp__58 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__57))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__57));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = load i32* %%62, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_196_count);
  llvm_cbe_tmp__59 = (unsigned int )*llvm_cbe_tmp__58;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 5, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_197_count);
  llvm_cbe_tmp__60 = (signed int *)(&llvm_cbe_block[(((signed long long )5ull))
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
printf("\n  store i32 %%63, i32* %%64, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_198_count);
  *llvm_cbe_tmp__60 = llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = mul i32 %%storemerge22, 100, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_213_count);
  llvm_cbe_tmp__61 = (unsigned int )((unsigned int )(llvm_cbe_storemerge22&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__61&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = add i32 %%65, 200, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(llvm_cbe_tmp__61&4294967295ull)) + ((unsigned int )(200u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__62&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = add i32 %%33, %%66, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_215_count);
  llvm_cbe_tmp__63 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__62&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__63&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = sext i32 %%67 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_216_count);
  llvm_cbe_tmp__64 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__63);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__64);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds i32* %%video, i64 %%68, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_217_count);
  llvm_cbe_tmp__65 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__64))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__64));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i32* %%69, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_218_count);
  llvm_cbe_tmp__66 = (unsigned int )*llvm_cbe_tmp__65;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__66);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 6, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_219_count);
  llvm_cbe_tmp__67 = (signed int *)(&llvm_cbe_block[(((signed long long )6ull))
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
printf("\n  store i32 %%70, i32* %%71, align 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_220_count);
  *llvm_cbe_tmp__67 = llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__66);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = add i32 %%67, 1, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__68 = (unsigned int )((unsigned int )(llvm_cbe_tmp__63&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__68&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = sext i32 %%72 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__69 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__69);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds i32* %%video, i64 %%73, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__70 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__69))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__69));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load i32* %%74, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__71 = (unsigned int )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 7, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__72 = (signed int *)(&llvm_cbe_block[(((signed long long )7ull))
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
printf("\n  store i32 %%75, i32* %%76, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_231_count);
  *llvm_cbe_tmp__72 = llvm_cbe_tmp__71;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = add i32 %%67, 2, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__73 = (unsigned int )((unsigned int )(llvm_cbe_tmp__63&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__73&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = sext i32 %%77 to i64, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_238_count);
  llvm_cbe_tmp__74 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__74);
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = getelementptr inbounds i32* %%video, i64 %%78, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_239_count);
  llvm_cbe_tmp__75 = (signed int *)(&llvm_cbe_video[(((signed long long )llvm_cbe_tmp__74))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__74));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load i32* %%79, align 4, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_240_count);
  llvm_cbe_tmp__76 = (unsigned int )*llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds [9 x i32]* %%block, i64 0, i64 8, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_241_count);
  llvm_cbe_tmp__77 = (signed int *)(&llvm_cbe_block[(((signed long long )8ull))
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
printf("\n  store i32 %%80, i32* %%81, align 16, !dbg !3 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_242_count);
  *llvm_cbe_tmp__77 = llvm_cbe_tmp__76;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = call i32 @convolution(i32* %%3, i32* %%17), !dbg !7 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__78 = (unsigned int )convolution((signed int *)llvm_cbe_tmp__3, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__78);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = add nsw i32 %%storemerge112, %%20, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_256_count);
  llvm_cbe_tmp__79 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__79&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = sext i32 %%83 to i64, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_257_count);
  llvm_cbe_tmp__80 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__80);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = getelementptr inbounds i32* %%sob_x1, i64 %%84, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_258_count);
  llvm_cbe_tmp__81 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__80))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__80));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%82, i32* %%85, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_259_count);
  *llvm_cbe_tmp__81 = llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = call i32 @convolution(i32* %%11, i32* %%17), !dbg !8 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_260_count);
  llvm_cbe_tmp__82 = (unsigned int )convolution((signed int *)llvm_cbe_tmp__11, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__82);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = getelementptr inbounds i32* %%sob_y1, i64 %%84, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_263_count);
  llvm_cbe_tmp__83 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__80))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__80));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%86, i32* %%87, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_264_count);
  *llvm_cbe_tmp__83 = llvm_cbe_tmp__82;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\n  %%neg = sub i32 0, %%86, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_neg_count);
  llvm_cbe_neg = (unsigned int )-(llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\nneg = 0x%X\n", ((unsigned int )(llvm_cbe_neg&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = select i1 %%ispos, i32 %%86, i32 %%neg, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__84 = (unsigned int )(((((signed int )llvm_cbe_tmp__82) > ((signed int )4294967295u))) ? ((unsigned int )llvm_cbe_tmp__82) : ((unsigned int )llvm_cbe_neg));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = load i32* %%85, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_266_count);
  llvm_cbe_tmp__85 = (unsigned int )*llvm_cbe_tmp__81;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  %%neg5 = sub i32 0, %%89, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_neg5_count);
  llvm_cbe_neg5 = (unsigned int )-(llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\nneg5 = 0x%X\n", ((unsigned int )(llvm_cbe_neg5&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = select i1 %%ispos4, i32 %%89, i32 %%neg5, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_267_count);
  llvm_cbe_tmp__86 = (unsigned int )(((((signed int )llvm_cbe_tmp__85) > ((signed int )4294967295u))) ? ((unsigned int )llvm_cbe_tmp__85) : ((unsigned int )llvm_cbe_neg5));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__86);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = add nsw i32 %%90, %%88, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__87 = (unsigned int )((unsigned int )(llvm_cbe_tmp__86&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__84&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__87&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = getelementptr inbounds i32* %%sob_xy1, i64 %%84, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_269_count);
  llvm_cbe_tmp__88 = (signed int *)(&llvm_cbe_sob_xy1[(((signed long long )llvm_cbe_tmp__80))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__80));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%91, i32* %%92, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_270_count);
  *llvm_cbe_tmp__88 = llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
  goto llvm_cbe_tmp__99;

llvm_cbe_tmp__98:
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = add nsw i32 %%storemerge112, %%20, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_272_count);
  llvm_cbe_tmp__89 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__89&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = sext i32 %%94 to i64, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__90 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = getelementptr inbounds i32* %%sob_x1, i64 %%95, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_274_count);
  llvm_cbe_tmp__91 = (signed int *)(&llvm_cbe_sob_x1[(((signed long long )llvm_cbe_tmp__90))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__90));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%96, align 4, !dbg !4 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_275_count);
  *llvm_cbe_tmp__91 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = getelementptr inbounds i32* %%sob_y1, i64 %%95, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_276_count);
  llvm_cbe_tmp__92 = (signed int *)(&llvm_cbe_sob_y1[(((signed long long )llvm_cbe_tmp__90))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__90));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%97, align 4, !dbg !5 for 0x%I64xth hint within @edge_det  --> \n", ++aesl_llvm_cbe_277_count);
  *llvm_cbe_tmp__92 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__99;

  } while (1); /* end of syntactic loop '.preheader11.split..preheader11.split.split_crit_edge' */
  } while (1); /* end of syntactic loop '.preheader11' */
llvm_cbe_tmp__96:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @edge_det}\n");
  return;
}


signed int convolution(signed int *llvm_cbe_operatr, signed int *llvm_cbe_block) {
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  unsigned int llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  signed int *llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  unsigned int llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  signed int *llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  unsigned int llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  unsigned int llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  unsigned int llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  signed int *llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  unsigned int llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  signed int *llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  unsigned int llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  unsigned int llvm_cbe_tmp__114;
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
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  signed int *llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  signed int *llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  unsigned int llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  signed int *llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  signed int *llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  unsigned int llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  unsigned int llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  signed int *llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  unsigned int llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  signed int *llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  unsigned int llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  unsigned int llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  unsigned int llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  signed int *llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  unsigned int llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  signed int *llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  unsigned int llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  unsigned int llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  unsigned int llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  signed int *llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  unsigned int llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  signed int *llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  unsigned int llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  unsigned int llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  unsigned int llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  signed int *llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  unsigned int llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  signed int *llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  unsigned int llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @convolution\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = load i32* %%operatr, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_327_count);
  llvm_cbe_tmp__100 = (unsigned int )*llvm_cbe_operatr;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__100);
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* %%block, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_328_count);
  llvm_cbe_tmp__101 = (unsigned int )*llvm_cbe_block;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul nsw i32 %%1, %%0, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_329_count);
  llvm_cbe_tmp__102 = (unsigned int )((unsigned int )(llvm_cbe_tmp__101&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__100&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__102&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i32* %%operatr, i64 1, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__103 = (signed int *)(&llvm_cbe_operatr[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_339_count);
  llvm_cbe_tmp__104 = (unsigned int )*llvm_cbe_tmp__103;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__104);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds i32* %%block, i64 1, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_340_count);
  llvm_cbe_tmp__105 = (signed int *)(&llvm_cbe_block[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__106 = (unsigned int )*llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = mul nsw i32 %%6, %%4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_342_count);
  llvm_cbe_tmp__107 = (unsigned int )((unsigned int )(llvm_cbe_tmp__106&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__104&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__107&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%7, %%2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_343_count);
  llvm_cbe_tmp__108 = (unsigned int )((unsigned int )(llvm_cbe_tmp__107&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__102&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__108&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i32* %%operatr, i64 2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_352_count);
  llvm_cbe_tmp__109 = (signed int *)(&llvm_cbe_operatr[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_353_count);
  llvm_cbe_tmp__110 = (unsigned int )*llvm_cbe_tmp__109;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i32* %%block, i64 2, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_354_count);
  llvm_cbe_tmp__111 = (signed int *)(&llvm_cbe_block[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_355_count);
  llvm_cbe_tmp__112 = (unsigned int )*llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = mul nsw i32 %%12, %%10, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_356_count);
  llvm_cbe_tmp__113 = (unsigned int )((unsigned int )(llvm_cbe_tmp__112&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__110&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__113&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, %%8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_357_count);
  llvm_cbe_tmp__114 = (unsigned int )((unsigned int )(llvm_cbe_tmp__113&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__108&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__114&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i32* %%operatr, i64 3, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__115 = (signed int *)(&llvm_cbe_operatr[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_376_count);
  llvm_cbe_tmp__116 = (unsigned int )*llvm_cbe_tmp__115;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i32* %%block, i64 3, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__117 = (signed int *)(&llvm_cbe_block[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i32* %%17, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_378_count);
  llvm_cbe_tmp__118 = (unsigned int )*llvm_cbe_tmp__117;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%18, %%16, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_379_count);
  llvm_cbe_tmp__119 = (unsigned int )((unsigned int )(llvm_cbe_tmp__118&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__116&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__119&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%19, %%14, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_380_count);
  llvm_cbe_tmp__120 = (unsigned int )((unsigned int )(llvm_cbe_tmp__119&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__114&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__120&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds i32* %%operatr, i64 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_389_count);
  llvm_cbe_tmp__121 = (signed int *)(&llvm_cbe_operatr[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_390_count);
  llvm_cbe_tmp__122 = (unsigned int )*llvm_cbe_tmp__121;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i32* %%block, i64 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_391_count);
  llvm_cbe_tmp__123 = (signed int *)(&llvm_cbe_block[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i32* %%23, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_392_count);
  llvm_cbe_tmp__124 = (unsigned int )*llvm_cbe_tmp__123;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__124);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = mul nsw i32 %%24, %%22, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_393_count);
  llvm_cbe_tmp__125 = (unsigned int )((unsigned int )(llvm_cbe_tmp__124&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__122&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__125&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%25, %%20, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_394_count);
  llvm_cbe_tmp__126 = (unsigned int )((unsigned int )(llvm_cbe_tmp__125&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__120&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__126&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds i32* %%operatr, i64 5, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_403_count);
  llvm_cbe_tmp__127 = (signed int *)(&llvm_cbe_operatr[(((signed long long )5ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%27, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_404_count);
  llvm_cbe_tmp__128 = (unsigned int )*llvm_cbe_tmp__127;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__128);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i32* %%block, i64 5, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__129 = (signed int *)(&llvm_cbe_block[(((signed long long )5ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i32* %%29, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_406_count);
  llvm_cbe_tmp__130 = (unsigned int )*llvm_cbe_tmp__129;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__130);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = mul nsw i32 %%30, %%28, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_407_count);
  llvm_cbe_tmp__131 = (unsigned int )((unsigned int )(llvm_cbe_tmp__130&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__128&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__131&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%31, %%26, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_408_count);
  llvm_cbe_tmp__132 = (unsigned int )((unsigned int )(llvm_cbe_tmp__131&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__126&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__132&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds i32* %%operatr, i64 6, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_426_count);
  llvm_cbe_tmp__133 = (signed int *)(&llvm_cbe_operatr[(((signed long long )6ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%33, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_427_count);
  llvm_cbe_tmp__134 = (unsigned int )*llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds i32* %%block, i64 6, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_428_count);
  llvm_cbe_tmp__135 = (signed int *)(&llvm_cbe_block[(((signed long long )6ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i32* %%35, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_429_count);
  llvm_cbe_tmp__136 = (unsigned int )*llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__136);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = mul nsw i32 %%36, %%34, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_430_count);
  llvm_cbe_tmp__137 = (unsigned int )((unsigned int )(llvm_cbe_tmp__136&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__134&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__137&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add nsw i32 %%37, %%32, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_431_count);
  llvm_cbe_tmp__138 = (unsigned int )((unsigned int )(llvm_cbe_tmp__137&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__132&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__138&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds i32* %%operatr, i64 7, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_440_count);
  llvm_cbe_tmp__139 = (signed int *)(&llvm_cbe_operatr[(((signed long long )7ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i32* %%39, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__140 = (unsigned int )*llvm_cbe_tmp__139;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i32* %%block, i64 7, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_442_count);
  llvm_cbe_tmp__141 = (signed int *)(&llvm_cbe_block[(((signed long long )7ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32* %%41, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_443_count);
  llvm_cbe_tmp__142 = (unsigned int )*llvm_cbe_tmp__141;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__142);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = mul nsw i32 %%42, %%40, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_444_count);
  llvm_cbe_tmp__143 = (unsigned int )((unsigned int )(llvm_cbe_tmp__142&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__140&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__143&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = add nsw i32 %%43, %%38, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_445_count);
  llvm_cbe_tmp__144 = (unsigned int )((unsigned int )(llvm_cbe_tmp__143&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__138&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__144&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds i32* %%operatr, i64 8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_454_count);
  llvm_cbe_tmp__145 = (signed int *)(&llvm_cbe_operatr[(((signed long long )8ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_455_count);
  llvm_cbe_tmp__146 = (unsigned int )*llvm_cbe_tmp__145;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds i32* %%block, i64 8, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_456_count);
  llvm_cbe_tmp__147 = (signed int *)(&llvm_cbe_block[(((signed long long )8ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i32* %%47, align 4, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_457_count);
  llvm_cbe_tmp__148 = (unsigned int )*llvm_cbe_tmp__147;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__148);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = mul nsw i32 %%48, %%46, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_458_count);
  llvm_cbe_tmp__149 = (unsigned int )((unsigned int )(llvm_cbe_tmp__148&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__146&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__149&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add nsw i32 %%49, %%44, !dbg !3 for 0x%I64xth hint within @convolution  --> \n", ++aesl_llvm_cbe_459_count);
  llvm_cbe_tmp__150 = (unsigned int )((unsigned int )(llvm_cbe_tmp__149&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__144&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__150&4294967295ull)));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @convolution}\n");
  return llvm_cbe_tmp__150;
}

