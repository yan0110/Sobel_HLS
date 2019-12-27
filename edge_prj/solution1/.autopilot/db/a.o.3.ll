; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1] ; [#uses=1 type=[9 x i32]*]
@sob_x = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1] ; [#uses=1 type=[9 x i32]*]
@edge_det_str = internal unnamed_addr constant [9 x i8] c"edge_det\00" ; [#uses=1 type=[9 x i8]*]
@p_str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=1 type=[19 x i8]*]
@p_str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=3 type=[16 x i8]*]

; [#uses=1]
declare i14 @llvm.part.select.i14(i14, i32, i32) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det_str) nounwind
  %block = alloca [9 x i32], align 16             ; [#uses=3 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %video}, i64 0, metadata !27), !dbg !39 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_x1}, i64 0, metadata !40), !dbg !41 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_y1}, i64 0, metadata !42), !dbg !43 ; [debug line = 4:58] [debug variable = sob_y1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !44), !dbg !49 ; [debug line = 28:7] [debug variable = block]
  br label %1, !dbg !50                           ; [debug line = 33:21]

; <label>:1                                       ; preds = %12, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %12 ]            ; [#uses=4 type=i7]
  %phi_mul = phi i14 [ 0, %0 ], [ %next_mul, %12 ] ; [#uses=3 type=i14]
  %next_mul = add i14 %phi_mul, 100               ; [#uses=1 type=i14]
  %exitcond3 = icmp eq i7 %i, -28, !dbg !50       ; [#uses=1 type=i1] [debug line = 33:21]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !52                   ; [#uses=1 type=i7] [debug line = 33:31]
  br i1 %exitcond3, label %13, label %2, !dbg !50 ; [debug line = 33:21]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind, !dbg !53 ; [debug line = 34:1]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:1]
  %tmp = icmp ugt i7 %i, -31, !dbg !55            ; [#uses=1 type=i1] [debug line = 36:7]
  br label %3, !dbg !58                           ; [debug line = 34:21]

; <label>:3                                       ; preds = %11, %2
  %j = phi i7 [ 0, %2 ], [ %j_1, %11 ]            ; [#uses=4 type=i7]
  %j_cast7 = zext i7 %j to i14, !dbg !58          ; [#uses=3 type=i14] [debug line = 34:21]
  %exitcond2 = icmp eq i7 %j, -28, !dbg !58       ; [#uses=1 type=i1] [debug line = 34:21]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_1 = add i7 %j, 1, !dbg !59                   ; [#uses=1 type=i7] [debug line = 34:31]
  br i1 %exitcond2, label %12, label %4, !dbg !58 ; [debug line = 34:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind, !dbg !60 ; [debug line = 35:6]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 35:6]
  %tmp_3 = icmp ugt i7 %j, -31, !dbg !55          ; [#uses=1 type=i1] [debug line = 36:7]
  %or_cond = or i1 %tmp, %tmp_3, !dbg !55         ; [#uses=1 type=i1] [debug line = 36:7]
  br i1 %or_cond, label %5, label %.preheader.preheader, !dbg !55 ; [debug line = 36:7]

.preheader.preheader:                             ; preds = %4
  br label %.preheader, !dbg !61                  ; [debug line = 43:21]

; <label>:5                                       ; preds = %4
  %tmp_4 = add i14 %phi_mul, %j_cast7, !dbg !64   ; [#uses=1 type=i14] [debug line = 38:12]
  %tmp_5 = zext i14 %tmp_4 to i64, !dbg !64       ; [#uses=2 type=i64] [debug line = 38:12]
  %sob_x1_addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5, !dbg !64 ; [#uses=1 type=i32*] [debug line = 38:12]
  store i32 0, i32* %sob_x1_addr, align 4, !dbg !64 ; [debug line = 38:12]
  %sob_y1_addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5, !dbg !66 ; [#uses=1 type=i32*] [debug line = 39:6]
  store i32 0, i32* %sob_y1_addr, align 4, !dbg !66 ; [debug line = 39:6]
  br label %11, !dbg !67                          ; [debug line = 40:4]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %m = phi i2 [ %m_1, %9 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i2]
  %m_cast6 = zext i2 %m to i7, !dbg !61           ; [#uses=1 type=i7] [debug line = 43:21]
  %m_cast5 = zext i2 %m to i5, !dbg !61           ; [#uses=1 type=i5] [debug line = 43:21]
  %exitcond1 = icmp eq i2 %m, -1, !dbg !61        ; [#uses=1 type=i1] [debug line = 43:21]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %m_1 = add i2 %m, 1, !dbg !68                   ; [#uses=1 type=i2] [debug line = 43:29]
  br i1 %exitcond1, label %10, label %6, !dbg !61 ; [debug line = 43:21]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind, !dbg !69 ; [debug line = 44:1]
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str2) nounwind, !dbg !69 ; [#uses=1 type=i32] [debug line = 44:1]
  %tmp_8 = add i7 %m_cast6, %i, !dbg !71          ; [#uses=1 type=i7] [debug line = 45:6]
  %tmp_8_cast_cast = zext i7 %tmp_8 to i14, !dbg !71 ; [#uses=1 type=i14] [debug line = 45:6]
  %tmp_9 = mul i14 %tmp_8_cast_cast, 100, !dbg !71 ; [#uses=1 type=i14] [debug line = 45:6]
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %m, i2 0), !dbg !71 ; [#uses=1 type=i4] [debug line = 45:6]
  %p_shl_cast = zext i4 %p_shl to i5, !dbg !71    ; [#uses=1 type=i5] [debug line = 45:6]
  %tmp_s = sub i5 %p_shl_cast, %m_cast5, !dbg !71 ; [#uses=1 type=i5] [debug line = 45:6]
  br label %7, !dbg !74                           ; [debug line = 44:21]

; <label>:7                                       ; preds = %8, %6
  %n = phi i2 [ 0, %6 ], [ %n_1, %8 ]             ; [#uses=4 type=i2]
  %n_cast3 = zext i2 %n to i5, !dbg !74           ; [#uses=1 type=i5] [debug line = 44:21]
  %exitcond = icmp eq i2 %n, -1, !dbg !74         ; [#uses=1 type=i1] [debug line = 44:21]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %n_1 = add i2 %n, 1, !dbg !75                   ; [#uses=1 type=i2] [debug line = 44:29]
  br i1 %exitcond, label %9, label %8, !dbg !74   ; [debug line = 44:21]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str3) nounwind, !dbg !71 ; [debug line = 45:6]
  %tmp_15 = call i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14 %tmp_9, i32 2, i32 13) ; [#uses=1 type=i12]
  %tmp1 = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_15, i2 %n), !dbg !71 ; [#uses=1 type=i14] [debug line = 45:6]
  %tmp_10 = add i14 %j_cast7, %tmp1, !dbg !71     ; [#uses=1 type=i14] [debug line = 45:6]
  %tmp_11 = zext i14 %tmp_10 to i64, !dbg !71     ; [#uses=1 type=i64] [debug line = 45:6]
  %video_addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11, !dbg !71 ; [#uses=1 type=i32*] [debug line = 45:6]
  %video_load = load i32* %video_addr, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp_12 = add i5 %n_cast3, %tmp_s, !dbg !71     ; [#uses=1 type=i5] [debug line = 45:6]
  %tmp_12_cast = sext i5 %tmp_12 to i32, !dbg !71 ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp_13 = zext i32 %tmp_12_cast to i64, !dbg !71 ; [#uses=1 type=i64] [debug line = 45:6]
  %block_addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp_13, !dbg !71 ; [#uses=1 type=i32*] [debug line = 45:6]
  store i32 %video_load, i32* %block_addr, align 4, !dbg !71 ; [debug line = 45:6]
  call void @llvm.dbg.value(metadata !{i2 %n_1}, i64 0, metadata !76), !dbg !75 ; [debug line = 44:29] [debug variable = n]
  br label %7, !dbg !75                           ; [debug line = 44:29]

; <label>:9                                       ; preds = %7
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str2, i32 %tmp_14) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 45:39]
  call void @llvm.dbg.value(metadata !{i2 %m_1}, i64 0, metadata !78), !dbg !68 ; [debug line = 43:29] [debug variable = m]
  br label %.preheader, !dbg !68                  ; [debug line = 43:29]

; <label>:10                                      ; preds = %.preheader
  %value = call fastcc i32 @convolution([9 x i32]* @sob_x, [9 x i32]* %block) nounwind, !dbg !79 ; [#uses=1 type=i32] [debug line = 46:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !80), !dbg !79 ; [debug line = 46:12] [debug variable = value]
  %tmp_6 = add i14 %phi_mul, %j_cast7, !dbg !81   ; [#uses=1 type=i14] [debug line = 47:6]
  %tmp_7 = zext i14 %tmp_6 to i64, !dbg !81       ; [#uses=2 type=i64] [debug line = 47:6]
  %sob_x1_addr_1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_7, !dbg !81 ; [#uses=1 type=i32*] [debug line = 47:6]
  store i32 %value, i32* %sob_x1_addr_1, align 4, !dbg !81 ; [debug line = 47:6]
  %value_1 = call fastcc i32 @convolution([9 x i32]* @sob_y, [9 x i32]* %block) nounwind, !dbg !82 ; [#uses=1 type=i32] [debug line = 48:12]
  call void @llvm.dbg.value(metadata !{i32 %value_1}, i64 0, metadata !80), !dbg !82 ; [debug line = 48:12] [debug variable = value]
  %sob_y1_addr_1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_7, !dbg !83 ; [#uses=1 type=i32*] [debug line = 49:6]
  store i32 %value_1, i32* %sob_y1_addr_1, align 4, !dbg !83 ; [debug line = 49:6]
  br label %11

; <label>:11                                      ; preds = %10, %5
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_1) nounwind, !dbg !84 ; [#uses=0 type=i32] [debug line = 51:5]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !85), !dbg !59 ; [debug line = 34:31] [debug variable = j]
  br label %3, !dbg !59                           ; [debug line = 34:31]

; <label>:12                                      ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_2) nounwind, !dbg !86 ; [#uses=0 type=i32] [debug line = 51:5]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !87), !dbg !52 ; [debug line = 33:31] [debug variable = i]
  br label %1, !dbg !52                           ; [debug line = 33:31]

; <label>:13                                      ; preds = %1
  ret void, !dbg !88                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc i32 @convolution([9 x i32]* nocapture %operatr, [9 x i32]* nocapture %block) readonly {
  call void @llvm.dbg.value(metadata !{[9 x i32]* %operatr}, i64 0, metadata !89), !dbg !93 ; [debug line = 55:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %block}, i64 0, metadata !94), !dbg !95 ; [debug line = 55:36] [debug variable = block]
  br label %1, !dbg !96                           ; [debug line = 59:24]

; <label>:1                                       ; preds = %2, %0
  %value = phi i32 [ 0, %0 ], [ %value_2, %2 ]    ; [#uses=2 type=i32]
  %i = phi i2 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=4 type=i2]
  %i_cast3 = zext i2 %i to i5, !dbg !96           ; [#uses=1 type=i5] [debug line = 59:24]
  %exitcond1 = icmp eq i2 %i, -1, !dbg !96        ; [#uses=1 type=i1] [debug line = 59:24]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %i_2 = add i2 %i, 1, !dbg !99                   ; [#uses=1 type=i2] [debug line = 59:32]
  br i1 %exitcond1, label %3, label %2, !dbg !96  ; [debug line = 59:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str4) nounwind, !dbg !100 ; [debug line = 60:1]
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i, i2 0), !dbg !102 ; [#uses=1 type=i4] [debug line = 61:11]
  %p_shl_cast = zext i4 %p_shl to i5, !dbg !102   ; [#uses=1 type=i5] [debug line = 61:11]
  %tmp = sub i5 %p_shl_cast, %i_cast3, !dbg !102  ; [#uses=1 type=i5] [debug line = 61:11]
  %tmp_s = add i5 1, %tmp, !dbg !102              ; [#uses=1 type=i5] [debug line = 61:11]
  %tmp_cast = sext i5 %tmp_s to i32, !dbg !102    ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp_14 = zext i32 %tmp_cast to i64, !dbg !102  ; [#uses=2 type=i64] [debug line = 61:11]
  %operatr_addr = getelementptr [9 x i32]* %operatr, i64 0, i64 %tmp_14, !dbg !102 ; [#uses=1 type=i32*] [debug line = 61:11]
  %block_addr = getelementptr [9 x i32]* %block, i64 0, i64 %tmp_14, !dbg !102 ; [#uses=1 type=i32*] [debug line = 61:11]
  %operatr_load = load i32* %operatr_addr, align 4, !dbg !102 ; [#uses=2 type=i32] [debug line = 61:11]
  %block_load = load i32* %block_addr, align 4, !dbg !102 ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp_1 = shl i32 %operatr_load, 2, !dbg !105    ; [#uses=1 type=i32] [debug line = 60:24]
  %tmp_16 = sub i32 %tmp_1, %operatr_load, !dbg !105 ; [#uses=1 type=i32] [debug line = 60:24]
  %tmp_17 = mul i32 %block_load, %tmp_16, !dbg !105 ; [#uses=1 type=i32] [debug line = 60:24]
  %value_2 = add i32 %tmp_17, %value, !dbg !102   ; [#uses=1 type=i32] [debug line = 61:11]
  call void @llvm.dbg.value(metadata !{i32 %value_2}, i64 0, metadata !106), !dbg !102 ; [debug line = 61:11] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !107), !dbg !99 ; [debug line = 59:32] [debug variable = i]
  br label %1, !dbg !99                           ; [debug line = 59:32]

; <label>:3                                       ; preds = %1
  ret i32 %value, !dbg !108                       ; [debug line = 62:5]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.select.i14(i14 %0, i32 %1, i32 %2) ; [#uses=1 type=i14]
  %empty_11 = trunc i14 %empty to i12             ; [#uses=1 type=i12]
  ret i12 %empty_11
}

; [#uses=2]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_12 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_13 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_14 = or i4 %empty_13, %empty_12          ; [#uses=1 type=i4]
  ret i4 %empty_14
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone {
entry:
  %empty = zext i12 %0 to i14                     ; [#uses=1 type=i14]
  %empty_15 = zext i2 %1 to i14                   ; [#uses=1 type=i14]
  %empty_16 = shl i14 %empty, 2                   ; [#uses=1 type=i14]
  %empty_17 = or i14 %empty_16, %empty_15         ; [#uses=1 type=i14]
  ret i14 %empty_17
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1"}
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
!27 = metadata !{i32 786689, metadata !28, metadata !"video", null, i32 4, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !29, i32 4, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 5} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !33, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 4, i32 19, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"sob_x1", null, i32 4, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 4, i32 38, metadata !28, null}
!42 = metadata !{i32 786689, metadata !28, metadata !"sob_y1", null, i32 4, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 4, i32 58, metadata !28, null}
!44 = metadata !{i32 786688, metadata !45, metadata !"block", metadata !29, i32 28, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 786443, metadata !28, i32 5, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !33, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 28, i32 7, metadata !45, null}
!50 = metadata !{i32 33, i32 21, metadata !51, null}
!51 = metadata !{i32 786443, metadata !45, i32 33, i32 17, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 33, i32 31, metadata !51, null}
!53 = metadata !{i32 34, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !51, i32 34, i32 1, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 36, i32 7, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 35, i32 5, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !54, i32 34, i32 17, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 34, i32 21, metadata !57, null}
!59 = metadata !{i32 34, i32 31, metadata !57, null}
!60 = metadata !{i32 35, i32 6, metadata !56, null}
!61 = metadata !{i32 43, i32 21, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 43, i32 17, metadata !29, i32 7} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !56, i32 42, i32 4, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 38, i32 12, metadata !65, null}
!65 = metadata !{i32 786443, metadata !56, i32 37, i32 4, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 39, i32 6, metadata !65, null}
!67 = metadata !{i32 40, i32 4, metadata !65, null}
!68 = metadata !{i32 43, i32 29, metadata !62, null}
!69 = metadata !{i32 44, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !62, i32 44, i32 1, metadata !29, i32 8} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 45, i32 6, metadata !72, null}
!72 = metadata !{i32 786443, metadata !73, i32 45, i32 6, metadata !29, i32 10} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !70, i32 44, i32 17, metadata !29, i32 9} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 44, i32 21, metadata !73, null}
!75 = metadata !{i32 44, i32 29, metadata !73, null}
!76 = metadata !{i32 786688, metadata !45, metadata !"n", metadata !29, i32 27, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 45, i32 39, metadata !73, null}
!78 = metadata !{i32 786688, metadata !45, metadata !"m", metadata !29, i32 27, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 46, i32 12, metadata !63, null}
!80 = metadata !{i32 786688, metadata !45, metadata !"value", metadata !29, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 47, i32 6, metadata !63, null}
!82 = metadata !{i32 48, i32 12, metadata !63, null}
!83 = metadata !{i32 49, i32 6, metadata !63, null}
!84 = metadata !{i32 51, i32 5, metadata !56, null}
!85 = metadata !{i32 786688, metadata !45, metadata !"j", metadata !29, i32 27, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 51, i32 5, metadata !57, null}
!87 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !29, i32 27, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 52, i32 1, metadata !45, null}
!89 = metadata !{i32 786689, metadata !90, metadata !"operatr", null, i32 55, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 786478, i32 0, metadata !29, metadata !"convolution", metadata !"convolution", metadata !"", metadata !29, i32 55, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 56} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{metadata !33, metadata !32, metadata !32}
!93 = metadata !{i32 55, i32 21, metadata !90, null}
!94 = metadata !{i32 786689, metadata !90, metadata !"block", null, i32 55, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 55, i32 36, metadata !90, null}
!96 = metadata !{i32 59, i32 24, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 59, i32 20, metadata !29, i32 12} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !90, i32 56, i32 1, metadata !29, i32 11} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 59, i32 32, metadata !97, null}
!100 = metadata !{i32 60, i32 1, metadata !101, null}
!101 = metadata !{i32 786443, metadata !97, i32 60, i32 1, metadata !29, i32 13} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 61, i32 11, metadata !103, null}
!103 = metadata !{i32 786443, metadata !104, i32 61, i32 11, metadata !29, i32 15} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !101, i32 60, i32 20, metadata !29, i32 14} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 60, i32 24, metadata !104, null}
!106 = metadata !{i32 786688, metadata !98, metadata !"value", metadata !29, i32 57, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !29, i32 58, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 62, i32 5, metadata !98, null}