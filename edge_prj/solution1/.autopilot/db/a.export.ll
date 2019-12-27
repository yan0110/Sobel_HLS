; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1]
@sob_x = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1]
@edge_det_str = internal unnamed_addr constant [9 x i8] c"edge_det\00"
@p_str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1
@p_str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1
@p_str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1
@p_str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1
@p_str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1
@p_str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1

declare i14 @llvm.part.select.i14(i14, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1) nounwind uwtable {
meminst4.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det_str) nounwind
  %block = alloca [9 x i32], align 16
  br label %0

; <label>:0                                       ; preds = %11, %meminst4.preheader
  %i = phi i7 [ 0, %meminst4.preheader ], [ %i_1, %11 ]
  %phi_mul = phi i14 [ 0, %meminst4.preheader ], [ %next_mul, %11 ]
  %next_mul = add i14 %phi_mul, 100
  %exitcond3 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %i, 1
  br i1 %exitcond3, label %12, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind
  %tmp = icmp ugt i7 %i, -31
  br label %2

; <label>:2                                       ; preds = %10, %1
  %j = phi i7 [ 0, %1 ], [ %j_1, %10 ]
  %j_cast7 = zext i7 %j to i14
  %exitcond2 = icmp eq i7 %j, -28
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %j_1 = add i7 %j, 1
  br i1 %exitcond2, label %11, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1) nounwind
  %tmp_3 = icmp ugt i7 %j, -31
  %or_cond = or i1 %tmp, %tmp_3
  br i1 %or_cond, label %4, label %.preheader.preheader

.preheader.preheader:                             ; preds = %3
  br label %.preheader

; <label>:4                                       ; preds = %3
  %tmp_4 = add i14 %phi_mul, %j_cast7
  %tmp_5 = zext i14 %tmp_4 to i64
  %sob_x1_addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5
  store i32 0, i32* %sob_x1_addr, align 4
  %sob_y1_addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5
  store i32 0, i32* %sob_y1_addr, align 4
  br label %10

.preheader:                                       ; preds = %.preheader.preheader, %8
  %m = phi i2 [ %m_1, %8 ], [ 0, %.preheader.preheader ]
  %m_cast6 = zext i2 %m to i7
  %m_cast5 = zext i2 %m to i5
  %exitcond1 = icmp eq i2 %m, -1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %m_1 = add i2 %m, 1
  br i1 %exitcond1, label %9, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str2) nounwind
  %tmp_8 = add i7 %m_cast6, %i
  %tmp_8_cast_cast = zext i7 %tmp_8 to i14
  %tmp_9 = mul i14 %tmp_8_cast_cast, 100
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %m, i2 0)
  %p_shl_cast = zext i4 %p_shl to i5
  %tmp_s = sub i5 %p_shl_cast, %m_cast5
  br label %6

; <label>:6                                       ; preds = %7, %5
  %n = phi i2 [ 0, %5 ], [ %n_1, %7 ]
  %n_cast3 = zext i2 %n to i5
  %exitcond = icmp eq i2 %n, -1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %n_1 = add i2 %n, 1
  br i1 %exitcond, label %8, label %7

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str3) nounwind
  %tmp_15 = call i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14 %tmp_9, i32 2, i32 13)
  %tmp1 = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_15, i2 %n)
  %tmp_10 = add i14 %j_cast7, %tmp1
  %tmp_11 = zext i14 %tmp_10 to i64
  %video_addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11
  %video_load = load i32* %video_addr, align 4
  %tmp_12 = add i5 %n_cast3, %tmp_s
  %tmp_12_cast = sext i5 %tmp_12 to i32
  %tmp_13 = zext i32 %tmp_12_cast to i64
  %block_addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp_13
  store i32 %video_load, i32* %block_addr, align 4
  br label %6

; <label>:8                                       ; preds = %6
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str2, i32 %tmp_14) nounwind
  br label %.preheader

; <label>:9                                       ; preds = %.preheader
  %value = call fastcc i32 @convolution([9 x i32]* @sob_x, [9 x i32]* %block) nounwind
  %tmp_6 = add i14 %phi_mul, %j_cast7
  %tmp_7 = zext i14 %tmp_6 to i64
  %sob_x1_addr_1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_7
  store i32 %value, i32* %sob_x1_addr_1, align 4
  %value_1 = call fastcc i32 @convolution([9 x i32]* @sob_y, [9 x i32]* %block) nounwind
  %sob_y1_addr_1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_7
  store i32 %value_1, i32* %sob_y1_addr_1, align 4
  br label %10

; <label>:10                                      ; preds = %9, %4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_1) nounwind
  br label %2

; <label>:11                                      ; preds = %2
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_2) nounwind
  br label %0

; <label>:12                                      ; preds = %0
  ret void
}

define internal fastcc i32 @convolution([9 x i32]* nocapture %operatr, [9 x i32]* nocapture %block_r) readonly {
  %value = alloca i32
  store i32 0, i32* %value
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %5 ]
  %i_cast3 = zext i2 %i to i5
  %exitcond1 = icmp eq i2 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_2 = add i2 %i, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str4) nounwind
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([19 x i8]* @p_str4)
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i, i2 0)
  %p_shl_cast = zext i4 %p_shl to i5
  %tmp = sub i5 %p_shl_cast, %i_cast3
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j = phi i2 [ 0, %2 ], [ %j_2, %4 ]
  %j_cast1 = zext i2 %j to i5
  %exitcond = icmp eq i2 %j, -1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %j_2 = add i2 %j, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %value_load_1 = load i32* %value
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str5) nounwind
  %tmp_s = add i5 %tmp, %j_cast1
  %tmp_cast = sext i5 %tmp_s to i32
  %tmp_14 = zext i32 %tmp_cast to i64
  %operatr_addr = getelementptr [9 x i32]* %operatr, i64 0, i64 %tmp_14
  %operatr_load = load i32* %operatr_addr, align 4
  %block_addr = getelementptr [9 x i32]* %block_r, i64 0, i64 %tmp_14
  %block_load = load i32* %block_addr, align 4
  %tmp_15 = mul nsw i32 %operatr_load, %block_load
  %value_2 = add nsw i32 %tmp_15, %value_load_1
  store i32 %value_2, i32* %value
  br label %3

; <label>:5                                       ; preds = %3
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([19 x i8]* @p_str4, i32 %tmp_16)
  br label %1

; <label>:6                                       ; preds = %1
  %value_load = load i32* %value
  ret i32 %value_load
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.select.i14(i14 %0, i32 %1, i32 %2)
  %empty_13 = trunc i14 %empty to i12
  ret i12 %empty_13
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_14 = zext i2 %1 to i4
  %empty_15 = shl i4 %empty, 2
  %empty_16 = or i4 %empty_15, %empty_14
  ret i4 %empty_16
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone {
entry:
  %empty = zext i12 %0 to i14
  %empty_17 = zext i2 %1 to i14
  %empty_18 = shl i14 %empty, 2
  %empty_19 = or i14 %empty_18, %empty_17
  ret i14 %empty_19
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
