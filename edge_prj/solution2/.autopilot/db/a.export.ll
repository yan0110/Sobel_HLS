; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@edge_det_str = internal unnamed_addr constant [9 x i8] c"edge_det\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det_str) nounwind
  br label %1

; <label>:1                                       ; preds = %100, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %100 ]
  %phi_mul = phi i14 [ 0, %0 ], [ %next_mul, %100 ]
  %exitcond3 = icmp eq i7 %i, -28
  %i_1 = add i7 %i, 1
  br i1 %exitcond3, label %101, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = icmp ugt i7 %i, -31
  %next_mul = add i14 %phi_mul, 100
  %tmp_5 = zext i14 %phi_mul to i64
  br i1 %tmp, label %3, label %.preheader.preheader.0

; <label>:3                                       ; preds = %2
  %sob_x1_addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5
  store i32 0, i32* %sob_x1_addr, align 4
  %sob_y1_addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5
  store i32 0, i32* %sob_y1_addr, align 4
  %tmp_4_s = or i14 %phi_mul, 1
  %tmp_5_1 = zext i14 %tmp_4_s to i64
  %sob_x1_addr_2 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_1
  store i32 0, i32* %sob_x1_addr_2, align 4
  %sob_y1_addr_2 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_1
  store i32 0, i32* %sob_y1_addr_2, align 4
  br label %4

.preheader.preheader.0:                           ; preds = %2
  %tmp_10_0_0_s = or i14 %phi_mul, 1
  %tmp_11_0_0_1 = zext i14 %tmp_10_0_0_s to i64
  %video_addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_0_0_1
  %block_1 = load i32* %video_addr, align 4
  %tmp_10_0_2_1 = add i14 %phi_mul, 201
  %tmp_11_0_2_1 = zext i14 %tmp_10_0_2_1 to i64
  %video_addr_1 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_0_2_1
  %block_7 = load i32* %video_addr_1, align 4
  %tmp_3 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1, i32 %block_7) nounwind
  %sob_x1_addr_1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5
  store i32 %tmp_3, i32* %sob_x1_addr_1, align 4
  %tmp_4 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1, i32 %block_7) nounwind
  %sob_y1_addr_1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5
  store i32 %tmp_4, i32* %sob_y1_addr_1, align 4
  %tmp_2_1_0_cast2 = zext i14 %tmp_10_0_0_s to i15
  %tmp_10_1_0_1 = add i15 %tmp_2_1_0_cast2, 1
  %tmp_11_1_0_1 = zext i15 %tmp_10_1_0_1 to i64
  %video_addr_2 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_1_0_1
  %block_1_1 = load i32* %video_addr_2, align 4
  %tmp_10_1_2_1 = add i14 %phi_mul, 202
  %tmp_11_1_2_1 = zext i14 %tmp_10_1_2_1 to i64
  %video_addr_3 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_1_2_1
  %block_7_1 = load i32* %video_addr_3, align 4
  %tmp_6 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_1, i32 %block_7_1) nounwind
  %sob_x1_addr_3 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_0_0_1
  store i32 %tmp_6, i32* %sob_x1_addr_3, align 4
  %tmp_7 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_1, i32 %block_7_1) nounwind
  %sob_y1_addr_3 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_0_0_1
  store i32 %tmp_7, i32* %sob_y1_addr_3, align 4
  br label %4

; <label>:4                                       ; preds = %.preheader.preheader.0, %3
  %tmp_4_1 = or i14 %phi_mul, 2
  %tmp_5_2 = zext i14 %tmp_4_1 to i64
  br i1 %tmp, label %5, label %.preheader.preheader.2

; <label>:5                                       ; preds = %4
  %sob_x1_addr_4 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_2
  store i32 0, i32* %sob_x1_addr_4, align 4
  %sob_y1_addr_4 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_2
  store i32 0, i32* %sob_y1_addr_4, align 4
  %tmp_4_2 = or i14 %phi_mul, 3
  %tmp_5_3 = zext i14 %tmp_4_2 to i64
  %sob_x1_addr_6 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_3
  store i32 0, i32* %sob_x1_addr_6, align 4
  %sob_y1_addr_6 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_3
  store i32 0, i32* %sob_y1_addr_6, align 4
  br label %6

.preheader.preheader.2:                           ; preds = %4
  %tmp_10_2_0_s = or i14 %phi_mul, 3
  %tmp_11_2_0_1 = zext i14 %tmp_10_2_0_s to i64
  %video_addr_4 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_2_0_1
  %block_1_2 = load i32* %video_addr_4, align 4
  %tmp_10_2_2_1 = add i14 %phi_mul, 203
  %tmp_11_2_2_1 = zext i14 %tmp_10_2_2_1 to i64
  %video_addr_5 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_2_2_1
  %block_7_2 = load i32* %video_addr_5, align 4
  %tmp_8 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_2, i32 %block_7_2) nounwind
  %sob_x1_addr_5 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_2
  store i32 %tmp_8, i32* %sob_x1_addr_5, align 4
  %tmp_9 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_2, i32 %block_7_2) nounwind
  %sob_y1_addr_5 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_2
  store i32 %tmp_9, i32* %sob_y1_addr_5, align 4
  %tmp_2_3_0_cast1 = zext i14 %tmp_10_2_0_s to i15
  %tmp_10_3_0_1 = add i15 %tmp_2_3_0_cast1, 1
  %tmp_11_3_0_1 = zext i15 %tmp_10_3_0_1 to i64
  %video_addr_6 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_3_0_1
  %block_1_3 = load i32* %video_addr_6, align 4
  %tmp_10_3_2_1 = add i14 %phi_mul, 204
  %tmp_11_3_2_1 = zext i14 %tmp_10_3_2_1 to i64
  %video_addr_7 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_3_2_1
  %block_7_3 = load i32* %video_addr_7, align 4
  %tmp_s = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_3, i32 %block_7_3) nounwind
  %sob_x1_addr_7 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_2_0_1
  store i32 %tmp_s, i32* %sob_x1_addr_7, align 4
  %tmp_1 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_3, i32 %block_7_3) nounwind
  %sob_y1_addr_7 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_2_0_1
  store i32 %tmp_1, i32* %sob_y1_addr_7, align 4
  br label %6

; <label>:6                                       ; preds = %.preheader.preheader.2, %5
  %tmp_4_4 = add i14 %phi_mul, 4
  %tmp_5_4 = zext i14 %tmp_4_4 to i64
  br i1 %tmp, label %7, label %.preheader.preheader.4

; <label>:7                                       ; preds = %6
  %sob_x1_addr_8 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_4
  store i32 0, i32* %sob_x1_addr_8, align 4
  %sob_y1_addr_8 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_4
  store i32 0, i32* %sob_y1_addr_8, align 4
  %tmp_4_5 = add i14 %phi_mul, 5
  %tmp_5_5 = zext i14 %tmp_4_5 to i64
  %sob_x1_addr_10 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_5
  store i32 0, i32* %sob_x1_addr_10, align 4
  %sob_y1_addr_10 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_5
  store i32 0, i32* %sob_y1_addr_10, align 4
  br label %8

.preheader.preheader.4:                           ; preds = %6
  %tmp_10_4_0_1 = add i14 %phi_mul, 5
  %tmp_11_4_0_1 = zext i14 %tmp_10_4_0_1 to i64
  %video_addr_8 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_4_0_1
  %block_1_4 = load i32* %video_addr_8, align 4
  %tmp_10_4_2_1 = add i14 %phi_mul, 205
  %tmp_11_4_2_1 = zext i14 %tmp_10_4_2_1 to i64
  %video_addr_9 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_4_2_1
  %block_7_4 = load i32* %video_addr_9, align 4
  %tmp_10 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_4, i32 %block_7_4) nounwind
  %sob_x1_addr_9 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_4
  store i32 %tmp_10, i32* %sob_x1_addr_9, align 4
  %tmp_11 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_4, i32 %block_7_4) nounwind
  %sob_y1_addr_9 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_4
  store i32 %tmp_11, i32* %sob_y1_addr_9, align 4
  %tmp_10_5_0_1 = add i14 %phi_mul, 6
  %tmp_11_5_0_1 = zext i14 %tmp_10_5_0_1 to i64
  %video_addr_10 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_5_0_1
  %block_1_5 = load i32* %video_addr_10, align 4
  %tmp_10_5_2_1 = add i14 %phi_mul, 206
  %tmp_11_5_2_1 = zext i14 %tmp_10_5_2_1 to i64
  %video_addr_11 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_5_2_1
  %block_7_5 = load i32* %video_addr_11, align 4
  %tmp_12 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_5, i32 %block_7_5) nounwind
  %sob_x1_addr_11 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_4_0_1
  store i32 %tmp_12, i32* %sob_x1_addr_11, align 4
  %tmp_13 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_5, i32 %block_7_5) nounwind
  %sob_y1_addr_11 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_4_0_1
  store i32 %tmp_13, i32* %sob_y1_addr_11, align 4
  br label %8

; <label>:8                                       ; preds = %.preheader.preheader.4, %7
  %tmp_4_6 = add i14 %phi_mul, 6
  %tmp_5_6 = zext i14 %tmp_4_6 to i64
  br i1 %tmp, label %9, label %.preheader.preheader.6

; <label>:9                                       ; preds = %8
  %sob_x1_addr_12 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_6
  store i32 0, i32* %sob_x1_addr_12, align 4
  %sob_y1_addr_12 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_6
  store i32 0, i32* %sob_y1_addr_12, align 4
  %tmp_4_7 = add i14 %phi_mul, 7
  %tmp_5_7 = zext i14 %tmp_4_7 to i64
  %sob_x1_addr_14 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_7
  store i32 0, i32* %sob_x1_addr_14, align 4
  %sob_y1_addr_14 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_7
  store i32 0, i32* %sob_y1_addr_14, align 4
  br label %10

.preheader.preheader.6:                           ; preds = %8
  %tmp_10_6_0_1 = add i14 %phi_mul, 7
  %tmp_11_6_0_1 = zext i14 %tmp_10_6_0_1 to i64
  %video_addr_12 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_6_0_1
  %block_1_6 = load i32* %video_addr_12, align 4
  %tmp_10_6_2_1 = add i14 %phi_mul, 207
  %tmp_11_6_2_1 = zext i14 %tmp_10_6_2_1 to i64
  %video_addr_13 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_6_2_1
  %block_7_6 = load i32* %video_addr_13, align 4
  %tmp_14 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_6, i32 %block_7_6) nounwind
  %sob_x1_addr_13 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_6
  store i32 %tmp_14, i32* %sob_x1_addr_13, align 4
  %tmp_15 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_6, i32 %block_7_6) nounwind
  %sob_y1_addr_13 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_6
  store i32 %tmp_15, i32* %sob_y1_addr_13, align 4
  %tmp_10_7_0_1 = add i14 %phi_mul, 8
  %tmp_11_7_0_1 = zext i14 %tmp_10_7_0_1 to i64
  %video_addr_14 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_7_0_1
  %block_1_7 = load i32* %video_addr_14, align 4
  %tmp_10_7_2_1 = add i14 %phi_mul, 208
  %tmp_11_7_2_1 = zext i14 %tmp_10_7_2_1 to i64
  %video_addr_15 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_7_2_1
  %block_7_7 = load i32* %video_addr_15, align 4
  %tmp_16 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_7, i32 %block_7_7) nounwind
  %sob_x1_addr_15 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_6_0_1
  store i32 %tmp_16, i32* %sob_x1_addr_15, align 4
  %tmp_17 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_7, i32 %block_7_7) nounwind
  %sob_y1_addr_15 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_6_0_1
  store i32 %tmp_17, i32* %sob_y1_addr_15, align 4
  br label %10

; <label>:10                                      ; preds = %.preheader.preheader.6, %9
  %tmp_4_8 = add i14 %phi_mul, 8
  %tmp_5_8 = zext i14 %tmp_4_8 to i64
  br i1 %tmp, label %11, label %.preheader.preheader.8

; <label>:11                                      ; preds = %10
  %sob_x1_addr_16 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_8
  store i32 0, i32* %sob_x1_addr_16, align 4
  %sob_y1_addr_16 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_8
  store i32 0, i32* %sob_y1_addr_16, align 4
  %tmp_4_9 = add i14 %phi_mul, 9
  %tmp_5_9 = zext i14 %tmp_4_9 to i64
  %sob_x1_addr_18 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_9
  store i32 0, i32* %sob_x1_addr_18, align 4
  %sob_y1_addr_18 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_9
  store i32 0, i32* %sob_y1_addr_18, align 4
  br label %12

.preheader.preheader.8:                           ; preds = %10
  %tmp_10_8_0_1 = add i14 %phi_mul, 9
  %tmp_11_8_0_1 = zext i14 %tmp_10_8_0_1 to i64
  %video_addr_16 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_8_0_1
  %block_1_8 = load i32* %video_addr_16, align 4
  %tmp_10_8_2_1 = add i14 %phi_mul, 209
  %tmp_11_8_2_1 = zext i14 %tmp_10_8_2_1 to i64
  %video_addr_17 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_8_2_1
  %block_7_8 = load i32* %video_addr_17, align 4
  %tmp_18 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_8, i32 %block_7_8) nounwind
  %sob_x1_addr_17 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_8
  store i32 %tmp_18, i32* %sob_x1_addr_17, align 4
  %tmp_19 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_8, i32 %block_7_8) nounwind
  %sob_y1_addr_17 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_8
  store i32 %tmp_19, i32* %sob_y1_addr_17, align 4
  %tmp_10_9_0_1 = add i14 %phi_mul, 10
  %tmp_11_9_0_1 = zext i14 %tmp_10_9_0_1 to i64
  %video_addr_18 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_9_0_1
  %block_1_9 = load i32* %video_addr_18, align 4
  %tmp_10_9_2_1 = add i14 %phi_mul, 210
  %tmp_11_9_2_1 = zext i14 %tmp_10_9_2_1 to i64
  %video_addr_19 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_9_2_1
  %block_7_9 = load i32* %video_addr_19, align 4
  %tmp_20 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_9, i32 %block_7_9) nounwind
  %sob_x1_addr_19 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_8_0_1
  store i32 %tmp_20, i32* %sob_x1_addr_19, align 4
  %tmp_21 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_9, i32 %block_7_9) nounwind
  %sob_y1_addr_19 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_8_0_1
  store i32 %tmp_21, i32* %sob_y1_addr_19, align 4
  br label %12

; <label>:12                                      ; preds = %.preheader.preheader.8, %11
  %tmp_4_3 = add i14 %phi_mul, 10
  %tmp_5_s = zext i14 %tmp_4_3 to i64
  br i1 %tmp, label %13, label %.preheader.preheader.10

; <label>:13                                      ; preds = %12
  %sob_x1_addr_20 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_s
  store i32 0, i32* %sob_x1_addr_20, align 4
  %sob_y1_addr_20 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_s
  store i32 0, i32* %sob_y1_addr_20, align 4
  %tmp_4_10 = add i14 %phi_mul, 11
  %tmp_5_10 = zext i14 %tmp_4_10 to i64
  %sob_x1_addr_22 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_10
  store i32 0, i32* %sob_x1_addr_22, align 4
  %sob_y1_addr_22 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_10
  store i32 0, i32* %sob_y1_addr_22, align 4
  br label %14

.preheader.preheader.10:                          ; preds = %12
  %tmp_10_10_0_1 = add i14 %phi_mul, 11
  %tmp_11_10_0_1 = zext i14 %tmp_10_10_0_1 to i64
  %video_addr_20 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_10_0_1
  %block_1_10 = load i32* %video_addr_20, align 4
  %tmp_10_10_2_1 = add i14 %phi_mul, 211
  %tmp_11_10_2_1 = zext i14 %tmp_10_10_2_1 to i64
  %video_addr_21 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_10_2_1
  %block_7_10 = load i32* %video_addr_21, align 4
  %tmp_22 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_10, i32 %block_7_10) nounwind
  %sob_x1_addr_21 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_s
  store i32 %tmp_22, i32* %sob_x1_addr_21, align 4
  %tmp_23 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_10, i32 %block_7_10) nounwind
  %sob_y1_addr_21 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_s
  store i32 %tmp_23, i32* %sob_y1_addr_21, align 4
  %tmp_10_11_0_1 = add i14 %phi_mul, 12
  %tmp_11_11_0_1 = zext i14 %tmp_10_11_0_1 to i64
  %video_addr_22 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_11_0_1
  %block_1_11 = load i32* %video_addr_22, align 4
  %tmp_10_11_2_1 = add i14 %phi_mul, 212
  %tmp_11_11_2_1 = zext i14 %tmp_10_11_2_1 to i64
  %video_addr_23 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_11_2_1
  %block_7_11 = load i32* %video_addr_23, align 4
  %tmp_24 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_11, i32 %block_7_11) nounwind
  %sob_x1_addr_23 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_10_0_1
  store i32 %tmp_24, i32* %sob_x1_addr_23, align 4
  %tmp_25 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_11, i32 %block_7_11) nounwind
  %sob_y1_addr_23 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_10_0_1
  store i32 %tmp_25, i32* %sob_y1_addr_23, align 4
  br label %14

; <label>:14                                      ; preds = %.preheader.preheader.10, %13
  %tmp_4_11 = add i14 %phi_mul, 12
  %tmp_5_11 = zext i14 %tmp_4_11 to i64
  br i1 %tmp, label %15, label %.preheader.preheader.12

; <label>:15                                      ; preds = %14
  %sob_x1_addr_24 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_11
  store i32 0, i32* %sob_x1_addr_24, align 4
  %sob_y1_addr_24 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_11
  store i32 0, i32* %sob_y1_addr_24, align 4
  %tmp_4_12 = add i14 %phi_mul, 13
  %tmp_5_12 = zext i14 %tmp_4_12 to i64
  %sob_x1_addr_26 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_12
  store i32 0, i32* %sob_x1_addr_26, align 4
  %sob_y1_addr_26 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_12
  store i32 0, i32* %sob_y1_addr_26, align 4
  br label %16

.preheader.preheader.12:                          ; preds = %14
  %tmp_10_12_0_1 = add i14 %phi_mul, 13
  %tmp_11_12_0_1 = zext i14 %tmp_10_12_0_1 to i64
  %video_addr_24 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_12_0_1
  %block_1_12 = load i32* %video_addr_24, align 4
  %tmp_10_12_2_1 = add i14 %phi_mul, 213
  %tmp_11_12_2_1 = zext i14 %tmp_10_12_2_1 to i64
  %video_addr_25 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_12_2_1
  %block_7_12 = load i32* %video_addr_25, align 4
  %tmp_26 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_12, i32 %block_7_12) nounwind
  %sob_x1_addr_25 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_11
  store i32 %tmp_26, i32* %sob_x1_addr_25, align 4
  %tmp_27 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_12, i32 %block_7_12) nounwind
  %sob_y1_addr_25 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_11
  store i32 %tmp_27, i32* %sob_y1_addr_25, align 4
  %tmp_10_13_0_1 = add i14 %phi_mul, 14
  %tmp_11_13_0_1 = zext i14 %tmp_10_13_0_1 to i64
  %video_addr_26 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_13_0_1
  %block_1_13 = load i32* %video_addr_26, align 4
  %tmp_10_13_2_1 = add i14 %phi_mul, 214
  %tmp_11_13_2_1 = zext i14 %tmp_10_13_2_1 to i64
  %video_addr_27 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_13_2_1
  %block_7_13 = load i32* %video_addr_27, align 4
  %tmp_28 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_13, i32 %block_7_13) nounwind
  %sob_x1_addr_27 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_12_0_1
  store i32 %tmp_28, i32* %sob_x1_addr_27, align 4
  %tmp_29 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_13, i32 %block_7_13) nounwind
  %sob_y1_addr_27 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_12_0_1
  store i32 %tmp_29, i32* %sob_y1_addr_27, align 4
  br label %16

; <label>:16                                      ; preds = %.preheader.preheader.12, %15
  %tmp_4_13 = add i14 %phi_mul, 14
  %tmp_5_13 = zext i14 %tmp_4_13 to i64
  br i1 %tmp, label %17, label %.preheader.preheader.14

; <label>:17                                      ; preds = %16
  %sob_x1_addr_28 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_13
  store i32 0, i32* %sob_x1_addr_28, align 4
  %sob_y1_addr_28 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_13
  store i32 0, i32* %sob_y1_addr_28, align 4
  %tmp_4_14 = add i14 %phi_mul, 15
  %tmp_5_14 = zext i14 %tmp_4_14 to i64
  %sob_x1_addr_30 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_14
  store i32 0, i32* %sob_x1_addr_30, align 4
  %sob_y1_addr_30 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_14
  store i32 0, i32* %sob_y1_addr_30, align 4
  br label %18

.preheader.preheader.14:                          ; preds = %16
  %tmp_10_14_0_1 = add i14 %phi_mul, 15
  %tmp_11_14_0_1 = zext i14 %tmp_10_14_0_1 to i64
  %video_addr_28 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_14_0_1
  %block_1_14 = load i32* %video_addr_28, align 4
  %tmp_10_14_2_1 = add i14 %phi_mul, 215
  %tmp_11_14_2_1 = zext i14 %tmp_10_14_2_1 to i64
  %video_addr_29 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_14_2_1
  %block_7_14 = load i32* %video_addr_29, align 4
  %tmp_30 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_14, i32 %block_7_14) nounwind
  %sob_x1_addr_29 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_13
  store i32 %tmp_30, i32* %sob_x1_addr_29, align 4
  %tmp_31 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_14, i32 %block_7_14) nounwind
  %sob_y1_addr_29 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_13
  store i32 %tmp_31, i32* %sob_y1_addr_29, align 4
  %tmp_10_15_0_1 = add i14 %phi_mul, 16
  %tmp_11_15_0_1 = zext i14 %tmp_10_15_0_1 to i64
  %video_addr_30 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_15_0_1
  %block_1_15 = load i32* %video_addr_30, align 4
  %tmp_10_15_2_1 = add i14 %phi_mul, 216
  %tmp_11_15_2_1 = zext i14 %tmp_10_15_2_1 to i64
  %video_addr_31 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_15_2_1
  %block_7_15 = load i32* %video_addr_31, align 4
  %tmp_32 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_15, i32 %block_7_15) nounwind
  %sob_x1_addr_31 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_14_0_1
  store i32 %tmp_32, i32* %sob_x1_addr_31, align 4
  %tmp_33 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_15, i32 %block_7_15) nounwind
  %sob_y1_addr_31 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_14_0_1
  store i32 %tmp_33, i32* %sob_y1_addr_31, align 4
  br label %18

; <label>:18                                      ; preds = %.preheader.preheader.14, %17
  %tmp_4_15 = add i14 %phi_mul, 16
  %tmp_5_15 = zext i14 %tmp_4_15 to i64
  br i1 %tmp, label %19, label %.preheader.preheader.16

; <label>:19                                      ; preds = %18
  %sob_x1_addr_32 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_15
  store i32 0, i32* %sob_x1_addr_32, align 4
  %sob_y1_addr_32 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_15
  store i32 0, i32* %sob_y1_addr_32, align 4
  %tmp_4_16 = add i14 %phi_mul, 17
  %tmp_5_16 = zext i14 %tmp_4_16 to i64
  %sob_x1_addr_34 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_16
  store i32 0, i32* %sob_x1_addr_34, align 4
  %sob_y1_addr_34 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_16
  store i32 0, i32* %sob_y1_addr_34, align 4
  br label %20

.preheader.preheader.16:                          ; preds = %18
  %tmp_10_16_0_1 = add i14 %phi_mul, 17
  %tmp_11_16_0_1 = zext i14 %tmp_10_16_0_1 to i64
  %video_addr_32 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_16_0_1
  %block_1_16 = load i32* %video_addr_32, align 4
  %tmp_10_16_2_1 = add i14 %phi_mul, 217
  %tmp_11_16_2_1 = zext i14 %tmp_10_16_2_1 to i64
  %video_addr_33 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_16_2_1
  %block_7_16 = load i32* %video_addr_33, align 4
  %tmp_34 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_16, i32 %block_7_16) nounwind
  %sob_x1_addr_33 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_15
  store i32 %tmp_34, i32* %sob_x1_addr_33, align 4
  %tmp_35 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_16, i32 %block_7_16) nounwind
  %sob_y1_addr_33 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_15
  store i32 %tmp_35, i32* %sob_y1_addr_33, align 4
  %tmp_10_17_0_1 = add i14 %phi_mul, 18
  %tmp_11_17_0_1 = zext i14 %tmp_10_17_0_1 to i64
  %video_addr_34 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_17_0_1
  %block_1_17 = load i32* %video_addr_34, align 4
  %tmp_10_17_2_1 = add i14 %phi_mul, 218
  %tmp_11_17_2_1 = zext i14 %tmp_10_17_2_1 to i64
  %video_addr_35 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_17_2_1
  %block_7_17 = load i32* %video_addr_35, align 4
  %tmp_36 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_17, i32 %block_7_17) nounwind
  %sob_x1_addr_35 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_16_0_1
  store i32 %tmp_36, i32* %sob_x1_addr_35, align 4
  %tmp_37 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_17, i32 %block_7_17) nounwind
  %sob_y1_addr_35 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_16_0_1
  store i32 %tmp_37, i32* %sob_y1_addr_35, align 4
  br label %20

; <label>:20                                      ; preds = %.preheader.preheader.16, %19
  %tmp_4_17 = add i14 %phi_mul, 18
  %tmp_5_17 = zext i14 %tmp_4_17 to i64
  br i1 %tmp, label %21, label %.preheader.preheader.18

; <label>:21                                      ; preds = %20
  %sob_x1_addr_36 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_17
  store i32 0, i32* %sob_x1_addr_36, align 4
  %sob_y1_addr_36 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_17
  store i32 0, i32* %sob_y1_addr_36, align 4
  %tmp_4_18 = add i14 %phi_mul, 19
  %tmp_5_18 = zext i14 %tmp_4_18 to i64
  %sob_x1_addr_38 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_18
  store i32 0, i32* %sob_x1_addr_38, align 4
  %sob_y1_addr_38 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_18
  store i32 0, i32* %sob_y1_addr_38, align 4
  br label %22

.preheader.preheader.18:                          ; preds = %20
  %tmp_10_18_0_1 = add i14 %phi_mul, 19
  %tmp_11_18_0_1 = zext i14 %tmp_10_18_0_1 to i64
  %video_addr_36 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_18_0_1
  %block_1_18 = load i32* %video_addr_36, align 4
  %tmp_10_18_2_1 = add i14 %phi_mul, 219
  %tmp_11_18_2_1 = zext i14 %tmp_10_18_2_1 to i64
  %video_addr_37 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_18_2_1
  %block_7_18 = load i32* %video_addr_37, align 4
  %tmp_38 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_18, i32 %block_7_18) nounwind
  %sob_x1_addr_37 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_17
  store i32 %tmp_38, i32* %sob_x1_addr_37, align 4
  %tmp_39 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_18, i32 %block_7_18) nounwind
  %sob_y1_addr_37 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_17
  store i32 %tmp_39, i32* %sob_y1_addr_37, align 4
  %tmp_10_19_0_1 = add i14 %phi_mul, 20
  %tmp_11_19_0_1 = zext i14 %tmp_10_19_0_1 to i64
  %video_addr_38 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_19_0_1
  %block_1_19 = load i32* %video_addr_38, align 4
  %tmp_10_19_2_1 = add i14 %phi_mul, 220
  %tmp_11_19_2_1 = zext i14 %tmp_10_19_2_1 to i64
  %video_addr_39 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_19_2_1
  %block_7_19 = load i32* %video_addr_39, align 4
  %tmp_40 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_19, i32 %block_7_19) nounwind
  %sob_x1_addr_39 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_18_0_1
  store i32 %tmp_40, i32* %sob_x1_addr_39, align 4
  %tmp_41 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_19, i32 %block_7_19) nounwind
  %sob_y1_addr_39 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_18_0_1
  store i32 %tmp_41, i32* %sob_y1_addr_39, align 4
  br label %22

; <label>:22                                      ; preds = %.preheader.preheader.18, %21
  %tmp_4_19 = add i14 %phi_mul, 20
  %tmp_5_19 = zext i14 %tmp_4_19 to i64
  br i1 %tmp, label %23, label %.preheader.preheader.20

; <label>:23                                      ; preds = %22
  %sob_x1_addr_40 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_19
  store i32 0, i32* %sob_x1_addr_40, align 4
  %sob_y1_addr_40 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_19
  store i32 0, i32* %sob_y1_addr_40, align 4
  %tmp_4_20 = add i14 %phi_mul, 21
  %tmp_5_20 = zext i14 %tmp_4_20 to i64
  %sob_x1_addr_42 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_20
  store i32 0, i32* %sob_x1_addr_42, align 4
  %sob_y1_addr_42 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_20
  store i32 0, i32* %sob_y1_addr_42, align 4
  br label %24

.preheader.preheader.20:                          ; preds = %22
  %tmp_10_20_0_1 = add i14 %phi_mul, 21
  %tmp_11_20_0_1 = zext i14 %tmp_10_20_0_1 to i64
  %video_addr_40 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_20_0_1
  %block_1_20 = load i32* %video_addr_40, align 4
  %tmp_10_20_2_1 = add i14 %phi_mul, 221
  %tmp_11_20_2_1 = zext i14 %tmp_10_20_2_1 to i64
  %video_addr_41 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_20_2_1
  %block_7_20 = load i32* %video_addr_41, align 4
  %tmp_42 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_20, i32 %block_7_20) nounwind
  %sob_x1_addr_41 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_19
  store i32 %tmp_42, i32* %sob_x1_addr_41, align 4
  %tmp_43 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_20, i32 %block_7_20) nounwind
  %sob_y1_addr_41 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_19
  store i32 %tmp_43, i32* %sob_y1_addr_41, align 4
  %tmp_10_21_0_1 = add i14 %phi_mul, 22
  %tmp_11_21_0_1 = zext i14 %tmp_10_21_0_1 to i64
  %video_addr_42 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_21_0_1
  %block_1_21 = load i32* %video_addr_42, align 4
  %tmp_10_21_2_1 = add i14 %phi_mul, 222
  %tmp_11_21_2_1 = zext i14 %tmp_10_21_2_1 to i64
  %video_addr_43 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_21_2_1
  %block_7_21 = load i32* %video_addr_43, align 4
  %tmp_44 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_21, i32 %block_7_21) nounwind
  %sob_x1_addr_43 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_20_0_1
  store i32 %tmp_44, i32* %sob_x1_addr_43, align 4
  %tmp_45 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_21, i32 %block_7_21) nounwind
  %sob_y1_addr_43 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_20_0_1
  store i32 %tmp_45, i32* %sob_y1_addr_43, align 4
  br label %24

; <label>:24                                      ; preds = %.preheader.preheader.20, %23
  %tmp_4_21 = add i14 %phi_mul, 22
  %tmp_5_21 = zext i14 %tmp_4_21 to i64
  br i1 %tmp, label %25, label %.preheader.preheader.22

; <label>:25                                      ; preds = %24
  %sob_x1_addr_44 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_21
  store i32 0, i32* %sob_x1_addr_44, align 4
  %sob_y1_addr_44 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_21
  store i32 0, i32* %sob_y1_addr_44, align 4
  %tmp_4_22 = add i14 %phi_mul, 23
  %tmp_5_22 = zext i14 %tmp_4_22 to i64
  %sob_x1_addr_46 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_22
  store i32 0, i32* %sob_x1_addr_46, align 4
  %sob_y1_addr_46 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_22
  store i32 0, i32* %sob_y1_addr_46, align 4
  br label %26

.preheader.preheader.22:                          ; preds = %24
  %tmp_10_22_0_1 = add i14 %phi_mul, 23
  %tmp_11_22_0_1 = zext i14 %tmp_10_22_0_1 to i64
  %video_addr_44 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_22_0_1
  %block_1_22 = load i32* %video_addr_44, align 4
  %tmp_10_22_2_1 = add i14 %phi_mul, 223
  %tmp_11_22_2_1 = zext i14 %tmp_10_22_2_1 to i64
  %video_addr_45 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_22_2_1
  %block_7_22 = load i32* %video_addr_45, align 4
  %tmp_46 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_22, i32 %block_7_22) nounwind
  %sob_x1_addr_45 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_21
  store i32 %tmp_46, i32* %sob_x1_addr_45, align 4
  %tmp_47 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_22, i32 %block_7_22) nounwind
  %sob_y1_addr_45 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_21
  store i32 %tmp_47, i32* %sob_y1_addr_45, align 4
  %tmp_10_23_0_1 = add i14 %phi_mul, 24
  %tmp_11_23_0_1 = zext i14 %tmp_10_23_0_1 to i64
  %video_addr_46 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_23_0_1
  %block_1_23 = load i32* %video_addr_46, align 4
  %tmp_10_23_2_1 = add i14 %phi_mul, 224
  %tmp_11_23_2_1 = zext i14 %tmp_10_23_2_1 to i64
  %video_addr_47 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_23_2_1
  %block_7_23 = load i32* %video_addr_47, align 4
  %tmp_48 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_23, i32 %block_7_23) nounwind
  %sob_x1_addr_47 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_22_0_1
  store i32 %tmp_48, i32* %sob_x1_addr_47, align 4
  %tmp_49 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_23, i32 %block_7_23) nounwind
  %sob_y1_addr_47 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_22_0_1
  store i32 %tmp_49, i32* %sob_y1_addr_47, align 4
  br label %26

; <label>:26                                      ; preds = %.preheader.preheader.22, %25
  %tmp_4_23 = add i14 %phi_mul, 24
  %tmp_5_23 = zext i14 %tmp_4_23 to i64
  br i1 %tmp, label %27, label %.preheader.preheader.24

; <label>:27                                      ; preds = %26
  %sob_x1_addr_48 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_23
  store i32 0, i32* %sob_x1_addr_48, align 4
  %sob_y1_addr_48 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_23
  store i32 0, i32* %sob_y1_addr_48, align 4
  %tmp_4_24 = add i14 %phi_mul, 25
  %tmp_5_24 = zext i14 %tmp_4_24 to i64
  %sob_x1_addr_50 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_24
  store i32 0, i32* %sob_x1_addr_50, align 4
  %sob_y1_addr_50 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_24
  store i32 0, i32* %sob_y1_addr_50, align 4
  br label %28

.preheader.preheader.24:                          ; preds = %26
  %tmp_10_24_0_1 = add i14 %phi_mul, 25
  %tmp_11_24_0_1 = zext i14 %tmp_10_24_0_1 to i64
  %video_addr_48 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_24_0_1
  %block_1_24 = load i32* %video_addr_48, align 4
  %tmp_10_24_2_1 = add i14 %phi_mul, 225
  %tmp_11_24_2_1 = zext i14 %tmp_10_24_2_1 to i64
  %video_addr_49 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_24_2_1
  %block_7_24 = load i32* %video_addr_49, align 4
  %tmp_50 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_24, i32 %block_7_24) nounwind
  %sob_x1_addr_49 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_23
  store i32 %tmp_50, i32* %sob_x1_addr_49, align 4
  %tmp_51 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_24, i32 %block_7_24) nounwind
  %sob_y1_addr_49 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_23
  store i32 %tmp_51, i32* %sob_y1_addr_49, align 4
  %tmp_10_25_0_1 = add i14 %phi_mul, 26
  %tmp_11_25_0_1 = zext i14 %tmp_10_25_0_1 to i64
  %video_addr_50 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_25_0_1
  %block_1_25 = load i32* %video_addr_50, align 4
  %tmp_10_25_2_1 = add i14 %phi_mul, 226
  %tmp_11_25_2_1 = zext i14 %tmp_10_25_2_1 to i64
  %video_addr_51 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_25_2_1
  %block_7_25 = load i32* %video_addr_51, align 4
  %tmp_52 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_25, i32 %block_7_25) nounwind
  %sob_x1_addr_51 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_24_0_1
  store i32 %tmp_52, i32* %sob_x1_addr_51, align 4
  %tmp_53 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_25, i32 %block_7_25) nounwind
  %sob_y1_addr_51 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_24_0_1
  store i32 %tmp_53, i32* %sob_y1_addr_51, align 4
  br label %28

; <label>:28                                      ; preds = %.preheader.preheader.24, %27
  %tmp_4_25 = add i14 %phi_mul, 26
  %tmp_5_25 = zext i14 %tmp_4_25 to i64
  br i1 %tmp, label %29, label %.preheader.preheader.26

; <label>:29                                      ; preds = %28
  %sob_x1_addr_52 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_25
  store i32 0, i32* %sob_x1_addr_52, align 4
  %sob_y1_addr_52 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_25
  store i32 0, i32* %sob_y1_addr_52, align 4
  %tmp_4_26 = add i14 %phi_mul, 27
  %tmp_5_26 = zext i14 %tmp_4_26 to i64
  %sob_x1_addr_54 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_26
  store i32 0, i32* %sob_x1_addr_54, align 4
  %sob_y1_addr_54 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_26
  store i32 0, i32* %sob_y1_addr_54, align 4
  br label %30

.preheader.preheader.26:                          ; preds = %28
  %tmp_10_26_0_1 = add i14 %phi_mul, 27
  %tmp_11_26_0_1 = zext i14 %tmp_10_26_0_1 to i64
  %video_addr_52 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_26_0_1
  %block_1_26 = load i32* %video_addr_52, align 4
  %tmp_10_26_2_1 = add i14 %phi_mul, 227
  %tmp_11_26_2_1 = zext i14 %tmp_10_26_2_1 to i64
  %video_addr_53 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_26_2_1
  %block_7_26 = load i32* %video_addr_53, align 4
  %tmp_54 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_26, i32 %block_7_26) nounwind
  %sob_x1_addr_53 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_25
  store i32 %tmp_54, i32* %sob_x1_addr_53, align 4
  %tmp_55 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_26, i32 %block_7_26) nounwind
  %sob_y1_addr_53 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_25
  store i32 %tmp_55, i32* %sob_y1_addr_53, align 4
  %tmp_10_27_0_1 = add i14 %phi_mul, 28
  %tmp_11_27_0_1 = zext i14 %tmp_10_27_0_1 to i64
  %video_addr_54 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_27_0_1
  %block_1_27 = load i32* %video_addr_54, align 4
  %tmp_10_27_2_1 = add i14 %phi_mul, 228
  %tmp_11_27_2_1 = zext i14 %tmp_10_27_2_1 to i64
  %video_addr_55 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_27_2_1
  %block_7_27 = load i32* %video_addr_55, align 4
  %tmp_56 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_27, i32 %block_7_27) nounwind
  %sob_x1_addr_55 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_26_0_1
  store i32 %tmp_56, i32* %sob_x1_addr_55, align 4
  %tmp_57 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_27, i32 %block_7_27) nounwind
  %sob_y1_addr_55 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_26_0_1
  store i32 %tmp_57, i32* %sob_y1_addr_55, align 4
  br label %30

; <label>:30                                      ; preds = %.preheader.preheader.26, %29
  %tmp_4_27 = add i14 %phi_mul, 28
  %tmp_5_27 = zext i14 %tmp_4_27 to i64
  br i1 %tmp, label %31, label %.preheader.preheader.28

; <label>:31                                      ; preds = %30
  %sob_x1_addr_56 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_27
  store i32 0, i32* %sob_x1_addr_56, align 4
  %sob_y1_addr_56 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_27
  store i32 0, i32* %sob_y1_addr_56, align 4
  %tmp_4_28 = add i14 %phi_mul, 29
  %tmp_5_28 = zext i14 %tmp_4_28 to i64
  %sob_x1_addr_58 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_28
  store i32 0, i32* %sob_x1_addr_58, align 4
  %sob_y1_addr_58 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_28
  store i32 0, i32* %sob_y1_addr_58, align 4
  br label %32

.preheader.preheader.28:                          ; preds = %30
  %tmp_10_28_0_1 = add i14 %phi_mul, 29
  %tmp_11_28_0_1 = zext i14 %tmp_10_28_0_1 to i64
  %video_addr_56 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_28_0_1
  %block_1_28 = load i32* %video_addr_56, align 4
  %tmp_10_28_2_1 = add i14 %phi_mul, 229
  %tmp_11_28_2_1 = zext i14 %tmp_10_28_2_1 to i64
  %video_addr_57 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_28_2_1
  %block_7_28 = load i32* %video_addr_57, align 4
  %tmp_58 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_28, i32 %block_7_28) nounwind
  %sob_x1_addr_57 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_27
  store i32 %tmp_58, i32* %sob_x1_addr_57, align 4
  %tmp_59 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_28, i32 %block_7_28) nounwind
  %sob_y1_addr_57 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_27
  store i32 %tmp_59, i32* %sob_y1_addr_57, align 4
  %tmp_10_29_0_1 = add i14 %phi_mul, 30
  %tmp_11_29_0_1 = zext i14 %tmp_10_29_0_1 to i64
  %video_addr_58 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_29_0_1
  %block_1_29 = load i32* %video_addr_58, align 4
  %tmp_10_29_2_1 = add i14 %phi_mul, 230
  %tmp_11_29_2_1 = zext i14 %tmp_10_29_2_1 to i64
  %video_addr_59 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_29_2_1
  %block_7_29 = load i32* %video_addr_59, align 4
  %tmp_60 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_29, i32 %block_7_29) nounwind
  %sob_x1_addr_59 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_28_0_1
  store i32 %tmp_60, i32* %sob_x1_addr_59, align 4
  %tmp_61 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_29, i32 %block_7_29) nounwind
  %sob_y1_addr_59 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_28_0_1
  store i32 %tmp_61, i32* %sob_y1_addr_59, align 4
  br label %32

; <label>:32                                      ; preds = %.preheader.preheader.28, %31
  %tmp_4_29 = add i14 %phi_mul, 30
  %tmp_5_29 = zext i14 %tmp_4_29 to i64
  br i1 %tmp, label %33, label %.preheader.preheader.30

; <label>:33                                      ; preds = %32
  %sob_x1_addr_60 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_29
  store i32 0, i32* %sob_x1_addr_60, align 4
  %sob_y1_addr_60 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_29
  store i32 0, i32* %sob_y1_addr_60, align 4
  %tmp_4_30 = add i14 %phi_mul, 31
  %tmp_5_30 = zext i14 %tmp_4_30 to i64
  %sob_x1_addr_62 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_30
  store i32 0, i32* %sob_x1_addr_62, align 4
  %sob_y1_addr_62 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_30
  store i32 0, i32* %sob_y1_addr_62, align 4
  br label %34

.preheader.preheader.30:                          ; preds = %32
  %tmp_10_30_0_1 = add i14 %phi_mul, 31
  %tmp_11_30_0_1 = zext i14 %tmp_10_30_0_1 to i64
  %video_addr_60 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_30_0_1
  %block_1_30 = load i32* %video_addr_60, align 4
  %tmp_10_30_2_1 = add i14 %phi_mul, 231
  %tmp_11_30_2_1 = zext i14 %tmp_10_30_2_1 to i64
  %video_addr_61 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_30_2_1
  %block_7_30 = load i32* %video_addr_61, align 4
  %tmp_62 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_30, i32 %block_7_30) nounwind
  %sob_x1_addr_61 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_29
  store i32 %tmp_62, i32* %sob_x1_addr_61, align 4
  %tmp_63 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_30, i32 %block_7_30) nounwind
  %sob_y1_addr_61 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_29
  store i32 %tmp_63, i32* %sob_y1_addr_61, align 4
  %tmp_10_31_0_1 = add i14 %phi_mul, 32
  %tmp_11_31_0_1 = zext i14 %tmp_10_31_0_1 to i64
  %video_addr_62 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_31_0_1
  %block_1_31 = load i32* %video_addr_62, align 4
  %tmp_10_31_2_1 = add i14 %phi_mul, 232
  %tmp_11_31_2_1 = zext i14 %tmp_10_31_2_1 to i64
  %video_addr_63 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_31_2_1
  %block_7_31 = load i32* %video_addr_63, align 4
  %tmp_64 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_31, i32 %block_7_31) nounwind
  %sob_x1_addr_63 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_30_0_1
  store i32 %tmp_64, i32* %sob_x1_addr_63, align 4
  %tmp_65 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_31, i32 %block_7_31) nounwind
  %sob_y1_addr_63 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_30_0_1
  store i32 %tmp_65, i32* %sob_y1_addr_63, align 4
  br label %34

; <label>:34                                      ; preds = %.preheader.preheader.30, %33
  %tmp_4_31 = add i14 %phi_mul, 32
  %tmp_5_31 = zext i14 %tmp_4_31 to i64
  br i1 %tmp, label %35, label %.preheader.preheader.32

; <label>:35                                      ; preds = %34
  %sob_x1_addr_64 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_31
  store i32 0, i32* %sob_x1_addr_64, align 4
  %sob_y1_addr_64 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_31
  store i32 0, i32* %sob_y1_addr_64, align 4
  %tmp_4_32 = add i14 %phi_mul, 33
  %tmp_5_32 = zext i14 %tmp_4_32 to i64
  %sob_x1_addr_66 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_32
  store i32 0, i32* %sob_x1_addr_66, align 4
  %sob_y1_addr_66 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_32
  store i32 0, i32* %sob_y1_addr_66, align 4
  br label %36

.preheader.preheader.32:                          ; preds = %34
  %tmp_10_32_0_1 = add i14 %phi_mul, 33
  %tmp_11_32_0_1 = zext i14 %tmp_10_32_0_1 to i64
  %video_addr_64 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_32_0_1
  %block_1_32 = load i32* %video_addr_64, align 4
  %tmp_10_32_2_1 = add i14 %phi_mul, 233
  %tmp_11_32_2_1 = zext i14 %tmp_10_32_2_1 to i64
  %video_addr_65 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_32_2_1
  %block_7_32 = load i32* %video_addr_65, align 4
  %tmp_66 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_32, i32 %block_7_32) nounwind
  %sob_x1_addr_65 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_31
  store i32 %tmp_66, i32* %sob_x1_addr_65, align 4
  %tmp_67 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_32, i32 %block_7_32) nounwind
  %sob_y1_addr_65 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_31
  store i32 %tmp_67, i32* %sob_y1_addr_65, align 4
  %tmp_10_33_0_1 = add i14 %phi_mul, 34
  %tmp_11_33_0_1 = zext i14 %tmp_10_33_0_1 to i64
  %video_addr_66 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_33_0_1
  %block_1_33 = load i32* %video_addr_66, align 4
  %tmp_10_33_2_1 = add i14 %phi_mul, 234
  %tmp_11_33_2_1 = zext i14 %tmp_10_33_2_1 to i64
  %video_addr_67 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_33_2_1
  %block_7_33 = load i32* %video_addr_67, align 4
  %tmp_68 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_33, i32 %block_7_33) nounwind
  %sob_x1_addr_67 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_32_0_1
  store i32 %tmp_68, i32* %sob_x1_addr_67, align 4
  %tmp_69 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_33, i32 %block_7_33) nounwind
  %sob_y1_addr_67 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_32_0_1
  store i32 %tmp_69, i32* %sob_y1_addr_67, align 4
  br label %36

; <label>:36                                      ; preds = %.preheader.preheader.32, %35
  %tmp_4_33 = add i14 %phi_mul, 34
  %tmp_5_33 = zext i14 %tmp_4_33 to i64
  br i1 %tmp, label %37, label %.preheader.preheader.34

; <label>:37                                      ; preds = %36
  %sob_x1_addr_68 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_33
  store i32 0, i32* %sob_x1_addr_68, align 4
  %sob_y1_addr_68 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_33
  store i32 0, i32* %sob_y1_addr_68, align 4
  %tmp_4_34 = add i14 %phi_mul, 35
  %tmp_5_34 = zext i14 %tmp_4_34 to i64
  %sob_x1_addr_70 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_34
  store i32 0, i32* %sob_x1_addr_70, align 4
  %sob_y1_addr_70 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_34
  store i32 0, i32* %sob_y1_addr_70, align 4
  br label %38

.preheader.preheader.34:                          ; preds = %36
  %tmp_10_34_0_1 = add i14 %phi_mul, 35
  %tmp_11_34_0_1 = zext i14 %tmp_10_34_0_1 to i64
  %video_addr_68 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_34_0_1
  %block_1_34 = load i32* %video_addr_68, align 4
  %tmp_10_34_2_1 = add i14 %phi_mul, 235
  %tmp_11_34_2_1 = zext i14 %tmp_10_34_2_1 to i64
  %video_addr_69 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_34_2_1
  %block_7_34 = load i32* %video_addr_69, align 4
  %tmp_70 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_34, i32 %block_7_34) nounwind
  %sob_x1_addr_69 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_33
  store i32 %tmp_70, i32* %sob_x1_addr_69, align 4
  %tmp_71 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_34, i32 %block_7_34) nounwind
  %sob_y1_addr_69 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_33
  store i32 %tmp_71, i32* %sob_y1_addr_69, align 4
  %tmp_10_35_0_1 = add i14 %phi_mul, 36
  %tmp_11_35_0_1 = zext i14 %tmp_10_35_0_1 to i64
  %video_addr_70 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_35_0_1
  %block_1_35 = load i32* %video_addr_70, align 4
  %tmp_10_35_2_1 = add i14 %phi_mul, 236
  %tmp_11_35_2_1 = zext i14 %tmp_10_35_2_1 to i64
  %video_addr_71 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_35_2_1
  %block_7_35 = load i32* %video_addr_71, align 4
  %tmp_72 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_35, i32 %block_7_35) nounwind
  %sob_x1_addr_71 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_34_0_1
  store i32 %tmp_72, i32* %sob_x1_addr_71, align 4
  %tmp_73 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_35, i32 %block_7_35) nounwind
  %sob_y1_addr_71 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_34_0_1
  store i32 %tmp_73, i32* %sob_y1_addr_71, align 4
  br label %38

; <label>:38                                      ; preds = %.preheader.preheader.34, %37
  %tmp_4_35 = add i14 %phi_mul, 36
  %tmp_5_35 = zext i14 %tmp_4_35 to i64
  br i1 %tmp, label %39, label %.preheader.preheader.36

; <label>:39                                      ; preds = %38
  %sob_x1_addr_72 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_35
  store i32 0, i32* %sob_x1_addr_72, align 4
  %sob_y1_addr_72 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_35
  store i32 0, i32* %sob_y1_addr_72, align 4
  %tmp_4_36 = add i14 %phi_mul, 37
  %tmp_5_36 = zext i14 %tmp_4_36 to i64
  %sob_x1_addr_74 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_36
  store i32 0, i32* %sob_x1_addr_74, align 4
  %sob_y1_addr_74 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_36
  store i32 0, i32* %sob_y1_addr_74, align 4
  br label %40

.preheader.preheader.36:                          ; preds = %38
  %tmp_10_36_0_1 = add i14 %phi_mul, 37
  %tmp_11_36_0_1 = zext i14 %tmp_10_36_0_1 to i64
  %video_addr_72 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_36_0_1
  %block_1_36 = load i32* %video_addr_72, align 4
  %tmp_10_36_2_1 = add i14 %phi_mul, 237
  %tmp_11_36_2_1 = zext i14 %tmp_10_36_2_1 to i64
  %video_addr_73 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_36_2_1
  %block_7_36 = load i32* %video_addr_73, align 4
  %tmp_74 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_36, i32 %block_7_36) nounwind
  %sob_x1_addr_73 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_35
  store i32 %tmp_74, i32* %sob_x1_addr_73, align 4
  %tmp_75 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_36, i32 %block_7_36) nounwind
  %sob_y1_addr_73 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_35
  store i32 %tmp_75, i32* %sob_y1_addr_73, align 4
  %tmp_10_37_0_1 = add i14 %phi_mul, 38
  %tmp_11_37_0_1 = zext i14 %tmp_10_37_0_1 to i64
  %video_addr_74 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_37_0_1
  %block_1_37 = load i32* %video_addr_74, align 4
  %tmp_10_37_2_1 = add i14 %phi_mul, 238
  %tmp_11_37_2_1 = zext i14 %tmp_10_37_2_1 to i64
  %video_addr_75 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_37_2_1
  %block_7_37 = load i32* %video_addr_75, align 4
  %tmp_76 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_37, i32 %block_7_37) nounwind
  %sob_x1_addr_75 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_36_0_1
  store i32 %tmp_76, i32* %sob_x1_addr_75, align 4
  %tmp_77 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_37, i32 %block_7_37) nounwind
  %sob_y1_addr_75 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_36_0_1
  store i32 %tmp_77, i32* %sob_y1_addr_75, align 4
  br label %40

; <label>:40                                      ; preds = %.preheader.preheader.36, %39
  %tmp_4_37 = add i14 %phi_mul, 38
  %tmp_5_37 = zext i14 %tmp_4_37 to i64
  br i1 %tmp, label %41, label %.preheader.preheader.38

; <label>:41                                      ; preds = %40
  %sob_x1_addr_76 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_37
  store i32 0, i32* %sob_x1_addr_76, align 4
  %sob_y1_addr_76 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_37
  store i32 0, i32* %sob_y1_addr_76, align 4
  %tmp_4_38 = add i14 %phi_mul, 39
  %tmp_5_38 = zext i14 %tmp_4_38 to i64
  %sob_x1_addr_78 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_38
  store i32 0, i32* %sob_x1_addr_78, align 4
  %sob_y1_addr_78 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_38
  store i32 0, i32* %sob_y1_addr_78, align 4
  br label %42

.preheader.preheader.38:                          ; preds = %40
  %tmp_10_38_0_1 = add i14 %phi_mul, 39
  %tmp_11_38_0_1 = zext i14 %tmp_10_38_0_1 to i64
  %video_addr_76 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_38_0_1
  %block_1_38 = load i32* %video_addr_76, align 4
  %tmp_10_38_2_1 = add i14 %phi_mul, 239
  %tmp_11_38_2_1 = zext i14 %tmp_10_38_2_1 to i64
  %video_addr_77 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_38_2_1
  %block_7_38 = load i32* %video_addr_77, align 4
  %tmp_78 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_38, i32 %block_7_38) nounwind
  %sob_x1_addr_77 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_37
  store i32 %tmp_78, i32* %sob_x1_addr_77, align 4
  %tmp_79 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_38, i32 %block_7_38) nounwind
  %sob_y1_addr_77 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_37
  store i32 %tmp_79, i32* %sob_y1_addr_77, align 4
  %tmp_10_39_0_1 = add i14 %phi_mul, 40
  %tmp_11_39_0_1 = zext i14 %tmp_10_39_0_1 to i64
  %video_addr_78 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_39_0_1
  %block_1_39 = load i32* %video_addr_78, align 4
  %tmp_10_39_2_1 = add i14 %phi_mul, 240
  %tmp_11_39_2_1 = zext i14 %tmp_10_39_2_1 to i64
  %video_addr_79 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_39_2_1
  %block_7_39 = load i32* %video_addr_79, align 4
  %tmp_80 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_39, i32 %block_7_39) nounwind
  %sob_x1_addr_79 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_38_0_1
  store i32 %tmp_80, i32* %sob_x1_addr_79, align 4
  %tmp_81 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_39, i32 %block_7_39) nounwind
  %sob_y1_addr_79 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_38_0_1
  store i32 %tmp_81, i32* %sob_y1_addr_79, align 4
  br label %42

; <label>:42                                      ; preds = %.preheader.preheader.38, %41
  %tmp_4_39 = add i14 %phi_mul, 40
  %tmp_5_39 = zext i14 %tmp_4_39 to i64
  br i1 %tmp, label %43, label %.preheader.preheader.40

; <label>:43                                      ; preds = %42
  %sob_x1_addr_80 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_39
  store i32 0, i32* %sob_x1_addr_80, align 4
  %sob_y1_addr_80 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_39
  store i32 0, i32* %sob_y1_addr_80, align 4
  %tmp_4_40 = add i14 %phi_mul, 41
  %tmp_5_40 = zext i14 %tmp_4_40 to i64
  %sob_x1_addr_82 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_40
  store i32 0, i32* %sob_x1_addr_82, align 4
  %sob_y1_addr_82 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_40
  store i32 0, i32* %sob_y1_addr_82, align 4
  br label %44

.preheader.preheader.40:                          ; preds = %42
  %tmp_10_40_0_1 = add i14 %phi_mul, 41
  %tmp_11_40_0_1 = zext i14 %tmp_10_40_0_1 to i64
  %video_addr_80 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_40_0_1
  %block_1_40 = load i32* %video_addr_80, align 4
  %tmp_10_40_2_1 = add i14 %phi_mul, 241
  %tmp_11_40_2_1 = zext i14 %tmp_10_40_2_1 to i64
  %video_addr_81 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_40_2_1
  %block_7_40 = load i32* %video_addr_81, align 4
  %tmp_82 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_40, i32 %block_7_40) nounwind
  %sob_x1_addr_81 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_39
  store i32 %tmp_82, i32* %sob_x1_addr_81, align 4
  %tmp_83 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_40, i32 %block_7_40) nounwind
  %sob_y1_addr_81 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_39
  store i32 %tmp_83, i32* %sob_y1_addr_81, align 4
  %tmp_10_41_0_1 = add i14 %phi_mul, 42
  %tmp_11_41_0_1 = zext i14 %tmp_10_41_0_1 to i64
  %video_addr_82 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_41_0_1
  %block_1_41 = load i32* %video_addr_82, align 4
  %tmp_10_41_2_1 = add i14 %phi_mul, 242
  %tmp_11_41_2_1 = zext i14 %tmp_10_41_2_1 to i64
  %video_addr_83 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_41_2_1
  %block_7_41 = load i32* %video_addr_83, align 4
  %tmp_84 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_41, i32 %block_7_41) nounwind
  %sob_x1_addr_83 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_40_0_1
  store i32 %tmp_84, i32* %sob_x1_addr_83, align 4
  %tmp_85 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_41, i32 %block_7_41) nounwind
  %sob_y1_addr_83 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_40_0_1
  store i32 %tmp_85, i32* %sob_y1_addr_83, align 4
  br label %44

; <label>:44                                      ; preds = %.preheader.preheader.40, %43
  %tmp_4_41 = add i14 %phi_mul, 42
  %tmp_5_41 = zext i14 %tmp_4_41 to i64
  br i1 %tmp, label %45, label %.preheader.preheader.42

; <label>:45                                      ; preds = %44
  %sob_x1_addr_84 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_41
  store i32 0, i32* %sob_x1_addr_84, align 4
  %sob_y1_addr_84 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_41
  store i32 0, i32* %sob_y1_addr_84, align 4
  %tmp_4_42 = add i14 %phi_mul, 43
  %tmp_5_42 = zext i14 %tmp_4_42 to i64
  %sob_x1_addr_86 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_42
  store i32 0, i32* %sob_x1_addr_86, align 4
  %sob_y1_addr_86 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_42
  store i32 0, i32* %sob_y1_addr_86, align 4
  br label %46

.preheader.preheader.42:                          ; preds = %44
  %tmp_10_42_0_1 = add i14 %phi_mul, 43
  %tmp_11_42_0_1 = zext i14 %tmp_10_42_0_1 to i64
  %video_addr_84 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_42_0_1
  %block_1_42 = load i32* %video_addr_84, align 4
  %tmp_10_42_2_1 = add i14 %phi_mul, 243
  %tmp_11_42_2_1 = zext i14 %tmp_10_42_2_1 to i64
  %video_addr_85 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_42_2_1
  %block_7_42 = load i32* %video_addr_85, align 4
  %tmp_86 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_42, i32 %block_7_42) nounwind
  %sob_x1_addr_85 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_41
  store i32 %tmp_86, i32* %sob_x1_addr_85, align 4
  %tmp_87 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_42, i32 %block_7_42) nounwind
  %sob_y1_addr_85 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_41
  store i32 %tmp_87, i32* %sob_y1_addr_85, align 4
  %tmp_10_43_0_1 = add i14 %phi_mul, 44
  %tmp_11_43_0_1 = zext i14 %tmp_10_43_0_1 to i64
  %video_addr_86 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_43_0_1
  %block_1_43 = load i32* %video_addr_86, align 4
  %tmp_10_43_2_1 = add i14 %phi_mul, 244
  %tmp_11_43_2_1 = zext i14 %tmp_10_43_2_1 to i64
  %video_addr_87 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_43_2_1
  %block_7_43 = load i32* %video_addr_87, align 4
  %tmp_88 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_43, i32 %block_7_43) nounwind
  %sob_x1_addr_87 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_42_0_1
  store i32 %tmp_88, i32* %sob_x1_addr_87, align 4
  %tmp_89 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_43, i32 %block_7_43) nounwind
  %sob_y1_addr_87 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_42_0_1
  store i32 %tmp_89, i32* %sob_y1_addr_87, align 4
  br label %46

; <label>:46                                      ; preds = %.preheader.preheader.42, %45
  %tmp_4_43 = add i14 %phi_mul, 44
  %tmp_5_43 = zext i14 %tmp_4_43 to i64
  br i1 %tmp, label %47, label %.preheader.preheader.44

; <label>:47                                      ; preds = %46
  %sob_x1_addr_88 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_43
  store i32 0, i32* %sob_x1_addr_88, align 4
  %sob_y1_addr_88 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_43
  store i32 0, i32* %sob_y1_addr_88, align 4
  %tmp_4_44 = add i14 %phi_mul, 45
  %tmp_5_44 = zext i14 %tmp_4_44 to i64
  %sob_x1_addr_90 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_44
  store i32 0, i32* %sob_x1_addr_90, align 4
  %sob_y1_addr_90 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_44
  store i32 0, i32* %sob_y1_addr_90, align 4
  br label %48

.preheader.preheader.44:                          ; preds = %46
  %tmp_10_44_0_1 = add i14 %phi_mul, 45
  %tmp_11_44_0_1 = zext i14 %tmp_10_44_0_1 to i64
  %video_addr_88 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_44_0_1
  %block_1_44 = load i32* %video_addr_88, align 4
  %tmp_10_44_2_1 = add i14 %phi_mul, 245
  %tmp_11_44_2_1 = zext i14 %tmp_10_44_2_1 to i64
  %video_addr_89 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_44_2_1
  %block_7_44 = load i32* %video_addr_89, align 4
  %tmp_90 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_44, i32 %block_7_44) nounwind
  %sob_x1_addr_89 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_43
  store i32 %tmp_90, i32* %sob_x1_addr_89, align 4
  %tmp_91 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_44, i32 %block_7_44) nounwind
  %sob_y1_addr_89 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_43
  store i32 %tmp_91, i32* %sob_y1_addr_89, align 4
  %tmp_10_45_0_1 = add i14 %phi_mul, 46
  %tmp_11_45_0_1 = zext i14 %tmp_10_45_0_1 to i64
  %video_addr_90 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_45_0_1
  %block_1_45 = load i32* %video_addr_90, align 4
  %tmp_10_45_2_1 = add i14 %phi_mul, 246
  %tmp_11_45_2_1 = zext i14 %tmp_10_45_2_1 to i64
  %video_addr_91 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_45_2_1
  %block_7_45 = load i32* %video_addr_91, align 4
  %tmp_92 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_45, i32 %block_7_45) nounwind
  %sob_x1_addr_91 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_44_0_1
  store i32 %tmp_92, i32* %sob_x1_addr_91, align 4
  %tmp_93 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_45, i32 %block_7_45) nounwind
  %sob_y1_addr_91 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_44_0_1
  store i32 %tmp_93, i32* %sob_y1_addr_91, align 4
  br label %48

; <label>:48                                      ; preds = %.preheader.preheader.44, %47
  %tmp_4_45 = add i14 %phi_mul, 46
  %tmp_5_45 = zext i14 %tmp_4_45 to i64
  br i1 %tmp, label %49, label %.preheader.preheader.46

; <label>:49                                      ; preds = %48
  %sob_x1_addr_92 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_45
  store i32 0, i32* %sob_x1_addr_92, align 4
  %sob_y1_addr_92 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_45
  store i32 0, i32* %sob_y1_addr_92, align 4
  %tmp_4_46 = add i14 %phi_mul, 47
  %tmp_5_46 = zext i14 %tmp_4_46 to i64
  %sob_x1_addr_94 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_46
  store i32 0, i32* %sob_x1_addr_94, align 4
  %sob_y1_addr_94 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_46
  store i32 0, i32* %sob_y1_addr_94, align 4
  br label %50

.preheader.preheader.46:                          ; preds = %48
  %tmp_10_46_0_1 = add i14 %phi_mul, 47
  %tmp_11_46_0_1 = zext i14 %tmp_10_46_0_1 to i64
  %video_addr_92 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_46_0_1
  %block_1_46 = load i32* %video_addr_92, align 4
  %tmp_10_46_2_1 = add i14 %phi_mul, 247
  %tmp_11_46_2_1 = zext i14 %tmp_10_46_2_1 to i64
  %video_addr_93 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_46_2_1
  %block_7_46 = load i32* %video_addr_93, align 4
  %tmp_94 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_46, i32 %block_7_46) nounwind
  %sob_x1_addr_93 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_45
  store i32 %tmp_94, i32* %sob_x1_addr_93, align 4
  %tmp_95 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_46, i32 %block_7_46) nounwind
  %sob_y1_addr_93 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_45
  store i32 %tmp_95, i32* %sob_y1_addr_93, align 4
  %tmp_10_47_0_1 = add i14 %phi_mul, 48
  %tmp_11_47_0_1 = zext i14 %tmp_10_47_0_1 to i64
  %video_addr_94 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_47_0_1
  %block_1_47 = load i32* %video_addr_94, align 4
  %tmp_10_47_2_1 = add i14 %phi_mul, 248
  %tmp_11_47_2_1 = zext i14 %tmp_10_47_2_1 to i64
  %video_addr_95 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_47_2_1
  %block_7_47 = load i32* %video_addr_95, align 4
  %tmp_96 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_47, i32 %block_7_47) nounwind
  %sob_x1_addr_95 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_46_0_1
  store i32 %tmp_96, i32* %sob_x1_addr_95, align 4
  %tmp_97 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_47, i32 %block_7_47) nounwind
  %sob_y1_addr_95 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_46_0_1
  store i32 %tmp_97, i32* %sob_y1_addr_95, align 4
  br label %50

; <label>:50                                      ; preds = %.preheader.preheader.46, %49
  %tmp_4_47 = add i14 %phi_mul, 48
  %tmp_5_47 = zext i14 %tmp_4_47 to i64
  br i1 %tmp, label %51, label %.preheader.preheader.48

; <label>:51                                      ; preds = %50
  %sob_x1_addr_96 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_47
  store i32 0, i32* %sob_x1_addr_96, align 4
  %sob_y1_addr_96 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_47
  store i32 0, i32* %sob_y1_addr_96, align 4
  %tmp_4_48 = add i14 %phi_mul, 49
  %tmp_5_48 = zext i14 %tmp_4_48 to i64
  %sob_x1_addr_98 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_48
  store i32 0, i32* %sob_x1_addr_98, align 4
  %sob_y1_addr_98 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_48
  store i32 0, i32* %sob_y1_addr_98, align 4
  br label %52

.preheader.preheader.48:                          ; preds = %50
  %tmp_10_48_0_1 = add i14 %phi_mul, 49
  %tmp_11_48_0_1 = zext i14 %tmp_10_48_0_1 to i64
  %video_addr_96 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_48_0_1
  %block_1_48 = load i32* %video_addr_96, align 4
  %tmp_10_48_2_1 = add i14 %phi_mul, 249
  %tmp_11_48_2_1 = zext i14 %tmp_10_48_2_1 to i64
  %video_addr_97 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_48_2_1
  %block_7_48 = load i32* %video_addr_97, align 4
  %tmp_98 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_48, i32 %block_7_48) nounwind
  %sob_x1_addr_97 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_47
  store i32 %tmp_98, i32* %sob_x1_addr_97, align 4
  %tmp_99 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_48, i32 %block_7_48) nounwind
  %sob_y1_addr_97 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_47
  store i32 %tmp_99, i32* %sob_y1_addr_97, align 4
  %tmp_10_49_0_1 = add i14 %phi_mul, 50
  %tmp_11_49_0_1 = zext i14 %tmp_10_49_0_1 to i64
  %video_addr_98 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_49_0_1
  %block_1_49 = load i32* %video_addr_98, align 4
  %tmp_10_49_2_1 = add i14 %phi_mul, 250
  %tmp_11_49_2_1 = zext i14 %tmp_10_49_2_1 to i64
  %video_addr_99 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_49_2_1
  %block_7_49 = load i32* %video_addr_99, align 4
  %tmp_100 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_49, i32 %block_7_49) nounwind
  %sob_x1_addr_99 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_48_0_1
  store i32 %tmp_100, i32* %sob_x1_addr_99, align 4
  %tmp_101 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_49, i32 %block_7_49) nounwind
  %sob_y1_addr_99 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_48_0_1
  store i32 %tmp_101, i32* %sob_y1_addr_99, align 4
  br label %52

; <label>:52                                      ; preds = %.preheader.preheader.48, %51
  %tmp_4_49 = add i14 %phi_mul, 50
  %tmp_5_49 = zext i14 %tmp_4_49 to i64
  br i1 %tmp, label %53, label %.preheader.preheader.50

; <label>:53                                      ; preds = %52
  %sob_x1_addr_100 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_49
  store i32 0, i32* %sob_x1_addr_100, align 4
  %sob_y1_addr_100 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_49
  store i32 0, i32* %sob_y1_addr_100, align 4
  %tmp_4_50 = add i14 %phi_mul, 51
  %tmp_5_50 = zext i14 %tmp_4_50 to i64
  %sob_x1_addr_102 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_50
  store i32 0, i32* %sob_x1_addr_102, align 4
  %sob_y1_addr_102 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_50
  store i32 0, i32* %sob_y1_addr_102, align 4
  br label %54

.preheader.preheader.50:                          ; preds = %52
  %tmp_10_50_0_1 = add i14 %phi_mul, 51
  %tmp_11_50_0_1 = zext i14 %tmp_10_50_0_1 to i64
  %video_addr_100 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_50_0_1
  %block_1_50 = load i32* %video_addr_100, align 4
  %tmp_10_50_2_1 = add i14 %phi_mul, 251
  %tmp_11_50_2_1 = zext i14 %tmp_10_50_2_1 to i64
  %video_addr_101 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_50_2_1
  %block_7_50 = load i32* %video_addr_101, align 4
  %tmp_102 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_50, i32 %block_7_50) nounwind
  %sob_x1_addr_101 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_49
  store i32 %tmp_102, i32* %sob_x1_addr_101, align 4
  %tmp_103 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_50, i32 %block_7_50) nounwind
  %sob_y1_addr_101 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_49
  store i32 %tmp_103, i32* %sob_y1_addr_101, align 4
  %tmp_10_51_0_1 = add i14 %phi_mul, 52
  %tmp_11_51_0_1 = zext i14 %tmp_10_51_0_1 to i64
  %video_addr_102 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_51_0_1
  %block_1_51 = load i32* %video_addr_102, align 4
  %tmp_10_51_2_1 = add i14 %phi_mul, 252
  %tmp_11_51_2_1 = zext i14 %tmp_10_51_2_1 to i64
  %video_addr_103 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_51_2_1
  %block_7_51 = load i32* %video_addr_103, align 4
  %tmp_104 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_51, i32 %block_7_51) nounwind
  %sob_x1_addr_103 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_50_0_1
  store i32 %tmp_104, i32* %sob_x1_addr_103, align 4
  %tmp_105 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_51, i32 %block_7_51) nounwind
  %sob_y1_addr_103 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_50_0_1
  store i32 %tmp_105, i32* %sob_y1_addr_103, align 4
  br label %54

; <label>:54                                      ; preds = %.preheader.preheader.50, %53
  %tmp_4_51 = add i14 %phi_mul, 52
  %tmp_5_51 = zext i14 %tmp_4_51 to i64
  br i1 %tmp, label %55, label %.preheader.preheader.52

; <label>:55                                      ; preds = %54
  %sob_x1_addr_104 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_51
  store i32 0, i32* %sob_x1_addr_104, align 4
  %sob_y1_addr_104 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_51
  store i32 0, i32* %sob_y1_addr_104, align 4
  %tmp_4_52 = add i14 %phi_mul, 53
  %tmp_5_52 = zext i14 %tmp_4_52 to i64
  %sob_x1_addr_106 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_52
  store i32 0, i32* %sob_x1_addr_106, align 4
  %sob_y1_addr_106 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_52
  store i32 0, i32* %sob_y1_addr_106, align 4
  br label %56

.preheader.preheader.52:                          ; preds = %54
  %tmp_10_52_0_1 = add i14 %phi_mul, 53
  %tmp_11_52_0_1 = zext i14 %tmp_10_52_0_1 to i64
  %video_addr_104 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_52_0_1
  %block_1_52 = load i32* %video_addr_104, align 4
  %tmp_10_52_2_1 = add i14 %phi_mul, 253
  %tmp_11_52_2_1 = zext i14 %tmp_10_52_2_1 to i64
  %video_addr_105 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_52_2_1
  %block_7_52 = load i32* %video_addr_105, align 4
  %tmp_106 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_52, i32 %block_7_52) nounwind
  %sob_x1_addr_105 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_51
  store i32 %tmp_106, i32* %sob_x1_addr_105, align 4
  %tmp_107 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_52, i32 %block_7_52) nounwind
  %sob_y1_addr_105 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_51
  store i32 %tmp_107, i32* %sob_y1_addr_105, align 4
  %tmp_10_53_0_1 = add i14 %phi_mul, 54
  %tmp_11_53_0_1 = zext i14 %tmp_10_53_0_1 to i64
  %video_addr_106 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_53_0_1
  %block_1_53 = load i32* %video_addr_106, align 4
  %tmp_10_53_2_1 = add i14 %phi_mul, 254
  %tmp_11_53_2_1 = zext i14 %tmp_10_53_2_1 to i64
  %video_addr_107 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_53_2_1
  %block_7_53 = load i32* %video_addr_107, align 4
  %tmp_108 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_53, i32 %block_7_53) nounwind
  %sob_x1_addr_107 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_52_0_1
  store i32 %tmp_108, i32* %sob_x1_addr_107, align 4
  %tmp_109 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_53, i32 %block_7_53) nounwind
  %sob_y1_addr_107 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_52_0_1
  store i32 %tmp_109, i32* %sob_y1_addr_107, align 4
  br label %56

; <label>:56                                      ; preds = %.preheader.preheader.52, %55
  %tmp_4_53 = add i14 %phi_mul, 54
  %tmp_5_53 = zext i14 %tmp_4_53 to i64
  br i1 %tmp, label %57, label %.preheader.preheader.54

; <label>:57                                      ; preds = %56
  %sob_x1_addr_108 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_53
  store i32 0, i32* %sob_x1_addr_108, align 4
  %sob_y1_addr_108 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_53
  store i32 0, i32* %sob_y1_addr_108, align 4
  %tmp_4_54 = add i14 %phi_mul, 55
  %tmp_5_54 = zext i14 %tmp_4_54 to i64
  %sob_x1_addr_110 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_54
  store i32 0, i32* %sob_x1_addr_110, align 4
  %sob_y1_addr_110 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_54
  store i32 0, i32* %sob_y1_addr_110, align 4
  br label %58

.preheader.preheader.54:                          ; preds = %56
  %tmp_10_54_0_1 = add i14 %phi_mul, 55
  %tmp_11_54_0_1 = zext i14 %tmp_10_54_0_1 to i64
  %video_addr_108 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_54_0_1
  %block_1_54 = load i32* %video_addr_108, align 4
  %tmp_10_54_2_1 = add i14 %phi_mul, 255
  %tmp_11_54_2_1 = zext i14 %tmp_10_54_2_1 to i64
  %video_addr_109 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_54_2_1
  %block_7_54 = load i32* %video_addr_109, align 4
  %tmp_110 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_54, i32 %block_7_54) nounwind
  %sob_x1_addr_109 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_53
  store i32 %tmp_110, i32* %sob_x1_addr_109, align 4
  %tmp_111 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_54, i32 %block_7_54) nounwind
  %sob_y1_addr_109 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_53
  store i32 %tmp_111, i32* %sob_y1_addr_109, align 4
  %tmp_10_55_0_1 = add i14 %phi_mul, 56
  %tmp_11_55_0_1 = zext i14 %tmp_10_55_0_1 to i64
  %video_addr_110 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_55_0_1
  %block_1_55 = load i32* %video_addr_110, align 4
  %tmp_10_55_2_1 = add i14 %phi_mul, 256
  %tmp_11_55_2_1 = zext i14 %tmp_10_55_2_1 to i64
  %video_addr_111 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_55_2_1
  %block_7_55 = load i32* %video_addr_111, align 4
  %tmp_112 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_55, i32 %block_7_55) nounwind
  %sob_x1_addr_111 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_54_0_1
  store i32 %tmp_112, i32* %sob_x1_addr_111, align 4
  %tmp_113 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_55, i32 %block_7_55) nounwind
  %sob_y1_addr_111 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_54_0_1
  store i32 %tmp_113, i32* %sob_y1_addr_111, align 4
  br label %58

; <label>:58                                      ; preds = %.preheader.preheader.54, %57
  %tmp_4_55 = add i14 %phi_mul, 56
  %tmp_5_55 = zext i14 %tmp_4_55 to i64
  br i1 %tmp, label %59, label %.preheader.preheader.56

; <label>:59                                      ; preds = %58
  %sob_x1_addr_112 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_55
  store i32 0, i32* %sob_x1_addr_112, align 4
  %sob_y1_addr_112 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_55
  store i32 0, i32* %sob_y1_addr_112, align 4
  %tmp_4_56 = add i14 %phi_mul, 57
  %tmp_5_56 = zext i14 %tmp_4_56 to i64
  %sob_x1_addr_114 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_56
  store i32 0, i32* %sob_x1_addr_114, align 4
  %sob_y1_addr_114 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_56
  store i32 0, i32* %sob_y1_addr_114, align 4
  br label %60

.preheader.preheader.56:                          ; preds = %58
  %tmp_10_56_0_1 = add i14 %phi_mul, 57
  %tmp_11_56_0_1 = zext i14 %tmp_10_56_0_1 to i64
  %video_addr_112 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_56_0_1
  %block_1_56 = load i32* %video_addr_112, align 4
  %tmp_10_56_2_1 = add i14 %phi_mul, 257
  %tmp_11_56_2_1 = zext i14 %tmp_10_56_2_1 to i64
  %video_addr_113 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_56_2_1
  %block_7_56 = load i32* %video_addr_113, align 4
  %tmp_114 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_56, i32 %block_7_56) nounwind
  %sob_x1_addr_113 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_55
  store i32 %tmp_114, i32* %sob_x1_addr_113, align 4
  %tmp_115 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_56, i32 %block_7_56) nounwind
  %sob_y1_addr_113 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_55
  store i32 %tmp_115, i32* %sob_y1_addr_113, align 4
  %tmp_10_57_0_1 = add i14 %phi_mul, 58
  %tmp_11_57_0_1 = zext i14 %tmp_10_57_0_1 to i64
  %video_addr_114 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_57_0_1
  %block_1_57 = load i32* %video_addr_114, align 4
  %tmp_10_57_2_1 = add i14 %phi_mul, 258
  %tmp_11_57_2_1 = zext i14 %tmp_10_57_2_1 to i64
  %video_addr_115 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_57_2_1
  %block_7_57 = load i32* %video_addr_115, align 4
  %tmp_116 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_57, i32 %block_7_57) nounwind
  %sob_x1_addr_115 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_56_0_1
  store i32 %tmp_116, i32* %sob_x1_addr_115, align 4
  %tmp_117 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_57, i32 %block_7_57) nounwind
  %sob_y1_addr_115 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_56_0_1
  store i32 %tmp_117, i32* %sob_y1_addr_115, align 4
  br label %60

; <label>:60                                      ; preds = %.preheader.preheader.56, %59
  %tmp_4_57 = add i14 %phi_mul, 58
  %tmp_5_57 = zext i14 %tmp_4_57 to i64
  br i1 %tmp, label %61, label %.preheader.preheader.58

; <label>:61                                      ; preds = %60
  %sob_x1_addr_116 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_57
  store i32 0, i32* %sob_x1_addr_116, align 4
  %sob_y1_addr_116 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_57
  store i32 0, i32* %sob_y1_addr_116, align 4
  %tmp_4_58 = add i14 %phi_mul, 59
  %tmp_5_58 = zext i14 %tmp_4_58 to i64
  %sob_x1_addr_118 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_58
  store i32 0, i32* %sob_x1_addr_118, align 4
  %sob_y1_addr_118 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_58
  store i32 0, i32* %sob_y1_addr_118, align 4
  br label %62

.preheader.preheader.58:                          ; preds = %60
  %tmp_10_58_0_1 = add i14 %phi_mul, 59
  %tmp_11_58_0_1 = zext i14 %tmp_10_58_0_1 to i64
  %video_addr_116 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_58_0_1
  %block_1_58 = load i32* %video_addr_116, align 4
  %tmp_10_58_2_1 = add i14 %phi_mul, 259
  %tmp_11_58_2_1 = zext i14 %tmp_10_58_2_1 to i64
  %video_addr_117 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_58_2_1
  %block_7_58 = load i32* %video_addr_117, align 4
  %tmp_118 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_58, i32 %block_7_58) nounwind
  %sob_x1_addr_117 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_57
  store i32 %tmp_118, i32* %sob_x1_addr_117, align 4
  %tmp_119 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_58, i32 %block_7_58) nounwind
  %sob_y1_addr_117 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_57
  store i32 %tmp_119, i32* %sob_y1_addr_117, align 4
  %tmp_10_59_0_1 = add i14 %phi_mul, 60
  %tmp_11_59_0_1 = zext i14 %tmp_10_59_0_1 to i64
  %video_addr_118 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_59_0_1
  %block_1_59 = load i32* %video_addr_118, align 4
  %tmp_10_59_2_1 = add i14 %phi_mul, 260
  %tmp_11_59_2_1 = zext i14 %tmp_10_59_2_1 to i64
  %video_addr_119 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_59_2_1
  %block_7_59 = load i32* %video_addr_119, align 4
  %tmp_120 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_59, i32 %block_7_59) nounwind
  %sob_x1_addr_119 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_58_0_1
  store i32 %tmp_120, i32* %sob_x1_addr_119, align 4
  %tmp_121 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_59, i32 %block_7_59) nounwind
  %sob_y1_addr_119 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_58_0_1
  store i32 %tmp_121, i32* %sob_y1_addr_119, align 4
  br label %62

; <label>:62                                      ; preds = %.preheader.preheader.58, %61
  %tmp_4_59 = add i14 %phi_mul, 60
  %tmp_5_59 = zext i14 %tmp_4_59 to i64
  br i1 %tmp, label %63, label %.preheader.preheader.60

; <label>:63                                      ; preds = %62
  %sob_x1_addr_120 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_59
  store i32 0, i32* %sob_x1_addr_120, align 4
  %sob_y1_addr_120 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_59
  store i32 0, i32* %sob_y1_addr_120, align 4
  %tmp_4_60 = add i14 %phi_mul, 61
  %tmp_5_60 = zext i14 %tmp_4_60 to i64
  %sob_x1_addr_122 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_60
  store i32 0, i32* %sob_x1_addr_122, align 4
  %sob_y1_addr_122 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_60
  store i32 0, i32* %sob_y1_addr_122, align 4
  br label %64

.preheader.preheader.60:                          ; preds = %62
  %tmp_10_60_0_1 = add i14 %phi_mul, 61
  %tmp_11_60_0_1 = zext i14 %tmp_10_60_0_1 to i64
  %video_addr_120 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_60_0_1
  %block_1_60 = load i32* %video_addr_120, align 4
  %tmp_10_60_2_1 = add i14 %phi_mul, 261
  %tmp_11_60_2_1 = zext i14 %tmp_10_60_2_1 to i64
  %video_addr_121 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_60_2_1
  %block_7_60 = load i32* %video_addr_121, align 4
  %tmp_122 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_60, i32 %block_7_60) nounwind
  %sob_x1_addr_121 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_59
  store i32 %tmp_122, i32* %sob_x1_addr_121, align 4
  %tmp_123 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_60, i32 %block_7_60) nounwind
  %sob_y1_addr_121 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_59
  store i32 %tmp_123, i32* %sob_y1_addr_121, align 4
  %tmp_10_61_0_1 = add i14 %phi_mul, 62
  %tmp_11_61_0_1 = zext i14 %tmp_10_61_0_1 to i64
  %video_addr_122 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_61_0_1
  %block_1_61 = load i32* %video_addr_122, align 4
  %tmp_10_61_2_1 = add i14 %phi_mul, 262
  %tmp_11_61_2_1 = zext i14 %tmp_10_61_2_1 to i64
  %video_addr_123 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_61_2_1
  %block_7_61 = load i32* %video_addr_123, align 4
  %tmp_124 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_61, i32 %block_7_61) nounwind
  %sob_x1_addr_123 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_60_0_1
  store i32 %tmp_124, i32* %sob_x1_addr_123, align 4
  %tmp_125 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_61, i32 %block_7_61) nounwind
  %sob_y1_addr_123 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_60_0_1
  store i32 %tmp_125, i32* %sob_y1_addr_123, align 4
  br label %64

; <label>:64                                      ; preds = %.preheader.preheader.60, %63
  %tmp_4_61 = add i14 %phi_mul, 62
  %tmp_5_61 = zext i14 %tmp_4_61 to i64
  br i1 %tmp, label %65, label %.preheader.preheader.62

; <label>:65                                      ; preds = %64
  %sob_x1_addr_124 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_61
  store i32 0, i32* %sob_x1_addr_124, align 4
  %sob_y1_addr_124 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_61
  store i32 0, i32* %sob_y1_addr_124, align 4
  %tmp_4_62 = add i14 %phi_mul, 63
  %tmp_5_62 = zext i14 %tmp_4_62 to i64
  %sob_x1_addr_126 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_62
  store i32 0, i32* %sob_x1_addr_126, align 4
  %sob_y1_addr_126 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_62
  store i32 0, i32* %sob_y1_addr_126, align 4
  br label %66

.preheader.preheader.62:                          ; preds = %64
  %tmp_10_62_0_1 = add i14 %phi_mul, 63
  %tmp_11_62_0_1 = zext i14 %tmp_10_62_0_1 to i64
  %video_addr_124 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_62_0_1
  %block_1_62 = load i32* %video_addr_124, align 4
  %tmp_10_62_2_1 = add i14 %phi_mul, 263
  %tmp_11_62_2_1 = zext i14 %tmp_10_62_2_1 to i64
  %video_addr_125 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_62_2_1
  %block_7_62 = load i32* %video_addr_125, align 4
  %tmp_126 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_62, i32 %block_7_62) nounwind
  %sob_x1_addr_125 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_61
  store i32 %tmp_126, i32* %sob_x1_addr_125, align 4
  %tmp_127 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_62, i32 %block_7_62) nounwind
  %sob_y1_addr_125 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_61
  store i32 %tmp_127, i32* %sob_y1_addr_125, align 4
  %tmp_10_63_0_1 = add i14 %phi_mul, 64
  %tmp_11_63_0_1 = zext i14 %tmp_10_63_0_1 to i64
  %video_addr_126 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_63_0_1
  %block_1_63 = load i32* %video_addr_126, align 4
  %tmp_10_63_2_1 = add i14 %phi_mul, 264
  %tmp_11_63_2_1 = zext i14 %tmp_10_63_2_1 to i64
  %video_addr_127 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_63_2_1
  %block_7_63 = load i32* %video_addr_127, align 4
  %tmp_128 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_63, i32 %block_7_63) nounwind
  %sob_x1_addr_127 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_62_0_1
  store i32 %tmp_128, i32* %sob_x1_addr_127, align 4
  %tmp_129 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_63, i32 %block_7_63) nounwind
  %sob_y1_addr_127 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_62_0_1
  store i32 %tmp_129, i32* %sob_y1_addr_127, align 4
  br label %66

; <label>:66                                      ; preds = %.preheader.preheader.62, %65
  %tmp_4_63 = add i14 %phi_mul, 64
  %tmp_5_63 = zext i14 %tmp_4_63 to i64
  br i1 %tmp, label %67, label %.preheader.preheader.64

; <label>:67                                      ; preds = %66
  %sob_x1_addr_128 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_63
  store i32 0, i32* %sob_x1_addr_128, align 4
  %sob_y1_addr_128 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_63
  store i32 0, i32* %sob_y1_addr_128, align 4
  %tmp_4_64 = add i14 %phi_mul, 65
  %tmp_5_64 = zext i14 %tmp_4_64 to i64
  %sob_x1_addr_130 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_64
  store i32 0, i32* %sob_x1_addr_130, align 4
  %sob_y1_addr_130 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_64
  store i32 0, i32* %sob_y1_addr_130, align 4
  br label %68

.preheader.preheader.64:                          ; preds = %66
  %tmp_10_64_0_1 = add i14 %phi_mul, 65
  %tmp_11_64_0_1 = zext i14 %tmp_10_64_0_1 to i64
  %video_addr_128 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_64_0_1
  %block_1_64 = load i32* %video_addr_128, align 4
  %tmp_10_64_2_1 = add i14 %phi_mul, 265
  %tmp_11_64_2_1 = zext i14 %tmp_10_64_2_1 to i64
  %video_addr_129 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_64_2_1
  %block_7_64 = load i32* %video_addr_129, align 4
  %tmp_130 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_64, i32 %block_7_64) nounwind
  %sob_x1_addr_129 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_63
  store i32 %tmp_130, i32* %sob_x1_addr_129, align 4
  %tmp_131 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_64, i32 %block_7_64) nounwind
  %sob_y1_addr_129 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_63
  store i32 %tmp_131, i32* %sob_y1_addr_129, align 4
  %tmp_10_65_0_1 = add i14 %phi_mul, 66
  %tmp_11_65_0_1 = zext i14 %tmp_10_65_0_1 to i64
  %video_addr_130 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_65_0_1
  %block_1_65 = load i32* %video_addr_130, align 4
  %tmp_10_65_2_1 = add i14 %phi_mul, 266
  %tmp_11_65_2_1 = zext i14 %tmp_10_65_2_1 to i64
  %video_addr_131 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_65_2_1
  %block_7_65 = load i32* %video_addr_131, align 4
  %tmp_132 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_65, i32 %block_7_65) nounwind
  %sob_x1_addr_131 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_64_0_1
  store i32 %tmp_132, i32* %sob_x1_addr_131, align 4
  %tmp_133 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_65, i32 %block_7_65) nounwind
  %sob_y1_addr_131 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_64_0_1
  store i32 %tmp_133, i32* %sob_y1_addr_131, align 4
  br label %68

; <label>:68                                      ; preds = %.preheader.preheader.64, %67
  %tmp_4_65 = add i14 %phi_mul, 66
  %tmp_5_65 = zext i14 %tmp_4_65 to i64
  br i1 %tmp, label %69, label %.preheader.preheader.66

; <label>:69                                      ; preds = %68
  %sob_x1_addr_132 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_65
  store i32 0, i32* %sob_x1_addr_132, align 4
  %sob_y1_addr_132 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_65
  store i32 0, i32* %sob_y1_addr_132, align 4
  %tmp_4_66 = add i14 %phi_mul, 67
  %tmp_5_66 = zext i14 %tmp_4_66 to i64
  %sob_x1_addr_134 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_66
  store i32 0, i32* %sob_x1_addr_134, align 4
  %sob_y1_addr_134 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_66
  store i32 0, i32* %sob_y1_addr_134, align 4
  br label %70

.preheader.preheader.66:                          ; preds = %68
  %tmp_10_66_0_1 = add i14 %phi_mul, 67
  %tmp_11_66_0_1 = zext i14 %tmp_10_66_0_1 to i64
  %video_addr_132 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_66_0_1
  %block_1_66 = load i32* %video_addr_132, align 4
  %tmp_10_66_2_1 = add i14 %phi_mul, 267
  %tmp_11_66_2_1 = zext i14 %tmp_10_66_2_1 to i64
  %video_addr_133 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_66_2_1
  %block_7_66 = load i32* %video_addr_133, align 4
  %tmp_134 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_66, i32 %block_7_66) nounwind
  %sob_x1_addr_133 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_65
  store i32 %tmp_134, i32* %sob_x1_addr_133, align 4
  %tmp_135 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_66, i32 %block_7_66) nounwind
  %sob_y1_addr_133 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_65
  store i32 %tmp_135, i32* %sob_y1_addr_133, align 4
  %tmp_10_67_0_1 = add i14 %phi_mul, 68
  %tmp_11_67_0_1 = zext i14 %tmp_10_67_0_1 to i64
  %video_addr_134 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_67_0_1
  %block_1_67 = load i32* %video_addr_134, align 4
  %tmp_10_67_2_1 = add i14 %phi_mul, 268
  %tmp_11_67_2_1 = zext i14 %tmp_10_67_2_1 to i64
  %video_addr_135 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_67_2_1
  %block_7_67 = load i32* %video_addr_135, align 4
  %tmp_136 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_67, i32 %block_7_67) nounwind
  %sob_x1_addr_135 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_66_0_1
  store i32 %tmp_136, i32* %sob_x1_addr_135, align 4
  %tmp_137 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_67, i32 %block_7_67) nounwind
  %sob_y1_addr_135 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_66_0_1
  store i32 %tmp_137, i32* %sob_y1_addr_135, align 4
  br label %70

; <label>:70                                      ; preds = %.preheader.preheader.66, %69
  %tmp_4_67 = add i14 %phi_mul, 68
  %tmp_5_67 = zext i14 %tmp_4_67 to i64
  br i1 %tmp, label %71, label %.preheader.preheader.68

; <label>:71                                      ; preds = %70
  %sob_x1_addr_136 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_67
  store i32 0, i32* %sob_x1_addr_136, align 4
  %sob_y1_addr_136 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_67
  store i32 0, i32* %sob_y1_addr_136, align 4
  %tmp_4_68 = add i14 %phi_mul, 69
  %tmp_5_68 = zext i14 %tmp_4_68 to i64
  %sob_x1_addr_138 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_68
  store i32 0, i32* %sob_x1_addr_138, align 4
  %sob_y1_addr_138 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_68
  store i32 0, i32* %sob_y1_addr_138, align 4
  br label %72

.preheader.preheader.68:                          ; preds = %70
  %tmp_10_68_0_1 = add i14 %phi_mul, 69
  %tmp_11_68_0_1 = zext i14 %tmp_10_68_0_1 to i64
  %video_addr_136 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_68_0_1
  %block_1_68 = load i32* %video_addr_136, align 4
  %tmp_10_68_2_1 = add i14 %phi_mul, 269
  %tmp_11_68_2_1 = zext i14 %tmp_10_68_2_1 to i64
  %video_addr_137 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_68_2_1
  %block_7_68 = load i32* %video_addr_137, align 4
  %tmp_138 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_68, i32 %block_7_68) nounwind
  %sob_x1_addr_137 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_67
  store i32 %tmp_138, i32* %sob_x1_addr_137, align 4
  %tmp_139 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_68, i32 %block_7_68) nounwind
  %sob_y1_addr_137 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_67
  store i32 %tmp_139, i32* %sob_y1_addr_137, align 4
  %tmp_10_69_0_1 = add i14 %phi_mul, 70
  %tmp_11_69_0_1 = zext i14 %tmp_10_69_0_1 to i64
  %video_addr_138 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_69_0_1
  %block_1_69 = load i32* %video_addr_138, align 4
  %tmp_10_69_2_1 = add i14 %phi_mul, 270
  %tmp_11_69_2_1 = zext i14 %tmp_10_69_2_1 to i64
  %video_addr_139 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_69_2_1
  %block_7_69 = load i32* %video_addr_139, align 4
  %tmp_140 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_69, i32 %block_7_69) nounwind
  %sob_x1_addr_139 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_68_0_1
  store i32 %tmp_140, i32* %sob_x1_addr_139, align 4
  %tmp_141 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_69, i32 %block_7_69) nounwind
  %sob_y1_addr_139 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_68_0_1
  store i32 %tmp_141, i32* %sob_y1_addr_139, align 4
  br label %72

; <label>:72                                      ; preds = %.preheader.preheader.68, %71
  %tmp_4_69 = add i14 %phi_mul, 70
  %tmp_5_69 = zext i14 %tmp_4_69 to i64
  br i1 %tmp, label %73, label %.preheader.preheader.70

; <label>:73                                      ; preds = %72
  %sob_x1_addr_140 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_69
  store i32 0, i32* %sob_x1_addr_140, align 4
  %sob_y1_addr_140 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_69
  store i32 0, i32* %sob_y1_addr_140, align 4
  %tmp_4_70 = add i14 %phi_mul, 71
  %tmp_5_70 = zext i14 %tmp_4_70 to i64
  %sob_x1_addr_142 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_70
  store i32 0, i32* %sob_x1_addr_142, align 4
  %sob_y1_addr_142 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_70
  store i32 0, i32* %sob_y1_addr_142, align 4
  br label %74

.preheader.preheader.70:                          ; preds = %72
  %tmp_10_70_0_1 = add i14 %phi_mul, 71
  %tmp_11_70_0_1 = zext i14 %tmp_10_70_0_1 to i64
  %video_addr_140 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_70_0_1
  %block_1_70 = load i32* %video_addr_140, align 4
  %tmp_10_70_2_1 = add i14 %phi_mul, 271
  %tmp_11_70_2_1 = zext i14 %tmp_10_70_2_1 to i64
  %video_addr_141 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_70_2_1
  %block_7_70 = load i32* %video_addr_141, align 4
  %tmp_142 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_70, i32 %block_7_70) nounwind
  %sob_x1_addr_141 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_69
  store i32 %tmp_142, i32* %sob_x1_addr_141, align 4
  %tmp_143 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_70, i32 %block_7_70) nounwind
  %sob_y1_addr_141 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_69
  store i32 %tmp_143, i32* %sob_y1_addr_141, align 4
  %tmp_10_71_0_1 = add i14 %phi_mul, 72
  %tmp_11_71_0_1 = zext i14 %tmp_10_71_0_1 to i64
  %video_addr_142 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_71_0_1
  %block_1_71 = load i32* %video_addr_142, align 4
  %tmp_10_71_2_1 = add i14 %phi_mul, 272
  %tmp_11_71_2_1 = zext i14 %tmp_10_71_2_1 to i64
  %video_addr_143 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_71_2_1
  %block_7_71 = load i32* %video_addr_143, align 4
  %tmp_144 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_71, i32 %block_7_71) nounwind
  %sob_x1_addr_143 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_70_0_1
  store i32 %tmp_144, i32* %sob_x1_addr_143, align 4
  %tmp_145 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_71, i32 %block_7_71) nounwind
  %sob_y1_addr_143 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_70_0_1
  store i32 %tmp_145, i32* %sob_y1_addr_143, align 4
  br label %74

; <label>:74                                      ; preds = %.preheader.preheader.70, %73
  %tmp_4_71 = add i14 %phi_mul, 72
  %tmp_5_71 = zext i14 %tmp_4_71 to i64
  br i1 %tmp, label %75, label %.preheader.preheader.72

; <label>:75                                      ; preds = %74
  %sob_x1_addr_144 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_71
  store i32 0, i32* %sob_x1_addr_144, align 4
  %sob_y1_addr_144 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_71
  store i32 0, i32* %sob_y1_addr_144, align 4
  %tmp_4_72 = add i14 %phi_mul, 73
  %tmp_5_72 = zext i14 %tmp_4_72 to i64
  %sob_x1_addr_146 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_72
  store i32 0, i32* %sob_x1_addr_146, align 4
  %sob_y1_addr_146 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_72
  store i32 0, i32* %sob_y1_addr_146, align 4
  br label %76

.preheader.preheader.72:                          ; preds = %74
  %tmp_10_72_0_1 = add i14 %phi_mul, 73
  %tmp_11_72_0_1 = zext i14 %tmp_10_72_0_1 to i64
  %video_addr_144 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_72_0_1
  %block_1_72 = load i32* %video_addr_144, align 4
  %tmp_10_72_2_1 = add i14 %phi_mul, 273
  %tmp_11_72_2_1 = zext i14 %tmp_10_72_2_1 to i64
  %video_addr_145 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_72_2_1
  %block_7_72 = load i32* %video_addr_145, align 4
  %tmp_146 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_72, i32 %block_7_72) nounwind
  %sob_x1_addr_145 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_71
  store i32 %tmp_146, i32* %sob_x1_addr_145, align 4
  %tmp_147 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_72, i32 %block_7_72) nounwind
  %sob_y1_addr_145 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_71
  store i32 %tmp_147, i32* %sob_y1_addr_145, align 4
  %tmp_10_73_0_1 = add i14 %phi_mul, 74
  %tmp_11_73_0_1 = zext i14 %tmp_10_73_0_1 to i64
  %video_addr_146 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_73_0_1
  %block_1_73 = load i32* %video_addr_146, align 4
  %tmp_10_73_2_1 = add i14 %phi_mul, 274
  %tmp_11_73_2_1 = zext i14 %tmp_10_73_2_1 to i64
  %video_addr_147 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_73_2_1
  %block_7_73 = load i32* %video_addr_147, align 4
  %tmp_148 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_73, i32 %block_7_73) nounwind
  %sob_x1_addr_147 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_72_0_1
  store i32 %tmp_148, i32* %sob_x1_addr_147, align 4
  %tmp_149 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_73, i32 %block_7_73) nounwind
  %sob_y1_addr_147 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_72_0_1
  store i32 %tmp_149, i32* %sob_y1_addr_147, align 4
  br label %76

; <label>:76                                      ; preds = %.preheader.preheader.72, %75
  %tmp_4_73 = add i14 %phi_mul, 74
  %tmp_5_73 = zext i14 %tmp_4_73 to i64
  br i1 %tmp, label %77, label %.preheader.preheader.74

; <label>:77                                      ; preds = %76
  %sob_x1_addr_148 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_73
  store i32 0, i32* %sob_x1_addr_148, align 4
  %sob_y1_addr_148 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_73
  store i32 0, i32* %sob_y1_addr_148, align 4
  %tmp_4_74 = add i14 %phi_mul, 75
  %tmp_5_74 = zext i14 %tmp_4_74 to i64
  %sob_x1_addr_150 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_74
  store i32 0, i32* %sob_x1_addr_150, align 4
  %sob_y1_addr_150 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_74
  store i32 0, i32* %sob_y1_addr_150, align 4
  br label %78

.preheader.preheader.74:                          ; preds = %76
  %tmp_10_74_0_1 = add i14 %phi_mul, 75
  %tmp_11_74_0_1 = zext i14 %tmp_10_74_0_1 to i64
  %video_addr_148 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_74_0_1
  %block_1_74 = load i32* %video_addr_148, align 4
  %tmp_10_74_2_1 = add i14 %phi_mul, 275
  %tmp_11_74_2_1 = zext i14 %tmp_10_74_2_1 to i64
  %video_addr_149 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_74_2_1
  %block_7_74 = load i32* %video_addr_149, align 4
  %tmp_150 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_74, i32 %block_7_74) nounwind
  %sob_x1_addr_149 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_73
  store i32 %tmp_150, i32* %sob_x1_addr_149, align 4
  %tmp_151 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_74, i32 %block_7_74) nounwind
  %sob_y1_addr_149 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_73
  store i32 %tmp_151, i32* %sob_y1_addr_149, align 4
  %tmp_10_75_0_1 = add i14 %phi_mul, 76
  %tmp_11_75_0_1 = zext i14 %tmp_10_75_0_1 to i64
  %video_addr_150 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_75_0_1
  %block_1_75 = load i32* %video_addr_150, align 4
  %tmp_10_75_2_1 = add i14 %phi_mul, 276
  %tmp_11_75_2_1 = zext i14 %tmp_10_75_2_1 to i64
  %video_addr_151 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_75_2_1
  %block_7_75 = load i32* %video_addr_151, align 4
  %tmp_152 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_75, i32 %block_7_75) nounwind
  %sob_x1_addr_151 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_74_0_1
  store i32 %tmp_152, i32* %sob_x1_addr_151, align 4
  %tmp_153 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_75, i32 %block_7_75) nounwind
  %sob_y1_addr_151 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_74_0_1
  store i32 %tmp_153, i32* %sob_y1_addr_151, align 4
  br label %78

; <label>:78                                      ; preds = %.preheader.preheader.74, %77
  %tmp_4_75 = add i14 %phi_mul, 76
  %tmp_5_75 = zext i14 %tmp_4_75 to i64
  br i1 %tmp, label %79, label %.preheader.preheader.76

; <label>:79                                      ; preds = %78
  %sob_x1_addr_152 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_75
  store i32 0, i32* %sob_x1_addr_152, align 4
  %sob_y1_addr_152 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_75
  store i32 0, i32* %sob_y1_addr_152, align 4
  %tmp_4_76 = add i14 %phi_mul, 77
  %tmp_5_76 = zext i14 %tmp_4_76 to i64
  %sob_x1_addr_154 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_76
  store i32 0, i32* %sob_x1_addr_154, align 4
  %sob_y1_addr_154 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_76
  store i32 0, i32* %sob_y1_addr_154, align 4
  br label %80

.preheader.preheader.76:                          ; preds = %78
  %tmp_10_76_0_1 = add i14 %phi_mul, 77
  %tmp_11_76_0_1 = zext i14 %tmp_10_76_0_1 to i64
  %video_addr_152 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_76_0_1
  %block_1_76 = load i32* %video_addr_152, align 4
  %tmp_10_76_2_1 = add i14 %phi_mul, 277
  %tmp_11_76_2_1 = zext i14 %tmp_10_76_2_1 to i64
  %video_addr_153 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_76_2_1
  %block_7_76 = load i32* %video_addr_153, align 4
  %tmp_154 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_76, i32 %block_7_76) nounwind
  %sob_x1_addr_153 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_75
  store i32 %tmp_154, i32* %sob_x1_addr_153, align 4
  %tmp_155 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_76, i32 %block_7_76) nounwind
  %sob_y1_addr_153 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_75
  store i32 %tmp_155, i32* %sob_y1_addr_153, align 4
  %tmp_10_77_0_1 = add i14 %phi_mul, 78
  %tmp_11_77_0_1 = zext i14 %tmp_10_77_0_1 to i64
  %video_addr_154 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_77_0_1
  %block_1_77 = load i32* %video_addr_154, align 4
  %tmp_10_77_2_1 = add i14 %phi_mul, 278
  %tmp_11_77_2_1 = zext i14 %tmp_10_77_2_1 to i64
  %video_addr_155 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_77_2_1
  %block_7_77 = load i32* %video_addr_155, align 4
  %tmp_156 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_77, i32 %block_7_77) nounwind
  %sob_x1_addr_155 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_76_0_1
  store i32 %tmp_156, i32* %sob_x1_addr_155, align 4
  %tmp_157 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_77, i32 %block_7_77) nounwind
  %sob_y1_addr_155 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_76_0_1
  store i32 %tmp_157, i32* %sob_y1_addr_155, align 4
  br label %80

; <label>:80                                      ; preds = %.preheader.preheader.76, %79
  %tmp_4_77 = add i14 %phi_mul, 78
  %tmp_5_77 = zext i14 %tmp_4_77 to i64
  br i1 %tmp, label %81, label %.preheader.preheader.78

; <label>:81                                      ; preds = %80
  %sob_x1_addr_156 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_77
  store i32 0, i32* %sob_x1_addr_156, align 4
  %sob_y1_addr_156 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_77
  store i32 0, i32* %sob_y1_addr_156, align 4
  %tmp_4_78 = add i14 %phi_mul, 79
  %tmp_5_78 = zext i14 %tmp_4_78 to i64
  %sob_x1_addr_158 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_78
  store i32 0, i32* %sob_x1_addr_158, align 4
  %sob_y1_addr_158 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_78
  store i32 0, i32* %sob_y1_addr_158, align 4
  br label %82

.preheader.preheader.78:                          ; preds = %80
  %tmp_10_78_0_1 = add i14 %phi_mul, 79
  %tmp_11_78_0_1 = zext i14 %tmp_10_78_0_1 to i64
  %video_addr_156 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_78_0_1
  %block_1_78 = load i32* %video_addr_156, align 4
  %tmp_10_78_2_1 = add i14 %phi_mul, 279
  %tmp_11_78_2_1 = zext i14 %tmp_10_78_2_1 to i64
  %video_addr_157 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_78_2_1
  %block_7_78 = load i32* %video_addr_157, align 4
  %tmp_158 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_78, i32 %block_7_78) nounwind
  %sob_x1_addr_157 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_77
  store i32 %tmp_158, i32* %sob_x1_addr_157, align 4
  %tmp_159 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_78, i32 %block_7_78) nounwind
  %sob_y1_addr_157 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_77
  store i32 %tmp_159, i32* %sob_y1_addr_157, align 4
  %tmp_10_79_0_1 = add i14 %phi_mul, 80
  %tmp_11_79_0_1 = zext i14 %tmp_10_79_0_1 to i64
  %video_addr_158 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_79_0_1
  %block_1_79 = load i32* %video_addr_158, align 4
  %tmp_10_79_2_1 = add i14 %phi_mul, 280
  %tmp_11_79_2_1 = zext i14 %tmp_10_79_2_1 to i64
  %video_addr_159 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_79_2_1
  %block_7_79 = load i32* %video_addr_159, align 4
  %tmp_160 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_79, i32 %block_7_79) nounwind
  %sob_x1_addr_159 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_78_0_1
  store i32 %tmp_160, i32* %sob_x1_addr_159, align 4
  %tmp_161 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_79, i32 %block_7_79) nounwind
  %sob_y1_addr_159 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_78_0_1
  store i32 %tmp_161, i32* %sob_y1_addr_159, align 4
  br label %82

; <label>:82                                      ; preds = %.preheader.preheader.78, %81
  %tmp_4_79 = add i14 %phi_mul, 80
  %tmp_5_79 = zext i14 %tmp_4_79 to i64
  br i1 %tmp, label %83, label %.preheader.preheader.80

; <label>:83                                      ; preds = %82
  %sob_x1_addr_160 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_79
  store i32 0, i32* %sob_x1_addr_160, align 4
  %sob_y1_addr_160 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_79
  store i32 0, i32* %sob_y1_addr_160, align 4
  %tmp_4_80 = add i14 %phi_mul, 81
  %tmp_5_80 = zext i14 %tmp_4_80 to i64
  %sob_x1_addr_162 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_80
  store i32 0, i32* %sob_x1_addr_162, align 4
  %sob_y1_addr_162 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_80
  store i32 0, i32* %sob_y1_addr_162, align 4
  br label %84

.preheader.preheader.80:                          ; preds = %82
  %tmp_10_80_0_1 = add i14 %phi_mul, 81
  %tmp_11_80_0_1 = zext i14 %tmp_10_80_0_1 to i64
  %video_addr_160 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_80_0_1
  %block_1_80 = load i32* %video_addr_160, align 4
  %tmp_10_80_2_1 = add i14 %phi_mul, 281
  %tmp_11_80_2_1 = zext i14 %tmp_10_80_2_1 to i64
  %video_addr_161 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_80_2_1
  %block_7_80 = load i32* %video_addr_161, align 4
  %tmp_162 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_80, i32 %block_7_80) nounwind
  %sob_x1_addr_161 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_79
  store i32 %tmp_162, i32* %sob_x1_addr_161, align 4
  %tmp_163 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_80, i32 %block_7_80) nounwind
  %sob_y1_addr_161 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_79
  store i32 %tmp_163, i32* %sob_y1_addr_161, align 4
  %tmp_10_81_0_1 = add i14 %phi_mul, 82
  %tmp_11_81_0_1 = zext i14 %tmp_10_81_0_1 to i64
  %video_addr_162 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_81_0_1
  %block_1_81 = load i32* %video_addr_162, align 4
  %tmp_10_81_2_1 = add i14 %phi_mul, 282
  %tmp_11_81_2_1 = zext i14 %tmp_10_81_2_1 to i64
  %video_addr_163 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_81_2_1
  %block_7_81 = load i32* %video_addr_163, align 4
  %tmp_164 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_81, i32 %block_7_81) nounwind
  %sob_x1_addr_163 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_80_0_1
  store i32 %tmp_164, i32* %sob_x1_addr_163, align 4
  %tmp_165 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_81, i32 %block_7_81) nounwind
  %sob_y1_addr_163 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_80_0_1
  store i32 %tmp_165, i32* %sob_y1_addr_163, align 4
  br label %84

; <label>:84                                      ; preds = %.preheader.preheader.80, %83
  %tmp_4_81 = add i14 %phi_mul, 82
  %tmp_5_81 = zext i14 %tmp_4_81 to i64
  br i1 %tmp, label %85, label %.preheader.preheader.82

; <label>:85                                      ; preds = %84
  %sob_x1_addr_164 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_81
  store i32 0, i32* %sob_x1_addr_164, align 4
  %sob_y1_addr_164 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_81
  store i32 0, i32* %sob_y1_addr_164, align 4
  %tmp_4_82 = add i14 %phi_mul, 83
  %tmp_5_82 = zext i14 %tmp_4_82 to i64
  %sob_x1_addr_166 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_82
  store i32 0, i32* %sob_x1_addr_166, align 4
  %sob_y1_addr_166 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_82
  store i32 0, i32* %sob_y1_addr_166, align 4
  br label %86

.preheader.preheader.82:                          ; preds = %84
  %tmp_10_82_0_1 = add i14 %phi_mul, 83
  %tmp_11_82_0_1 = zext i14 %tmp_10_82_0_1 to i64
  %video_addr_164 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_82_0_1
  %block_1_82 = load i32* %video_addr_164, align 4
  %tmp_10_82_2_1 = add i14 %phi_mul, 283
  %tmp_11_82_2_1 = zext i14 %tmp_10_82_2_1 to i64
  %video_addr_165 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_82_2_1
  %block_7_82 = load i32* %video_addr_165, align 4
  %tmp_166 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_82, i32 %block_7_82) nounwind
  %sob_x1_addr_165 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_81
  store i32 %tmp_166, i32* %sob_x1_addr_165, align 4
  %tmp_167 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_82, i32 %block_7_82) nounwind
  %sob_y1_addr_165 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_81
  store i32 %tmp_167, i32* %sob_y1_addr_165, align 4
  %tmp_10_83_0_1 = add i14 %phi_mul, 84
  %tmp_11_83_0_1 = zext i14 %tmp_10_83_0_1 to i64
  %video_addr_166 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_83_0_1
  %block_1_83 = load i32* %video_addr_166, align 4
  %tmp_10_83_2_1 = add i14 %phi_mul, 284
  %tmp_11_83_2_1 = zext i14 %tmp_10_83_2_1 to i64
  %video_addr_167 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_83_2_1
  %block_7_83 = load i32* %video_addr_167, align 4
  %tmp_168 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_83, i32 %block_7_83) nounwind
  %sob_x1_addr_167 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_82_0_1
  store i32 %tmp_168, i32* %sob_x1_addr_167, align 4
  %tmp_169 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_83, i32 %block_7_83) nounwind
  %sob_y1_addr_167 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_82_0_1
  store i32 %tmp_169, i32* %sob_y1_addr_167, align 4
  br label %86

; <label>:86                                      ; preds = %.preheader.preheader.82, %85
  %tmp_4_83 = add i14 %phi_mul, 84
  %tmp_5_83 = zext i14 %tmp_4_83 to i64
  br i1 %tmp, label %87, label %.preheader.preheader.84

; <label>:87                                      ; preds = %86
  %sob_x1_addr_168 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_83
  store i32 0, i32* %sob_x1_addr_168, align 4
  %sob_y1_addr_168 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_83
  store i32 0, i32* %sob_y1_addr_168, align 4
  %tmp_4_84 = add i14 %phi_mul, 85
  %tmp_5_84 = zext i14 %tmp_4_84 to i64
  %sob_x1_addr_170 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_84
  store i32 0, i32* %sob_x1_addr_170, align 4
  %sob_y1_addr_170 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_84
  store i32 0, i32* %sob_y1_addr_170, align 4
  br label %88

.preheader.preheader.84:                          ; preds = %86
  %tmp_10_84_0_1 = add i14 %phi_mul, 85
  %tmp_11_84_0_1 = zext i14 %tmp_10_84_0_1 to i64
  %video_addr_168 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_84_0_1
  %block_1_84 = load i32* %video_addr_168, align 4
  %tmp_10_84_2_1 = add i14 %phi_mul, 285
  %tmp_11_84_2_1 = zext i14 %tmp_10_84_2_1 to i64
  %video_addr_169 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_84_2_1
  %block_7_84 = load i32* %video_addr_169, align 4
  %tmp_170 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_84, i32 %block_7_84) nounwind
  %sob_x1_addr_169 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_83
  store i32 %tmp_170, i32* %sob_x1_addr_169, align 4
  %tmp_171 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_84, i32 %block_7_84) nounwind
  %sob_y1_addr_169 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_83
  store i32 %tmp_171, i32* %sob_y1_addr_169, align 4
  %tmp_10_85_0_1 = add i14 %phi_mul, 86
  %tmp_11_85_0_1 = zext i14 %tmp_10_85_0_1 to i64
  %video_addr_170 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_85_0_1
  %block_1_85 = load i32* %video_addr_170, align 4
  %tmp_10_85_2_1 = add i14 %phi_mul, 286
  %tmp_11_85_2_1 = zext i14 %tmp_10_85_2_1 to i64
  %video_addr_171 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_85_2_1
  %block_7_85 = load i32* %video_addr_171, align 4
  %tmp_172 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_85, i32 %block_7_85) nounwind
  %sob_x1_addr_171 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_84_0_1
  store i32 %tmp_172, i32* %sob_x1_addr_171, align 4
  %tmp_173 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_85, i32 %block_7_85) nounwind
  %sob_y1_addr_171 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_84_0_1
  store i32 %tmp_173, i32* %sob_y1_addr_171, align 4
  br label %88

; <label>:88                                      ; preds = %.preheader.preheader.84, %87
  %tmp_4_85 = add i14 %phi_mul, 86
  %tmp_5_85 = zext i14 %tmp_4_85 to i64
  br i1 %tmp, label %89, label %.preheader.preheader.86

; <label>:89                                      ; preds = %88
  %sob_x1_addr_172 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_85
  store i32 0, i32* %sob_x1_addr_172, align 4
  %sob_y1_addr_172 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_85
  store i32 0, i32* %sob_y1_addr_172, align 4
  %tmp_4_86 = add i14 %phi_mul, 87
  %tmp_5_86 = zext i14 %tmp_4_86 to i64
  %sob_x1_addr_174 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_86
  store i32 0, i32* %sob_x1_addr_174, align 4
  %sob_y1_addr_174 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_86
  store i32 0, i32* %sob_y1_addr_174, align 4
  br label %90

.preheader.preheader.86:                          ; preds = %88
  %tmp_10_86_0_1 = add i14 %phi_mul, 87
  %tmp_11_86_0_1 = zext i14 %tmp_10_86_0_1 to i64
  %video_addr_172 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_86_0_1
  %block_1_86 = load i32* %video_addr_172, align 4
  %tmp_10_86_2_1 = add i14 %phi_mul, 287
  %tmp_11_86_2_1 = zext i14 %tmp_10_86_2_1 to i64
  %video_addr_173 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_86_2_1
  %block_7_86 = load i32* %video_addr_173, align 4
  %tmp_174 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_86, i32 %block_7_86) nounwind
  %sob_x1_addr_173 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_85
  store i32 %tmp_174, i32* %sob_x1_addr_173, align 4
  %tmp_175 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_86, i32 %block_7_86) nounwind
  %sob_y1_addr_173 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_85
  store i32 %tmp_175, i32* %sob_y1_addr_173, align 4
  %tmp_10_87_0_1 = add i14 %phi_mul, 88
  %tmp_11_87_0_1 = zext i14 %tmp_10_87_0_1 to i64
  %video_addr_174 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_87_0_1
  %block_1_87 = load i32* %video_addr_174, align 4
  %tmp_10_87_2_1 = add i14 %phi_mul, 288
  %tmp_11_87_2_1 = zext i14 %tmp_10_87_2_1 to i64
  %video_addr_175 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_87_2_1
  %block_7_87 = load i32* %video_addr_175, align 4
  %tmp_176 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_87, i32 %block_7_87) nounwind
  %sob_x1_addr_175 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_86_0_1
  store i32 %tmp_176, i32* %sob_x1_addr_175, align 4
  %tmp_177 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_87, i32 %block_7_87) nounwind
  %sob_y1_addr_175 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_86_0_1
  store i32 %tmp_177, i32* %sob_y1_addr_175, align 4
  br label %90

; <label>:90                                      ; preds = %.preheader.preheader.86, %89
  %tmp_4_87 = add i14 %phi_mul, 88
  %tmp_5_87 = zext i14 %tmp_4_87 to i64
  br i1 %tmp, label %91, label %.preheader.preheader.88

; <label>:91                                      ; preds = %90
  %sob_x1_addr_176 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_87
  store i32 0, i32* %sob_x1_addr_176, align 4
  %sob_y1_addr_176 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_87
  store i32 0, i32* %sob_y1_addr_176, align 4
  %tmp_4_88 = add i14 %phi_mul, 89
  %tmp_5_88 = zext i14 %tmp_4_88 to i64
  %sob_x1_addr_178 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_88
  store i32 0, i32* %sob_x1_addr_178, align 4
  %sob_y1_addr_178 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_88
  store i32 0, i32* %sob_y1_addr_178, align 4
  br label %92

.preheader.preheader.88:                          ; preds = %90
  %tmp_10_88_0_1 = add i14 %phi_mul, 89
  %tmp_11_88_0_1 = zext i14 %tmp_10_88_0_1 to i64
  %video_addr_176 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_88_0_1
  %block_1_88 = load i32* %video_addr_176, align 4
  %tmp_10_88_2_1 = add i14 %phi_mul, 289
  %tmp_11_88_2_1 = zext i14 %tmp_10_88_2_1 to i64
  %video_addr_177 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_88_2_1
  %block_7_88 = load i32* %video_addr_177, align 4
  %tmp_178 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_88, i32 %block_7_88) nounwind
  %sob_x1_addr_177 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_87
  store i32 %tmp_178, i32* %sob_x1_addr_177, align 4
  %tmp_179 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_88, i32 %block_7_88) nounwind
  %sob_y1_addr_177 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_87
  store i32 %tmp_179, i32* %sob_y1_addr_177, align 4
  %tmp_10_89_0_1 = add i14 %phi_mul, 90
  %tmp_11_89_0_1 = zext i14 %tmp_10_89_0_1 to i64
  %video_addr_178 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_89_0_1
  %block_1_89 = load i32* %video_addr_178, align 4
  %tmp_10_89_2_1 = add i14 %phi_mul, 290
  %tmp_11_89_2_1 = zext i14 %tmp_10_89_2_1 to i64
  %video_addr_179 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_89_2_1
  %block_7_89 = load i32* %video_addr_179, align 4
  %tmp_180 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_89, i32 %block_7_89) nounwind
  %sob_x1_addr_179 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_88_0_1
  store i32 %tmp_180, i32* %sob_x1_addr_179, align 4
  %tmp_181 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_89, i32 %block_7_89) nounwind
  %sob_y1_addr_179 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_88_0_1
  store i32 %tmp_181, i32* %sob_y1_addr_179, align 4
  br label %92

; <label>:92                                      ; preds = %.preheader.preheader.88, %91
  %tmp_4_89 = add i14 %phi_mul, 90
  %tmp_5_89 = zext i14 %tmp_4_89 to i64
  br i1 %tmp, label %93, label %.preheader.preheader.90

; <label>:93                                      ; preds = %92
  %sob_x1_addr_180 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_89
  store i32 0, i32* %sob_x1_addr_180, align 4
  %sob_y1_addr_180 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_89
  store i32 0, i32* %sob_y1_addr_180, align 4
  %tmp_4_90 = add i14 %phi_mul, 91
  %tmp_5_90 = zext i14 %tmp_4_90 to i64
  %sob_x1_addr_182 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_90
  store i32 0, i32* %sob_x1_addr_182, align 4
  %sob_y1_addr_182 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_90
  store i32 0, i32* %sob_y1_addr_182, align 4
  br label %94

.preheader.preheader.90:                          ; preds = %92
  %tmp_10_90_0_1 = add i14 %phi_mul, 91
  %tmp_11_90_0_1 = zext i14 %tmp_10_90_0_1 to i64
  %video_addr_180 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_90_0_1
  %block_1_90 = load i32* %video_addr_180, align 4
  %tmp_10_90_2_1 = add i14 %phi_mul, 291
  %tmp_11_90_2_1 = zext i14 %tmp_10_90_2_1 to i64
  %video_addr_181 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_90_2_1
  %block_7_90 = load i32* %video_addr_181, align 4
  %tmp_182 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_90, i32 %block_7_90) nounwind
  %sob_x1_addr_181 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_89
  store i32 %tmp_182, i32* %sob_x1_addr_181, align 4
  %tmp_183 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_90, i32 %block_7_90) nounwind
  %sob_y1_addr_181 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_89
  store i32 %tmp_183, i32* %sob_y1_addr_181, align 4
  %tmp_10_91_0_1 = add i14 %phi_mul, 92
  %tmp_11_91_0_1 = zext i14 %tmp_10_91_0_1 to i64
  %video_addr_182 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_91_0_1
  %block_1_91 = load i32* %video_addr_182, align 4
  %tmp_10_91_2_1 = add i14 %phi_mul, 292
  %tmp_11_91_2_1 = zext i14 %tmp_10_91_2_1 to i64
  %video_addr_183 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_91_2_1
  %block_7_91 = load i32* %video_addr_183, align 4
  %tmp_184 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_91, i32 %block_7_91) nounwind
  %sob_x1_addr_183 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_90_0_1
  store i32 %tmp_184, i32* %sob_x1_addr_183, align 4
  %tmp_185 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_91, i32 %block_7_91) nounwind
  %sob_y1_addr_183 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_90_0_1
  store i32 %tmp_185, i32* %sob_y1_addr_183, align 4
  br label %94

; <label>:94                                      ; preds = %.preheader.preheader.90, %93
  %tmp_4_91 = add i14 %phi_mul, 92
  %tmp_5_91 = zext i14 %tmp_4_91 to i64
  br i1 %tmp, label %95, label %.preheader.preheader.92

; <label>:95                                      ; preds = %94
  %sob_x1_addr_184 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_91
  store i32 0, i32* %sob_x1_addr_184, align 4
  %sob_y1_addr_184 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_91
  store i32 0, i32* %sob_y1_addr_184, align 4
  %tmp_4_92 = add i14 %phi_mul, 93
  %tmp_5_92 = zext i14 %tmp_4_92 to i64
  %sob_x1_addr_186 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_92
  store i32 0, i32* %sob_x1_addr_186, align 4
  %sob_y1_addr_186 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_92
  store i32 0, i32* %sob_y1_addr_186, align 4
  br label %96

.preheader.preheader.92:                          ; preds = %94
  %tmp_10_92_0_1 = add i14 %phi_mul, 93
  %tmp_11_92_0_1 = zext i14 %tmp_10_92_0_1 to i64
  %video_addr_184 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_92_0_1
  %block_1_92 = load i32* %video_addr_184, align 4
  %tmp_10_92_2_1 = add i14 %phi_mul, 293
  %tmp_11_92_2_1 = zext i14 %tmp_10_92_2_1 to i64
  %video_addr_185 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_92_2_1
  %block_7_92 = load i32* %video_addr_185, align 4
  %tmp_186 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_92, i32 %block_7_92) nounwind
  %sob_x1_addr_185 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_91
  store i32 %tmp_186, i32* %sob_x1_addr_185, align 4
  %tmp_187 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_92, i32 %block_7_92) nounwind
  %sob_y1_addr_185 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_91
  store i32 %tmp_187, i32* %sob_y1_addr_185, align 4
  %tmp_10_93_0_1 = add i14 %phi_mul, 94
  %tmp_11_93_0_1 = zext i14 %tmp_10_93_0_1 to i64
  %video_addr_186 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_93_0_1
  %block_1_93 = load i32* %video_addr_186, align 4
  %tmp_10_93_2_1 = add i14 %phi_mul, 294
  %tmp_11_93_2_1 = zext i14 %tmp_10_93_2_1 to i64
  %video_addr_187 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_93_2_1
  %block_7_93 = load i32* %video_addr_187, align 4
  %tmp_188 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_93, i32 %block_7_93) nounwind
  %sob_x1_addr_187 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_92_0_1
  store i32 %tmp_188, i32* %sob_x1_addr_187, align 4
  %tmp_189 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_93, i32 %block_7_93) nounwind
  %sob_y1_addr_187 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_92_0_1
  store i32 %tmp_189, i32* %sob_y1_addr_187, align 4
  br label %96

; <label>:96                                      ; preds = %.preheader.preheader.92, %95
  %tmp_4_93 = add i14 %phi_mul, 94
  %tmp_5_93 = zext i14 %tmp_4_93 to i64
  br i1 %tmp, label %97, label %.preheader.preheader.94

; <label>:97                                      ; preds = %96
  %sob_x1_addr_188 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_93
  store i32 0, i32* %sob_x1_addr_188, align 4
  %sob_y1_addr_188 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_93
  store i32 0, i32* %sob_y1_addr_188, align 4
  %tmp_4_94 = add i14 %phi_mul, 95
  %tmp_5_94 = zext i14 %tmp_4_94 to i64
  %sob_x1_addr_190 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_94
  store i32 0, i32* %sob_x1_addr_190, align 4
  %sob_y1_addr_190 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_94
  store i32 0, i32* %sob_y1_addr_190, align 4
  br label %98

.preheader.preheader.94:                          ; preds = %96
  %tmp_10_94_0_1 = add i14 %phi_mul, 95
  %tmp_11_94_0_1 = zext i14 %tmp_10_94_0_1 to i64
  %video_addr_188 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_94_0_1
  %block_1_94 = load i32* %video_addr_188, align 4
  %tmp_10_94_2_1 = add i14 %phi_mul, 295
  %tmp_11_94_2_1 = zext i14 %tmp_10_94_2_1 to i64
  %video_addr_189 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_94_2_1
  %block_7_94 = load i32* %video_addr_189, align 4
  %tmp_190 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_94, i32 %block_7_94) nounwind
  %sob_x1_addr_189 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_93
  store i32 %tmp_190, i32* %sob_x1_addr_189, align 4
  %tmp_191 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_94, i32 %block_7_94) nounwind
  %sob_y1_addr_189 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_93
  store i32 %tmp_191, i32* %sob_y1_addr_189, align 4
  %tmp_10_95_0_1 = add i14 %phi_mul, 96
  %tmp_11_95_0_1 = zext i14 %tmp_10_95_0_1 to i64
  %video_addr_190 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_95_0_1
  %block_1_95 = load i32* %video_addr_190, align 4
  %tmp_10_95_2_1 = add i14 %phi_mul, 296
  %tmp_11_95_2_1 = zext i14 %tmp_10_95_2_1 to i64
  %video_addr_191 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_95_2_1
  %block_7_95 = load i32* %video_addr_191, align 4
  %tmp_192 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_95, i32 %block_7_95) nounwind
  %sob_x1_addr_191 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_94_0_1
  store i32 %tmp_192, i32* %sob_x1_addr_191, align 4
  %tmp_193 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_95, i32 %block_7_95) nounwind
  %sob_y1_addr_191 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_94_0_1
  store i32 %tmp_193, i32* %sob_y1_addr_191, align 4
  br label %98

; <label>:98                                      ; preds = %.preheader.preheader.94, %97
  %tmp_4_95 = add i14 %phi_mul, 96
  %tmp_5_95 = zext i14 %tmp_4_95 to i64
  br i1 %tmp, label %99, label %.preheader.preheader.96

; <label>:99                                      ; preds = %98
  %sob_x1_addr_192 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_95
  store i32 0, i32* %sob_x1_addr_192, align 4
  %sob_y1_addr_192 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_95
  store i32 0, i32* %sob_y1_addr_192, align 4
  %tmp_4_96 = add i14 %phi_mul, 97
  %tmp_5_96 = zext i14 %tmp_4_96 to i64
  %sob_x1_addr_194 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_96
  store i32 0, i32* %sob_x1_addr_194, align 4
  %sob_y1_addr_194 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_96
  store i32 0, i32* %sob_y1_addr_194, align 4
  br label %100

.preheader.preheader.96:                          ; preds = %98
  %tmp_10_96_0_1 = add i14 %phi_mul, 97
  %tmp_11_96_0_1 = zext i14 %tmp_10_96_0_1 to i64
  %video_addr_192 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_96_0_1
  %block_1_96 = load i32* %video_addr_192, align 4
  %tmp_10_96_2_1 = add i14 %phi_mul, 297
  %tmp_11_96_2_1 = zext i14 %tmp_10_96_2_1 to i64
  %video_addr_193 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_96_2_1
  %block_7_96 = load i32* %video_addr_193, align 4
  %tmp_194 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_96, i32 %block_7_96) nounwind
  %sob_x1_addr_193 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_95
  store i32 %tmp_194, i32* %sob_x1_addr_193, align 4
  %tmp_195 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_96, i32 %block_7_96) nounwind
  %sob_y1_addr_193 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_95
  store i32 %tmp_195, i32* %sob_y1_addr_193, align 4
  %tmp_10_97_0_1 = add i14 %phi_mul, 98
  %tmp_11_97_0_1 = zext i14 %tmp_10_97_0_1 to i64
  %video_addr_194 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_97_0_1
  %block_1_97 = load i32* %video_addr_194, align 4
  %tmp_10_97_2_1 = add i14 %phi_mul, 298
  %tmp_11_97_2_1 = zext i14 %tmp_10_97_2_1 to i64
  %video_addr_195 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp_11_97_2_1
  %block_7_97 = load i32* %video_addr_195, align 4
  %tmp_196 = call fastcc i32 @convolution(i3 0, i4 0, i32 %block_1_97, i32 %block_7_97) nounwind
  %sob_x1_addr_195 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_11_96_0_1
  store i32 %tmp_196, i32* %sob_x1_addr_195, align 4
  %tmp_197 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %block_1_97, i32 %block_7_97) nounwind
  %sob_y1_addr_195 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_11_96_0_1
  store i32 %tmp_197, i32* %sob_y1_addr_195, align 4
  br label %100

; <label>:100                                     ; preds = %.preheader.preheader.96, %99
  %tmp_4_97 = add i14 %phi_mul, 98
  %tmp_5_97 = zext i14 %tmp_4_97 to i64
  %sob_x1_addr_196 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_97
  store i32 0, i32* %sob_x1_addr_196, align 4
  %sob_y1_addr_196 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_97
  store i32 0, i32* %sob_y1_addr_196, align 4
  %tmp_4_98 = add i14 %phi_mul, 99
  %tmp_5_98 = zext i14 %tmp_4_98 to i64
  %sob_x1_addr_197 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp_5_98
  store i32 0, i32* %sob_x1_addr_197, align 4
  %sob_y1_addr_197 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp_5_98
  store i32 0, i32* %sob_y1_addr_197, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_2) nounwind
  br label %1

; <label>:101                                     ; preds = %1
  ret void
}

define internal fastcc i32 @convolution(i3 %p_read, i4 %p_read2, i32 %p_read3, i32 %p_read5) readnone {
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5)
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read3)
  %p_read22 = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %p_read2)
  %p_read_3 = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %p_read)
  %p_read2_cast = zext i4 %p_read22 to i32
  %p_read_cast = sext i3 %p_read_3 to i32
  %tmp_15 = mul nsw i32 %p_read_2, %p_read_cast
  %tmp_1 = shl i32 %tmp_15, 1
  %tmp_15_2 = mul nsw i32 %p_read_1, %p_read2_cast
  %tmp = add i32 %tmp_1, %tmp_15
  %tmp_2 = shl i32 %tmp_15_2, 1
  %tmp1 = add i32 %tmp_15_2, %tmp_2
  %value_2_2_2 = add nsw i32 %tmp, %tmp1
  ret i32 %value_2_2_2
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

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
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

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

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
