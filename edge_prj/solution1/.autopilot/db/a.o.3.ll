; ModuleID = 'F:/0yan/fpga/HLS/Sobel_HLS/edge_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1] ; [#uses=1 type=[9 x i32]*]
@sob_x = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1] ; [#uses=1 type=[9 x i32]*]
@edge_det_str = internal unnamed_addr constant [9 x i8] c"edge_det\00" ; [#uses=1 type=[9 x i8]*]
@p_str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]
@p_str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=3 type=[19 x i8]*]
@p_str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=3 type=[16 x i8]*]

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1, [10000 x i32]* %sob_xy1) nounwind uwtable {
meminst6.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_xy1) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det_str) nounwind
  %block = alloca [9 x i32], align 16             ; [#uses=3 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %video}, i64 0, metadata !31), !dbg !43 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_x1}, i64 0, metadata !44), !dbg !45 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_y1}, i64 0, metadata !46), !dbg !47 ; [debug line = 4:58] [debug variable = sob_y1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_xy1}, i64 0, metadata !48), !dbg !49 ; [debug line = 4:78] [debug variable = sob_xy1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !50), !dbg !55 ; [debug line = 11:7] [debug variable = block]
  br label %0, !dbg !56                           ; [debug line = 16:21]

; <label>:0                                       ; preds = %11, %meminst6.preheader
  %i = phi i7 [ 0, %meminst6.preheader ], [ %i_1, %11 ] ; [#uses=5 type=i7]
  %phi_mul = phi i14 [ 0, %meminst6.preheader ], [ %next_mul, %11 ] ; [#uses=3 type=i14]
  %next_mul = add i14 %phi_mul, 100               ; [#uses=1 type=i14]
  %exitcond3 = icmp eq i7 %i, -28, !dbg !56       ; [#uses=1 type=i1] [debug line = 16:21]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !58                   ; [#uses=1 type=i7] [debug line = 16:31]
  br i1 %exitcond3, label %12, label %1, !dbg !56 ; [debug line = 16:21]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind, !dbg !59 ; [debug line = 18:1]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 18:1]
  %tmp = icmp eq i7 %i, -29, !dbg !61             ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp_1 = icmp eq i7 %i, 1, !dbg !61             ; [#uses=1 type=i1] [debug line = 20:7]
  br label %2, !dbg !64                           ; [debug line = 18:21]

; <label>:2                                       ; preds = %10, %1
  %j = phi i7 [ 0, %1 ], [ %j_1, %10 ]            ; [#uses=5 type=i7]
  %j_cast = zext i7 %j to i14, !dbg !64           ; [#uses=3 type=i14] [debug line = 18:21]
  %exitcond2 = icmp eq i7 %j, -28, !dbg !64       ; [#uses=1 type=i1] [debug line = 18:21]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_1 = add i7 %j, 1, !dbg !65                   ; [#uses=1 type=i7] [debug line = 18:31]
  br i1 %exitcond2, label %11, label %3, !dbg !64 ; [debug line = 18:21]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind, !dbg !66 ; [debug line = 19:6]
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1) nounwind, !dbg !66 ; [#uses=1 type=i32] [debug line = 19:6]
  %tmp_4 = icmp eq i7 %j, -29, !dbg !61           ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp_5 = icmp eq i7 %j, 1, !dbg !61             ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp1 = or i1 %tmp, %tmp_4, !dbg !61            ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp2 = or i1 %tmp_1, %tmp_5, !dbg !61          ; [#uses=1 type=i1] [debug line = 20:7]
  %or_cond5 = or i1 %tmp2, %tmp1, !dbg !61        ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %or_cond5, label %4, label %.preheader.preheader, !dbg !61 ; [debug line = 20:7]

.preheader.preheader:                             ; preds = %3
  br label %.preheader, !dbg !67                  ; [debug line = 28:21]

; <label>:4                                       ; preds = %3
  %tmp_6 = add i14 %phi_mul, %j_cast, !dbg !70    ; [#uses=1 type=i14] [debug line = 22:12]
  %tmp_7 = zext i14 %tmp_6 to i64, !dbg !70       ; [#uses=2 type=i64] [debug line = 22:12]
  %sob_x1_addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_7, !dbg !70 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %sob_x1_addr, align 4, !dbg !70 ; [debug line = 22:12]
  %sob_y1_addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_7, !dbg !72 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %sob_y1_addr, align 4, !dbg !72 ; [debug line = 23:6]
  br label %10, !dbg !73                          ; [debug line = 24:4]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %m = phi i2 [ %m_1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i2]
  %m_cast9 = zext i2 %m to i7, !dbg !67           ; [#uses=1 type=i7] [debug line = 28:21]
  %m_cast8 = zext i2 %m to i5, !dbg !67           ; [#uses=1 type=i5] [debug line = 28:21]
  %exitcond1 = icmp eq i2 %m, -1, !dbg !67        ; [#uses=1 type=i1] [debug line = 28:21]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %m_1 = add i2 %m, 1, !dbg !74                   ; [#uses=1 type=i2] [debug line = 28:29]
  br i1 %exitcond1, label %9, label %5, !dbg !67  ; [debug line = 28:21]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind, !dbg !75 ; [debug line = 29:1]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str2) nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 29:1]
  %tmp_3 = add i7 %m_cast9, %i, !dbg !77          ; [#uses=1 type=i7] [debug line = 30:5]
  %tmp_3_cast_cast = zext i7 %tmp_3 to i14, !dbg !77 ; [#uses=1 type=i14] [debug line = 30:5]
  %tmp_10 = mul i14 %tmp_3_cast_cast, 100, !dbg !77 ; [#uses=1 type=i14] [debug line = 30:5]
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %m, i2 0), !dbg !77 ; [#uses=1 type=i4] [debug line = 30:5]
  %p_shl_cast = zext i4 %p_shl to i5, !dbg !77    ; [#uses=1 type=i5] [debug line = 30:5]
  %tmp_11 = sub i5 %p_shl_cast, %m_cast8, !dbg !77 ; [#uses=1 type=i5] [debug line = 30:5]
  %tmp3 = add i14 %tmp_10, %j_cast, !dbg !77      ; [#uses=1 type=i14] [debug line = 30:5]
  %tmp3_cast = zext i14 %tmp3 to i15, !dbg !77    ; [#uses=1 type=i15] [debug line = 30:5]
  br label %6, !dbg !80                           ; [debug line = 29:21]

; <label>:6                                       ; preds = %7, %5
  %n = phi i2 [ 0, %5 ], [ %n_1, %7 ]             ; [#uses=4 type=i2]
  %n_cast6 = zext i2 %n to i5, !dbg !80           ; [#uses=1 type=i5] [debug line = 29:21]
  %n_cast5 = zext i2 %n to i8, !dbg !80           ; [#uses=1 type=i8] [debug line = 29:21]
  %exitcond = icmp eq i2 %n, -1, !dbg !80         ; [#uses=1 type=i1] [debug line = 29:21]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %n_1 = add i2 %n, 1, !dbg !81                   ; [#uses=1 type=i2] [debug line = 29:29]
  br i1 %exitcond, label %8, label %7, !dbg !80   ; [debug line = 29:21]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str3) nounwind, !dbg !77 ; [debug line = 30:5]
  %tmp4 = add i8 %n_cast5, -101, !dbg !77         ; [#uses=1 type=i8] [debug line = 30:5]
  %tmp4_cast = sext i8 %tmp4 to i15, !dbg !77     ; [#uses=1 type=i15] [debug line = 30:5]
  %tmp_14 = add i15 %tmp4_cast, %tmp3_cast, !dbg !77 ; [#uses=1 type=i15] [debug line = 30:5]
  %tmp_15 = sext i15 %tmp_14 to i64, !dbg !77     ; [#uses=1 type=i64] [debug line = 30:5]
  %video_addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_15, !dbg !77 ; [#uses=1 type=i32*] [debug line = 30:5]
  %video_load = load i32* %video_addr, align 4, !dbg !77 ; [#uses=1 type=i32] [debug line = 30:5]
  %tmp_16 = add i5 %tmp_11, %n_cast6, !dbg !77    ; [#uses=1 type=i5] [debug line = 30:5]
  %tmp_16_cast = sext i5 %tmp_16 to i32, !dbg !77 ; [#uses=1 type=i32] [debug line = 30:5]
  %tmp_17 = zext i32 %tmp_16_cast to i64, !dbg !77 ; [#uses=1 type=i64] [debug line = 30:5]
  %block_addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp_17, !dbg !77 ; [#uses=1 type=i32*] [debug line = 30:5]
  store i32 %video_load, i32* %block_addr, align 4, !dbg !77 ; [debug line = 30:5]
  call void @llvm.dbg.value(metadata !{i2 %n_1}, i64 0, metadata !82), !dbg !81 ; [debug line = 29:29] [debug variable = n]
  br label %6, !dbg !81                           ; [debug line = 29:29]

; <label>:8                                       ; preds = %6
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str2, i32 %tmp_13) nounwind, !dbg !83 ; [#uses=0 type=i32] [debug line = 30:42]
  call void @llvm.dbg.value(metadata !{i2 %m_1}, i64 0, metadata !84), !dbg !74 ; [debug line = 28:29] [debug variable = m]
  br label %.preheader, !dbg !74                  ; [debug line = 28:29]

; <label>:9                                       ; preds = %.preheader
  %value = call fastcc i32 @convolution([9 x i32]* @sob_x, [9 x i32]* %block) nounwind, !dbg !85 ; [#uses=4 type=i32] [debug line = 31:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !86), !dbg !85 ; [debug line = 31:12] [debug variable = value]
  %tmp_8 = add i14 %phi_mul, %j_cast, !dbg !87    ; [#uses=1 type=i14] [debug line = 32:6]
  %tmp_9 = zext i14 %tmp_8 to i64, !dbg !87       ; [#uses=3 type=i64] [debug line = 32:6]
  %sob_x1_addr_1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_9, !dbg !87 ; [#uses=1 type=i32*] [debug line = 32:6]
  store i32 %value, i32* %sob_x1_addr_1, align 4, !dbg !87 ; [debug line = 32:6]
  %value_1 = call fastcc i32 @convolution([9 x i32]* @sob_y, [9 x i32]* %block) nounwind, !dbg !88 ; [#uses=4 type=i32] [debug line = 34:12]
  call void @llvm.dbg.value(metadata !{i32 %value_1}, i64 0, metadata !86), !dbg !88 ; [debug line = 34:12] [debug variable = value]
  %sob_y1_addr_1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_9, !dbg !89 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %value_1, i32* %sob_y1_addr_1, align 4, !dbg !89 ; [debug line = 35:6]
  %neg = sub i32 0, %value_1                      ; [#uses=1 type=i32]
  %abscond = icmp sgt i32 %value_1, 0             ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i32 %value_1, i32 %neg ; [#uses=1 type=i32]
  %neg9 = sub i32 0, %value                       ; [#uses=1 type=i32]
  %abscond1 = icmp sgt i32 %value, 0              ; [#uses=1 type=i1]
  %abs1 = select i1 %abscond1, i32 %value, i32 %neg9 ; [#uses=1 type=i32]
  %tmp_s = add nsw i32 %abs, %abs1, !dbg !90      ; [#uses=1 type=i32] [debug line = 36:50]
  %sob_xy1_addr = getelementptr [10000 x i32]* %sob_xy1, i64 0, i64 %tmp_9, !dbg !90 ; [#uses=1 type=i32*] [debug line = 36:50]
  store i32 %tmp_s, i32* %sob_xy1_addr, align 4, !dbg !90 ; [debug line = 36:50]
  br label %10

; <label>:10                                      ; preds = %9, %4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_12) nounwind, !dbg !91 ; [#uses=0 type=i32] [debug line = 38:5]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !92), !dbg !65 ; [debug line = 18:31] [debug variable = j]
  br label %2, !dbg !65                           ; [debug line = 18:31]

; <label>:11                                      ; preds = %2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_2) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 38:5]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !94), !dbg !58 ; [debug line = 16:31] [debug variable = i]
  br label %0, !dbg !58                           ; [debug line = 16:31]

; <label>:12                                      ; preds = %0
  ret void, !dbg !95                              ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc i32 @convolution([9 x i32]* nocapture %operatr, [9 x i32]* nocapture %block) readonly {
  %value = alloca i32                             ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !96) ; [debug variable = value]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %operatr}, i64 0, metadata !101), !dbg !102 ; [debug line = 43:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %block}, i64 0, metadata !103), !dbg !104 ; [debug line = 43:36] [debug variable = block]
  store i32 0, i32* %value
  br label %1, !dbg !105                          ; [debug line = 47:24]

; <label>:1                                       ; preds = %5, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %5 ]             ; [#uses=4 type=i2]
  %i_cast3 = zext i2 %i to i5, !dbg !105          ; [#uses=1 type=i5] [debug line = 47:24]
  %exitcond1 = icmp eq i2 %i, -1, !dbg !105       ; [#uses=1 type=i1] [debug line = 47:24]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %i_2 = add i2 %i, 1, !dbg !107                  ; [#uses=1 type=i2] [debug line = 47:32]
  br i1 %exitcond1, label %6, label %2, !dbg !105 ; [debug line = 47:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str4) nounwind, !dbg !108 ; [debug line = 48:1]
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([19 x i8]* @p_str4), !dbg !108 ; [#uses=1 type=i32] [debug line = 48:1]
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i, i2 0), !dbg !110 ; [#uses=1 type=i4] [debug line = 49:11]
  %p_shl_cast = zext i4 %p_shl to i5, !dbg !110   ; [#uses=1 type=i5] [debug line = 49:11]
  %tmp = sub i5 %p_shl_cast, %i_cast3, !dbg !110  ; [#uses=1 type=i5] [debug line = 49:11]
  br label %3, !dbg !113                          ; [debug line = 48:24]

; <label>:3                                       ; preds = %4, %2
  %j = phi i2 [ 0, %2 ], [ %j_2, %4 ]             ; [#uses=3 type=i2]
  %j_cast1 = zext i2 %j to i5, !dbg !113          ; [#uses=1 type=i5] [debug line = 48:24]
  %exitcond = icmp eq i2 %j, -1, !dbg !113        ; [#uses=1 type=i1] [debug line = 48:24]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %j_2 = add i2 %j, 1, !dbg !114                  ; [#uses=1 type=i2] [debug line = 48:32]
  br i1 %exitcond, label %5, label %4, !dbg !113  ; [debug line = 48:24]

; <label>:4                                       ; preds = %3
  %value_load_1 = load i32* %value, !dbg !110     ; [#uses=1 type=i32] [debug line = 49:11]
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str5) nounwind, !dbg !110 ; [debug line = 49:11]
  %tmp_s = add i5 %tmp, %j_cast1, !dbg !110       ; [#uses=1 type=i5] [debug line = 49:11]
  %tmp_cast = sext i5 %tmp_s to i32, !dbg !110    ; [#uses=1 type=i32] [debug line = 49:11]
  %tmp_18 = zext i32 %tmp_cast to i64, !dbg !110  ; [#uses=2 type=i64] [debug line = 49:11]
  %operatr_addr = getelementptr [9 x i32]* %operatr, i64 0, i64 %tmp_18, !dbg !110 ; [#uses=1 type=i32*] [debug line = 49:11]
  %operatr_load = load i32* %operatr_addr, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:11]
  %block_addr = getelementptr [9 x i32]* %block, i64 0, i64 %tmp_18, !dbg !110 ; [#uses=1 type=i32*] [debug line = 49:11]
  %block_load = load i32* %block_addr, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:11]
  %tmp_19 = mul nsw i32 %operatr_load, %block_load, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:11]
  %value_2 = add nsw i32 %tmp_19, %value_load_1, !dbg !110 ; [#uses=1 type=i32] [debug line = 49:11]
  call void @llvm.dbg.value(metadata !{i32 %value_2}, i64 0, metadata !96), !dbg !110 ; [debug line = 49:11] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i2 %j_2}, i64 0, metadata !115), !dbg !114 ; [debug line = 48:32] [debug variable = j]
  store i32 %value_2, i32* %value, !dbg !110      ; [debug line = 49:11]
  br label %3, !dbg !114                          ; [debug line = 48:32]

; <label>:5                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([19 x i8]* @p_str4, i32 %tmp_20), !dbg !116 ; [#uses=0 type=i32] [debug line = 49:50]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !117), !dbg !107 ; [debug line = 47:32] [debug variable = i]
  br label %1, !dbg !107                          ; [debug line = 47:32]

; <label>:6                                       ; preds = %1
  %value_load = load i32* %value, !dbg !118       ; [#uses=1 type=i32] [debug line = 50:5]
  ret i32 %value_load, !dbg !118                  ; [debug line = 50:5]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_11 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_12 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_13 = or i4 %empty_12, %empty_11          ; [#uses=1 type=i4]
  ret i4 %empty_13
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1", metadata !"sob_xy1"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operatr", metadata !"block"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"video", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9999, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"sob_x1", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"sob_y1", metadata !17, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"sob_xy1", metadata !17, metadata !"int", i32 0, i32 31}
!31 = metadata !{i32 786689, metadata !32, metadata !"video", null, i32 4, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 786478, i32 0, metadata !33, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !33, i32 4, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 5} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS\5CSobel_HLS", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !36, metadata !36, metadata !36, metadata !36}
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !37, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 4, i32 19, metadata !32, null}
!44 = metadata !{i32 786689, metadata !32, metadata !"sob_x1", null, i32 4, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 4, i32 38, metadata !32, null}
!46 = metadata !{i32 786689, metadata !32, metadata !"sob_y1", null, i32 4, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 4, i32 58, metadata !32, null}
!48 = metadata !{i32 786689, metadata !32, metadata !"sob_xy1", null, i32 4, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 4, i32 78, metadata !32, null}
!50 = metadata !{i32 786688, metadata !51, metadata !"block", metadata !33, i32 11, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786443, metadata !32, i32 5, i32 1, metadata !33, i32 0} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !37, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 11, i32 7, metadata !51, null}
!56 = metadata !{i32 16, i32 21, metadata !57, null}
!57 = metadata !{i32 786443, metadata !51, i32 16, i32 17, metadata !33, i32 1} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 16, i32 31, metadata !57, null}
!59 = metadata !{i32 18, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 18, i32 1, metadata !33, i32 2} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 20, i32 7, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 19, i32 5, metadata !33, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !60, i32 18, i32 17, metadata !33, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 18, i32 21, metadata !63, null}
!65 = metadata !{i32 18, i32 31, metadata !63, null}
!66 = metadata !{i32 19, i32 6, metadata !62, null}
!67 = metadata !{i32 28, i32 21, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 28, i32 17, metadata !33, i32 7} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !62, i32 26, i32 4, metadata !33, i32 6} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 22, i32 12, metadata !71, null}
!71 = metadata !{i32 786443, metadata !62, i32 21, i32 4, metadata !33, i32 5} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 23, i32 6, metadata !71, null}
!73 = metadata !{i32 24, i32 4, metadata !71, null}
!74 = metadata !{i32 28, i32 29, metadata !68, null}
!75 = metadata !{i32 29, i32 1, metadata !76, null}
!76 = metadata !{i32 786443, metadata !68, i32 29, i32 1, metadata !33, i32 8} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 30, i32 5, metadata !78, null}
!78 = metadata !{i32 786443, metadata !79, i32 30, i32 5, metadata !33, i32 10} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !76, i32 29, i32 17, metadata !33, i32 9} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 29, i32 21, metadata !79, null}
!81 = metadata !{i32 29, i32 29, metadata !79, null}
!82 = metadata !{i32 786688, metadata !51, metadata !"n", metadata !33, i32 10, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 30, i32 42, metadata !79, null}
!84 = metadata !{i32 786688, metadata !51, metadata !"m", metadata !33, i32 10, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 31, i32 12, metadata !69, null}
!86 = metadata !{i32 786688, metadata !51, metadata !"value", metadata !33, i32 13, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 32, i32 6, metadata !69, null}
!88 = metadata !{i32 34, i32 12, metadata !69, null}
!89 = metadata !{i32 35, i32 6, metadata !69, null}
!90 = metadata !{i32 36, i32 50, metadata !69, null}
!91 = metadata !{i32 38, i32 5, metadata !62, null}
!92 = metadata !{i32 786688, metadata !51, metadata !"j", metadata !33, i32 10, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 38, i32 5, metadata !63, null}
!94 = metadata !{i32 786688, metadata !51, metadata !"i", metadata !33, i32 10, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 40, i32 1, metadata !51, null}
!96 = metadata !{i32 786688, metadata !97, metadata !"value", metadata !33, i32 45, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786443, metadata !98, i32 44, i32 1, metadata !33, i32 11} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786478, i32 0, metadata !33, metadata !"convolution", metadata !"convolution", metadata !"", metadata !33, i32 43, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 44} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !37, metadata !36, metadata !36}
!101 = metadata !{i32 786689, metadata !98, metadata !"operatr", null, i32 43, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 43, i32 21, metadata !98, null}
!103 = metadata !{i32 786689, metadata !98, metadata !"block", null, i32 43, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 43, i32 36, metadata !98, null}
!105 = metadata !{i32 47, i32 24, metadata !106, null}
!106 = metadata !{i32 786443, metadata !97, i32 47, i32 20, metadata !33, i32 12} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 47, i32 32, metadata !106, null}
!108 = metadata !{i32 48, i32 1, metadata !109, null}
!109 = metadata !{i32 786443, metadata !106, i32 48, i32 1, metadata !33, i32 13} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 49, i32 11, metadata !111, null}
!111 = metadata !{i32 786443, metadata !112, i32 49, i32 11, metadata !33, i32 15} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !109, i32 48, i32 20, metadata !33, i32 14} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 48, i32 24, metadata !112, null}
!114 = metadata !{i32 48, i32 32, metadata !112, null}
!115 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !33, i32 46, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 49, i32 50, metadata !112, null}
!117 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !33, i32 46, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 50, i32 5, metadata !97, null}
