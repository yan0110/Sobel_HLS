; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@edge_det.str = internal unnamed_addr constant [9 x i8] c"edge_det\00" ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=3 type=[16 x i8]*]

; [#uses=200]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det.str) nounwind
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %video}, i64 0, metadata !43), !dbg !47 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_x1}, i64 0, metadata !48), !dbg !49 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_y1}, i64 0, metadata !50), !dbg !51 ; [debug line = 4:58] [debug variable = sob_y1]
  %1 = add i7 -31, 1                              ; [#uses=0 type=i7]
  %tmp.199 = add i7 -31, 1                        ; [#uses=1 type=i7]
  %2 = sub i7 -28, %tmp.199                       ; [#uses=0 type=i7]
  %3 = add i7 -31, 1                              ; [#uses=0 type=i7]
  br label %4, !dbg !52                           ; [debug line = 37:21]

; <label>:4                                       ; preds = %201, %0
  %i = phi i7 [ 0, %0 ], [ %i.1, %201 ]           ; [#uses=4 type=i7]
  %i.cast4 = zext i7 %i to i15, !dbg !52          ; [#uses=1 type=i15] [debug line = 37:21]
  %exitcond3 = icmp eq i7 %i, -28, !dbg !52       ; [#uses=1 type=i1] [debug line = 37:21]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %204, label %6, !dbg !52 ; [debug line = 37:21]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str) nounwind, !dbg !55 ; [debug line = 39:2]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str) nounwind, !dbg !55 ; [#uses=1 type=i32] [debug line = 39:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !57 ; [debug line = 40:1]
  %tmp = icmp ugt i7 %i, -31, !dbg !58            ; [#uses=98 type=i1] [debug line = 41:7]
  %tmp.1 = mul i15 %i.cast4, 100, !dbg !61        ; [#uses=3 type=i15] [debug line = 43:12]
  %tmp.1.cast3 = trunc i15 %tmp.1 to i14, !dbg !61 ; [#uses=390 type=i14] [debug line = 43:12]
  br i1 %tmp, label %8, label %.preheader.preheader.0, !dbg !58 ; [debug line = 41:7]

; <label>:7                                       ; preds = %.preheader.preheader.0, %8
  br i1 %tmp, label %10, label %.preheader.preheader.1, !dbg !58 ; [debug line = 41:7]

; <label>:8                                       ; preds = %6
  %tmp.5 = zext i15 %tmp.1 to i64, !dbg !61       ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr, align 4, !dbg !63 ; [debug line = 44:6]
  br label %7, !dbg !64                           ; [debug line = 45:4]

.preheader.preheader.0:                           ; preds = %6
  %tmp.1110 = zext i15 %tmp.1 to i64, !dbg !65    ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.0.0. = or i14 %tmp.1.cast3, 1, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.0.0.1 = zext i14 %tmp.10.0.0. to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.0.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1]" = load i32* %video.addr, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1]"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.0.2.1 = add i14 %tmp.1.cast3, 201, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.0.2.1 = zext i14 %tmp.10.0.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.1 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.0.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7]" = load i32* %video.addr.1, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7]"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.3 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1]", i32 %"block[7]") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.1110, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.3, i32* %sob_x1.addr.1, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.4 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1]", i32 %"block[7]") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.1110, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.4, i32* %sob_y1.addr.1, align 4, !dbg !76 ; [debug line = 59:6]
  br label %7

; <label>:9                                       ; preds = %.preheader.preheader.1, %10
  br i1 %tmp, label %12, label %.preheader.preheader.2, !dbg !58 ; [debug line = 41:7]

; <label>:10                                      ; preds = %7
  %tmp.4. = or i14 %tmp.1.cast3, 1, !dbg !61      ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.1 = zext i14 %tmp.4. to i64, !dbg !61    ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.2 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.1, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.2, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.2 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.1, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.2, align 4, !dbg !63 ; [debug line = 44:6]
  br label %9, !dbg !64                           ; [debug line = 45:4]

.preheader.preheader.1:                           ; preds = %7
  %tmp.2.1.0. = or i14 %tmp.1.cast3, 1, !dbg !65  ; [#uses=2 type=i14] [debug line = 54:1]
  %tmp.2.1.0..cast2 = zext i14 %tmp.2.1.0. to i15, !dbg !65 ; [#uses=1 type=i15] [debug line = 54:1]
  %tmp.11.1 = zext i14 %tmp.2.1.0. to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.1.0.1 = add i15 %tmp.2.1.0..cast2, 1, !dbg !65 ; [#uses=1 type=i15] [debug line = 54:1]
  %tmp.11.1.0.1 = zext i15 %tmp.10.1.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.2 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.1.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].1" = load i32* %video.addr.2, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].1"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.1.2.1 = add i14 %tmp.1.cast3, 202, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.1.2.1 = zext i14 %tmp.10.1.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.3 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.1.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].1" = load i32* %video.addr.3, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].1"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.6 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].1", i32 %"block[7].1") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.3 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.1, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.6, i32* %sob_x1.addr.3, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.7 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].1", i32 %"block[7].1") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.3 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.1, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.7, i32* %sob_y1.addr.3, align 4, !dbg !76 ; [debug line = 59:6]
  br label %9

; <label>:11                                      ; preds = %.preheader.preheader.2, %12
  br i1 %tmp, label %14, label %.preheader.preheader.3, !dbg !58 ; [debug line = 41:7]

; <label>:12                                      ; preds = %9
  %tmp.4.1 = or i14 %tmp.1.cast3, 2, !dbg !61     ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.2 = zext i14 %tmp.4.1 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.4 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.2, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.4, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.4 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.2, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.4, align 4, !dbg !63 ; [debug line = 44:6]
  br label %11, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.2:                           ; preds = %9
  %tmp.2.2.0. = or i14 %tmp.1.cast3, 2, !dbg !65  ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.2 = zext i14 %tmp.2.2.0. to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.2.0. = or i14 %tmp.1.cast3, 3, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.2.0.1 = zext i14 %tmp.10.2.0. to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.4 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.2.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].2" = load i32* %video.addr.4, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].2"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.2.2.1 = add i14 %tmp.1.cast3, 203, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.2.2.1 = zext i14 %tmp.10.2.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.5 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.2.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].2" = load i32* %video.addr.5, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].2"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.8 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].2", i32 %"block[7].2") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.5 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.2, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.8, i32* %sob_x1.addr.5, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.9 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].2", i32 %"block[7].2") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.5 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.2, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.9, i32* %sob_y1.addr.5, align 4, !dbg !76 ; [debug line = 59:6]
  br label %11

; <label>:13                                      ; preds = %.preheader.preheader.3, %14
  br i1 %tmp, label %16, label %.preheader.preheader.4, !dbg !58 ; [debug line = 41:7]

; <label>:14                                      ; preds = %11
  %tmp.4.2 = or i14 %tmp.1.cast3, 3, !dbg !61     ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.3 = zext i14 %tmp.4.2 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.6 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.3, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.6, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.6 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.3, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.6, align 4, !dbg !63 ; [debug line = 44:6]
  br label %13, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.3:                           ; preds = %11
  %tmp.2.3.0. = or i14 %tmp.1.cast3, 3, !dbg !65  ; [#uses=2 type=i14] [debug line = 54:1]
  %tmp.2.3.0..cast1 = zext i14 %tmp.2.3.0. to i15, !dbg !65 ; [#uses=1 type=i15] [debug line = 54:1]
  %tmp.11.3 = zext i14 %tmp.2.3.0. to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.3.0.1 = add i15 %tmp.2.3.0..cast1, 1, !dbg !65 ; [#uses=1 type=i15] [debug line = 54:1]
  %tmp.11.3.0.1 = zext i15 %tmp.10.3.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.6 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.3.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].3" = load i32* %video.addr.6, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].3"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.3.2.1 = add i14 %tmp.1.cast3, 204, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.3.2.1 = zext i14 %tmp.10.3.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.7 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.3.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].3" = load i32* %video.addr.7, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].3"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp. = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].3", i32 %"block[7].3") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.7 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.3, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp., i32* %sob_x1.addr.7, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.10 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].3", i32 %"block[7].3") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.7 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.3, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.10, i32* %sob_y1.addr.7, align 4, !dbg !76 ; [debug line = 59:6]
  br label %13

; <label>:15                                      ; preds = %.preheader.preheader.4, %16
  br i1 %tmp, label %18, label %.preheader.preheader.5, !dbg !58 ; [debug line = 41:7]

; <label>:16                                      ; preds = %13
  %tmp.4.4 = add i14 %tmp.1.cast3, 4, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.4 = zext i14 %tmp.4.4 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.8 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.4, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.8, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.8 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.4, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.8, align 4, !dbg !63 ; [debug line = 44:6]
  br label %15, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.4:                           ; preds = %13
  %tmp.10.4 = add i14 %tmp.1.cast3, 4, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.4 = zext i14 %tmp.10.4 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.4.0.1 = add i14 %tmp.1.cast3, 5, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.4.0.1 = zext i14 %tmp.10.4.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.8 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.4.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].4" = load i32* %video.addr.8, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].4"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.4.2.1 = add i14 %tmp.1.cast3, 205, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.4.2.1 = zext i14 %tmp.10.4.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.9 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.4.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].4" = load i32* %video.addr.9, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].4"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.11 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].4", i32 %"block[7].4") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.9 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.4, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.11, i32* %sob_x1.addr.9, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.12 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].4", i32 %"block[7].4") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.9 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.4, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.12, i32* %sob_y1.addr.9, align 4, !dbg !76 ; [debug line = 59:6]
  br label %15

; <label>:17                                      ; preds = %.preheader.preheader.5, %18
  br i1 %tmp, label %20, label %.preheader.preheader.6, !dbg !58 ; [debug line = 41:7]

; <label>:18                                      ; preds = %15
  %tmp.4.5 = add i14 %tmp.1.cast3, 5, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.5 = zext i14 %tmp.4.5 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.10 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.5, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.10, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.10 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.5, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.10, align 4, !dbg !63 ; [debug line = 44:6]
  br label %17, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.5:                           ; preds = %15
  %tmp.10.5 = add i14 %tmp.1.cast3, 5, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.5 = zext i14 %tmp.10.5 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.5.0.1 = add i14 %tmp.1.cast3, 6, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.5.0.1 = zext i14 %tmp.10.5.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.10 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.5.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].5" = load i32* %video.addr.10, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].5"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.5.2.1 = add i14 %tmp.1.cast3, 206, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.5.2.1 = zext i14 %tmp.10.5.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.11 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.5.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].5" = load i32* %video.addr.11, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].5"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.13 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].5", i32 %"block[7].5") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.11 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.5, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.13, i32* %sob_x1.addr.11, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.14 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].5", i32 %"block[7].5") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.11 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.5, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.14, i32* %sob_y1.addr.11, align 4, !dbg !76 ; [debug line = 59:6]
  br label %17

; <label>:19                                      ; preds = %.preheader.preheader.6, %20
  br i1 %tmp, label %22, label %.preheader.preheader.7, !dbg !58 ; [debug line = 41:7]

; <label>:20                                      ; preds = %17
  %tmp.4.6 = add i14 %tmp.1.cast3, 6, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.6 = zext i14 %tmp.4.6 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.12 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.6, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.12, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.12 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.6, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.12, align 4, !dbg !63 ; [debug line = 44:6]
  br label %19, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.6:                           ; preds = %17
  %tmp.10.6 = add i14 %tmp.1.cast3, 6, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.6 = zext i14 %tmp.10.6 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.6.0.1 = add i14 %tmp.1.cast3, 7, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.6.0.1 = zext i14 %tmp.10.6.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.12 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.6.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].6" = load i32* %video.addr.12, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].6"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.6.2.1 = add i14 %tmp.1.cast3, 207, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.6.2.1 = zext i14 %tmp.10.6.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.13 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.6.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].6" = load i32* %video.addr.13, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].6"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.15 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].6", i32 %"block[7].6") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.13 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.6, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.15, i32* %sob_x1.addr.13, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.16 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].6", i32 %"block[7].6") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.13 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.6, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.16, i32* %sob_y1.addr.13, align 4, !dbg !76 ; [debug line = 59:6]
  br label %19

; <label>:21                                      ; preds = %.preheader.preheader.7, %22
  br i1 %tmp, label %24, label %.preheader.preheader.8, !dbg !58 ; [debug line = 41:7]

; <label>:22                                      ; preds = %19
  %tmp.4.7 = add i14 %tmp.1.cast3, 7, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.7 = zext i14 %tmp.4.7 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.14 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.7, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.14, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.14 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.7, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.14, align 4, !dbg !63 ; [debug line = 44:6]
  br label %21, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.7:                           ; preds = %19
  %tmp.10.7 = add i14 %tmp.1.cast3, 7, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.7 = zext i14 %tmp.10.7 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.7.0.1 = add i14 %tmp.1.cast3, 8, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.7.0.1 = zext i14 %tmp.10.7.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.14 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.7.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].7" = load i32* %video.addr.14, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].7"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.7.2.1 = add i14 %tmp.1.cast3, 208, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.7.2.1 = zext i14 %tmp.10.7.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.15 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.7.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].7" = load i32* %video.addr.15, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].7"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.17 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].7", i32 %"block[7].7") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.15 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.7, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.17, i32* %sob_x1.addr.15, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.18 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].7", i32 %"block[7].7") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.15 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.7, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.18, i32* %sob_y1.addr.15, align 4, !dbg !76 ; [debug line = 59:6]
  br label %21

; <label>:23                                      ; preds = %.preheader.preheader.8, %24
  br i1 %tmp, label %26, label %.preheader.preheader.9, !dbg !58 ; [debug line = 41:7]

; <label>:24                                      ; preds = %21
  %tmp.4.8 = add i14 %tmp.1.cast3, 8, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.8 = zext i14 %tmp.4.8 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.16 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.8, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.16, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.16 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.8, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.16, align 4, !dbg !63 ; [debug line = 44:6]
  br label %23, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.8:                           ; preds = %21
  %tmp.10.8 = add i14 %tmp.1.cast3, 8, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.8 = zext i14 %tmp.10.8 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.8.0.1 = add i14 %tmp.1.cast3, 9, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.8.0.1 = zext i14 %tmp.10.8.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.16 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.8.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].8" = load i32* %video.addr.16, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].8"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.8.2.1 = add i14 %tmp.1.cast3, 209, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.8.2.1 = zext i14 %tmp.10.8.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.17 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.8.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].8" = load i32* %video.addr.17, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].8"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.19 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].8", i32 %"block[7].8") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.17 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.8, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.19, i32* %sob_x1.addr.17, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.20 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].8", i32 %"block[7].8") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.17 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.8, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.20, i32* %sob_y1.addr.17, align 4, !dbg !76 ; [debug line = 59:6]
  br label %23

; <label>:25                                      ; preds = %.preheader.preheader.9, %26
  br i1 %tmp, label %28, label %.preheader.preheader.10, !dbg !58 ; [debug line = 41:7]

; <label>:26                                      ; preds = %23
  %tmp.4.9 = add i14 %tmp.1.cast3, 9, !dbg !61    ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.9 = zext i14 %tmp.4.9 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.18 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.9, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.18, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.18 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.9, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.18, align 4, !dbg !63 ; [debug line = 44:6]
  br label %25, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.9:                           ; preds = %23
  %tmp.10.9 = add i14 %tmp.1.cast3, 9, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.9 = zext i14 %tmp.10.9 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.9.0.1 = add i14 %tmp.1.cast3, 10, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.9.0.1 = zext i14 %tmp.10.9.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.18 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.9.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].9" = load i32* %video.addr.18, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].9"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.9.2.1 = add i14 %tmp.1.cast3, 210, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.9.2.1 = zext i14 %tmp.10.9.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.19 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.9.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].9" = load i32* %video.addr.19, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].9"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.21 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].9", i32 %"block[7].9") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.19 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.9, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.21, i32* %sob_x1.addr.19, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.22 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].9", i32 %"block[7].9") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.19 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.9, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.22, i32* %sob_y1.addr.19, align 4, !dbg !76 ; [debug line = 59:6]
  br label %25

; <label>:27                                      ; preds = %.preheader.preheader.10, %28
  br i1 %tmp, label %30, label %.preheader.preheader.11, !dbg !58 ; [debug line = 41:7]

; <label>:28                                      ; preds = %25
  %tmp.4.3 = add i14 %tmp.1.cast3, 10, !dbg !61   ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5. = zext i14 %tmp.4.3 to i64, !dbg !61    ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.20 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5., !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.20, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.20 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5., !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.20, align 4, !dbg !63 ; [debug line = 44:6]
  br label %27, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.10:                          ; preds = %25
  %tmp.10. = add i14 %tmp.1.cast3, 10, !dbg !65   ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11. = zext i14 %tmp.10. to i64, !dbg !65   ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.10.0.1 = add i14 %tmp.1.cast3, 11, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.10.0.1 = zext i14 %tmp.10.10.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.20 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.10.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].10" = load i32* %video.addr.20, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].10"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.10.2.1 = add i14 %tmp.1.cast3, 211, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.10.2.1 = zext i14 %tmp.10.10.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.21 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.10.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].10" = load i32* %video.addr.21, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].10"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.23 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].10", i32 %"block[7].10") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.21 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11., !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.23, i32* %sob_x1.addr.21, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.24 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].10", i32 %"block[7].10") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.21 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11., !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.24, i32* %sob_y1.addr.21, align 4, !dbg !76 ; [debug line = 59:6]
  br label %27

; <label>:29                                      ; preds = %.preheader.preheader.11, %30
  br i1 %tmp, label %32, label %.preheader.preheader.12, !dbg !58 ; [debug line = 41:7]

; <label>:30                                      ; preds = %27
  %tmp.4.10 = add i14 %tmp.1.cast3, 11, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.10 = zext i14 %tmp.4.10 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.22 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.10, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.22, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.22 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.10, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.22, align 4, !dbg !63 ; [debug line = 44:6]
  br label %29, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.11:                          ; preds = %27
  %tmp.10.1 = add i14 %tmp.1.cast3, 11, !dbg !65  ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.10 = zext i14 %tmp.10.1 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.11.0.1 = add i14 %tmp.1.cast3, 12, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.11.0.1 = zext i14 %tmp.10.11.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.22 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.11.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].11" = load i32* %video.addr.22, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].11"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.11.2.1 = add i14 %tmp.1.cast3, 212, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.11.2.1 = zext i14 %tmp.10.11.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.23 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.11.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].11" = load i32* %video.addr.23, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].11"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.25 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].11", i32 %"block[7].11") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.23 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.10, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.25, i32* %sob_x1.addr.23, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.26 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].11", i32 %"block[7].11") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.23 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.10, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.26, i32* %sob_y1.addr.23, align 4, !dbg !76 ; [debug line = 59:6]
  br label %29

; <label>:31                                      ; preds = %.preheader.preheader.12, %32
  br i1 %tmp, label %34, label %.preheader.preheader.13, !dbg !58 ; [debug line = 41:7]

; <label>:32                                      ; preds = %29
  %tmp.4.11 = add i14 %tmp.1.cast3, 12, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.11 = zext i14 %tmp.4.11 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.24 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.11, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.24, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.24 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.11, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.24, align 4, !dbg !63 ; [debug line = 44:6]
  br label %31, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.12:                          ; preds = %29
  %tmp.10.2 = add i14 %tmp.1.cast3, 12, !dbg !65  ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.11 = zext i14 %tmp.10.2 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.12.0.1 = add i14 %tmp.1.cast3, 13, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.12.0.1 = zext i14 %tmp.10.12.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.24 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.12.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].12" = load i32* %video.addr.24, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].12"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.12.2.1 = add i14 %tmp.1.cast3, 213, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.12.2.1 = zext i14 %tmp.10.12.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.25 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.12.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].12" = load i32* %video.addr.25, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].12"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.27 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].12", i32 %"block[7].12") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.25 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.11, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.27, i32* %sob_x1.addr.25, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.28 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].12", i32 %"block[7].12") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.25 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.11, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.28, i32* %sob_y1.addr.25, align 4, !dbg !76 ; [debug line = 59:6]
  br label %31

; <label>:33                                      ; preds = %.preheader.preheader.13, %34
  br i1 %tmp, label %36, label %.preheader.preheader.14, !dbg !58 ; [debug line = 41:7]

; <label>:34                                      ; preds = %31
  %tmp.4.12 = add i14 %tmp.1.cast3, 13, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.12 = zext i14 %tmp.4.12 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.26 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.12, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.26, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.26 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.12, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.26, align 4, !dbg !63 ; [debug line = 44:6]
  br label %33, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.13:                          ; preds = %31
  %tmp.10.3 = add i14 %tmp.1.cast3, 13, !dbg !65  ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.12 = zext i14 %tmp.10.3 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.13.0.1 = add i14 %tmp.1.cast3, 14, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.13.0.1 = zext i14 %tmp.10.13.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.26 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.13.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].13" = load i32* %video.addr.26, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].13"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.13.2.1 = add i14 %tmp.1.cast3, 214, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.13.2.1 = zext i14 %tmp.10.13.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.27 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.13.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].13" = load i32* %video.addr.27, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].13"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.29 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].13", i32 %"block[7].13") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.27 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.12, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.29, i32* %sob_x1.addr.27, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.30 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].13", i32 %"block[7].13") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.27 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.12, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.30, i32* %sob_y1.addr.27, align 4, !dbg !76 ; [debug line = 59:6]
  br label %33

; <label>:35                                      ; preds = %.preheader.preheader.14, %36
  br i1 %tmp, label %38, label %.preheader.preheader.15, !dbg !58 ; [debug line = 41:7]

; <label>:36                                      ; preds = %33
  %tmp.4.13 = add i14 %tmp.1.cast3, 14, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.13 = zext i14 %tmp.4.13 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.28 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.13, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.28, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.28 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.13, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.28, align 4, !dbg !63 ; [debug line = 44:6]
  br label %35, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.14:                          ; preds = %33
  %tmp.10.10 = add i14 %tmp.1.cast3, 14, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.13 = zext i14 %tmp.10.10 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.14.0.1 = add i14 %tmp.1.cast3, 15, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.14.0.1 = zext i14 %tmp.10.14.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.28 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.14.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].14" = load i32* %video.addr.28, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].14"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.14.2.1 = add i14 %tmp.1.cast3, 215, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.14.2.1 = zext i14 %tmp.10.14.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.29 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.14.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].14" = load i32* %video.addr.29, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].14"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.31 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].14", i32 %"block[7].14") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.29 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.13, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.31, i32* %sob_x1.addr.29, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.32 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].14", i32 %"block[7].14") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.29 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.13, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.32, i32* %sob_y1.addr.29, align 4, !dbg !76 ; [debug line = 59:6]
  br label %35

; <label>:37                                      ; preds = %.preheader.preheader.15, %38
  br i1 %tmp, label %40, label %.preheader.preheader.16, !dbg !58 ; [debug line = 41:7]

; <label>:38                                      ; preds = %35
  %tmp.4.14 = add i14 %tmp.1.cast3, 15, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.14 = zext i14 %tmp.4.14 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.30 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.14, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.30, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.30 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.14, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.30, align 4, !dbg !63 ; [debug line = 44:6]
  br label %37, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.15:                          ; preds = %35
  %tmp.10.11 = add i14 %tmp.1.cast3, 15, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.14 = zext i14 %tmp.10.11 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.15.0.1 = add i14 %tmp.1.cast3, 16, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.15.0.1 = zext i14 %tmp.10.15.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.30 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.15.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].15" = load i32* %video.addr.30, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].15"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.15.2.1 = add i14 %tmp.1.cast3, 216, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.15.2.1 = zext i14 %tmp.10.15.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.31 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.15.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].15" = load i32* %video.addr.31, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].15"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.33 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].15", i32 %"block[7].15") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.31 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.14, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.33, i32* %sob_x1.addr.31, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.34 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].15", i32 %"block[7].15") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.31 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.14, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.34, i32* %sob_y1.addr.31, align 4, !dbg !76 ; [debug line = 59:6]
  br label %37

; <label>:39                                      ; preds = %.preheader.preheader.16, %40
  br i1 %tmp, label %42, label %.preheader.preheader.17, !dbg !58 ; [debug line = 41:7]

; <label>:40                                      ; preds = %37
  %tmp.4.15 = add i14 %tmp.1.cast3, 16, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.15 = zext i14 %tmp.4.15 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.32 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.15, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.32, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.32 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.15, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.32, align 4, !dbg !63 ; [debug line = 44:6]
  br label %39, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.16:                          ; preds = %37
  %tmp.10.12 = add i14 %tmp.1.cast3, 16, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.15 = zext i14 %tmp.10.12 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.16.0.1 = add i14 %tmp.1.cast3, 17, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.16.0.1 = zext i14 %tmp.10.16.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.32 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.16.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].16" = load i32* %video.addr.32, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].16"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.16.2.1 = add i14 %tmp.1.cast3, 217, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.16.2.1 = zext i14 %tmp.10.16.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.33 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.16.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].16" = load i32* %video.addr.33, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].16"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.35 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].16", i32 %"block[7].16") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.33 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.15, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.35, i32* %sob_x1.addr.33, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.36 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].16", i32 %"block[7].16") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.33 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.15, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.36, i32* %sob_y1.addr.33, align 4, !dbg !76 ; [debug line = 59:6]
  br label %39

; <label>:41                                      ; preds = %.preheader.preheader.17, %42
  br i1 %tmp, label %44, label %.preheader.preheader.18, !dbg !58 ; [debug line = 41:7]

; <label>:42                                      ; preds = %39
  %tmp.4.16 = add i14 %tmp.1.cast3, 17, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.16 = zext i14 %tmp.4.16 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.34 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.16, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.34, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.34 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.16, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.34, align 4, !dbg !63 ; [debug line = 44:6]
  br label %41, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.17:                          ; preds = %39
  %tmp.10.13 = add i14 %tmp.1.cast3, 17, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.16 = zext i14 %tmp.10.13 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.17.0.1 = add i14 %tmp.1.cast3, 18, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.17.0.1 = zext i14 %tmp.10.17.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.34 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.17.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].17" = load i32* %video.addr.34, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].17"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.17.2.1 = add i14 %tmp.1.cast3, 218, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.17.2.1 = zext i14 %tmp.10.17.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.35 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.17.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].17" = load i32* %video.addr.35, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].17"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.37 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].17", i32 %"block[7].17") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.35 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.16, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.37, i32* %sob_x1.addr.35, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.38 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].17", i32 %"block[7].17") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.35 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.16, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.38, i32* %sob_y1.addr.35, align 4, !dbg !76 ; [debug line = 59:6]
  br label %41

; <label>:43                                      ; preds = %.preheader.preheader.18, %44
  br i1 %tmp, label %46, label %.preheader.preheader.19, !dbg !58 ; [debug line = 41:7]

; <label>:44                                      ; preds = %41
  %tmp.4.17 = add i14 %tmp.1.cast3, 18, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.17 = zext i14 %tmp.4.17 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.36 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.17, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.36, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.36 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.17, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.36, align 4, !dbg !63 ; [debug line = 44:6]
  br label %43, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.18:                          ; preds = %41
  %tmp.10.14 = add i14 %tmp.1.cast3, 18, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.17 = zext i14 %tmp.10.14 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.18.0.1 = add i14 %tmp.1.cast3, 19, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.18.0.1 = zext i14 %tmp.10.18.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.36 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.18.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].18" = load i32* %video.addr.36, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].18"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.18.2.1 = add i14 %tmp.1.cast3, 219, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.18.2.1 = zext i14 %tmp.10.18.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.37 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.18.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].18" = load i32* %video.addr.37, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].18"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.39 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].18", i32 %"block[7].18") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.37 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.17, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.39, i32* %sob_x1.addr.37, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.40 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].18", i32 %"block[7].18") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.37 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.17, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.40, i32* %sob_y1.addr.37, align 4, !dbg !76 ; [debug line = 59:6]
  br label %43

; <label>:45                                      ; preds = %.preheader.preheader.19, %46
  br i1 %tmp, label %48, label %.preheader.preheader.20, !dbg !58 ; [debug line = 41:7]

; <label>:46                                      ; preds = %43
  %tmp.4.18 = add i14 %tmp.1.cast3, 19, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.18 = zext i14 %tmp.4.18 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.38 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.18, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.38, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.38 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.18, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.38, align 4, !dbg !63 ; [debug line = 44:6]
  br label %45, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.19:                          ; preds = %43
  %tmp.10.15 = add i14 %tmp.1.cast3, 19, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.18 = zext i14 %tmp.10.15 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.19.0.1 = add i14 %tmp.1.cast3, 20, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.19.0.1 = zext i14 %tmp.10.19.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.38 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.19.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].19" = load i32* %video.addr.38, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].19"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.19.2.1 = add i14 %tmp.1.cast3, 220, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.19.2.1 = zext i14 %tmp.10.19.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.39 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.19.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].19" = load i32* %video.addr.39, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].19"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.41 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].19", i32 %"block[7].19") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.39 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.18, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.41, i32* %sob_x1.addr.39, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.42 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].19", i32 %"block[7].19") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.39 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.18, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.42, i32* %sob_y1.addr.39, align 4, !dbg !76 ; [debug line = 59:6]
  br label %45

; <label>:47                                      ; preds = %.preheader.preheader.20, %48
  br i1 %tmp, label %50, label %.preheader.preheader.21, !dbg !58 ; [debug line = 41:7]

; <label>:48                                      ; preds = %45
  %tmp.4.19 = add i14 %tmp.1.cast3, 20, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.19 = zext i14 %tmp.4.19 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.40 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.19, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.40, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.40 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.19, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.40, align 4, !dbg !63 ; [debug line = 44:6]
  br label %47, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.20:                          ; preds = %45
  %tmp.10.16 = add i14 %tmp.1.cast3, 20, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.19 = zext i14 %tmp.10.16 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.20.0.1 = add i14 %tmp.1.cast3, 21, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.20.0.1 = zext i14 %tmp.10.20.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.40 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.20.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].20" = load i32* %video.addr.40, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].20"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.20.2.1 = add i14 %tmp.1.cast3, 221, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.20.2.1 = zext i14 %tmp.10.20.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.41 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.20.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].20" = load i32* %video.addr.41, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].20"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.43 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].20", i32 %"block[7].20") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.41 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.19, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.43, i32* %sob_x1.addr.41, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.44 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].20", i32 %"block[7].20") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.41 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.19, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.44, i32* %sob_y1.addr.41, align 4, !dbg !76 ; [debug line = 59:6]
  br label %47

; <label>:49                                      ; preds = %.preheader.preheader.21, %50
  br i1 %tmp, label %52, label %.preheader.preheader.22, !dbg !58 ; [debug line = 41:7]

; <label>:50                                      ; preds = %47
  %tmp.4.20 = add i14 %tmp.1.cast3, 21, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.20 = zext i14 %tmp.4.20 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.42 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.20, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.42, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.42 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.20, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.42, align 4, !dbg !63 ; [debug line = 44:6]
  br label %49, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.21:                          ; preds = %47
  %tmp.10.17 = add i14 %tmp.1.cast3, 21, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.20 = zext i14 %tmp.10.17 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.21.0.1 = add i14 %tmp.1.cast3, 22, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.21.0.1 = zext i14 %tmp.10.21.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.42 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.21.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].21" = load i32* %video.addr.42, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].21"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.21.2.1 = add i14 %tmp.1.cast3, 222, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.21.2.1 = zext i14 %tmp.10.21.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.43 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.21.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].21" = load i32* %video.addr.43, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].21"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.45 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].21", i32 %"block[7].21") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.43 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.20, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.45, i32* %sob_x1.addr.43, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.46 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].21", i32 %"block[7].21") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.43 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.20, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.46, i32* %sob_y1.addr.43, align 4, !dbg !76 ; [debug line = 59:6]
  br label %49

; <label>:51                                      ; preds = %.preheader.preheader.22, %52
  br i1 %tmp, label %54, label %.preheader.preheader.23, !dbg !58 ; [debug line = 41:7]

; <label>:52                                      ; preds = %49
  %tmp.4.21 = add i14 %tmp.1.cast3, 22, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.21 = zext i14 %tmp.4.21 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.44 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.21, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.44, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.44 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.21, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.44, align 4, !dbg !63 ; [debug line = 44:6]
  br label %51, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.22:                          ; preds = %49
  %tmp.10.18 = add i14 %tmp.1.cast3, 22, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.21 = zext i14 %tmp.10.18 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.22.0.1 = add i14 %tmp.1.cast3, 23, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.22.0.1 = zext i14 %tmp.10.22.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.44 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.22.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].22" = load i32* %video.addr.44, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].22"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.22.2.1 = add i14 %tmp.1.cast3, 223, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.22.2.1 = zext i14 %tmp.10.22.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.45 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.22.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].22" = load i32* %video.addr.45, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].22"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.47 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].22", i32 %"block[7].22") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.45 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.21, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.47, i32* %sob_x1.addr.45, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.48 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].22", i32 %"block[7].22") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.45 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.21, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.48, i32* %sob_y1.addr.45, align 4, !dbg !76 ; [debug line = 59:6]
  br label %51

; <label>:53                                      ; preds = %.preheader.preheader.23, %54
  br i1 %tmp, label %56, label %.preheader.preheader.24, !dbg !58 ; [debug line = 41:7]

; <label>:54                                      ; preds = %51
  %tmp.4.22 = add i14 %tmp.1.cast3, 23, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.22 = zext i14 %tmp.4.22 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.46 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.22, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.46, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.46 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.22, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.46, align 4, !dbg !63 ; [debug line = 44:6]
  br label %53, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.23:                          ; preds = %51
  %tmp.10.19 = add i14 %tmp.1.cast3, 23, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.22 = zext i14 %tmp.10.19 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.23.0.1 = add i14 %tmp.1.cast3, 24, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.23.0.1 = zext i14 %tmp.10.23.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.46 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.23.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].23" = load i32* %video.addr.46, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].23"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.23.2.1 = add i14 %tmp.1.cast3, 224, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.23.2.1 = zext i14 %tmp.10.23.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.47 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.23.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].23" = load i32* %video.addr.47, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].23"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.49 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].23", i32 %"block[7].23") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.47 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.22, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.49, i32* %sob_x1.addr.47, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.50 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].23", i32 %"block[7].23") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.47 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.22, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.50, i32* %sob_y1.addr.47, align 4, !dbg !76 ; [debug line = 59:6]
  br label %53

; <label>:55                                      ; preds = %.preheader.preheader.24, %56
  br i1 %tmp, label %58, label %.preheader.preheader.25, !dbg !58 ; [debug line = 41:7]

; <label>:56                                      ; preds = %53
  %tmp.4.23 = add i14 %tmp.1.cast3, 24, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.23 = zext i14 %tmp.4.23 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.48 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.23, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.48, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.48 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.23, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.48, align 4, !dbg !63 ; [debug line = 44:6]
  br label %55, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.24:                          ; preds = %53
  %tmp.10.20 = add i14 %tmp.1.cast3, 24, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.23 = zext i14 %tmp.10.20 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.24.0.1 = add i14 %tmp.1.cast3, 25, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.24.0.1 = zext i14 %tmp.10.24.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.48 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.24.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].24" = load i32* %video.addr.48, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].24"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.24.2.1 = add i14 %tmp.1.cast3, 225, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.24.2.1 = zext i14 %tmp.10.24.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.49 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.24.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].24" = load i32* %video.addr.49, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].24"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.51 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].24", i32 %"block[7].24") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.49 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.23, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.51, i32* %sob_x1.addr.49, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.52 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].24", i32 %"block[7].24") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.49 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.23, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.52, i32* %sob_y1.addr.49, align 4, !dbg !76 ; [debug line = 59:6]
  br label %55

; <label>:57                                      ; preds = %.preheader.preheader.25, %58
  br i1 %tmp, label %60, label %.preheader.preheader.26, !dbg !58 ; [debug line = 41:7]

; <label>:58                                      ; preds = %55
  %tmp.4.24 = add i14 %tmp.1.cast3, 25, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.24 = zext i14 %tmp.4.24 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.50 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.24, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.50, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.50 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.24, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.50, align 4, !dbg !63 ; [debug line = 44:6]
  br label %57, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.25:                          ; preds = %55
  %tmp.10.21 = add i14 %tmp.1.cast3, 25, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.24 = zext i14 %tmp.10.21 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.25.0.1 = add i14 %tmp.1.cast3, 26, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.25.0.1 = zext i14 %tmp.10.25.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.50 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.25.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].25" = load i32* %video.addr.50, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].25"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.25.2.1 = add i14 %tmp.1.cast3, 226, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.25.2.1 = zext i14 %tmp.10.25.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.51 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.25.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].25" = load i32* %video.addr.51, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].25"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.53 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].25", i32 %"block[7].25") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.51 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.24, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.53, i32* %sob_x1.addr.51, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.54 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].25", i32 %"block[7].25") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.51 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.24, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.54, i32* %sob_y1.addr.51, align 4, !dbg !76 ; [debug line = 59:6]
  br label %57

; <label>:59                                      ; preds = %.preheader.preheader.26, %60
  br i1 %tmp, label %62, label %.preheader.preheader.27, !dbg !58 ; [debug line = 41:7]

; <label>:60                                      ; preds = %57
  %tmp.4.25 = add i14 %tmp.1.cast3, 26, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.25 = zext i14 %tmp.4.25 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.52 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.25, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.52, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.52 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.25, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.52, align 4, !dbg !63 ; [debug line = 44:6]
  br label %59, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.26:                          ; preds = %57
  %tmp.10.22 = add i14 %tmp.1.cast3, 26, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.25 = zext i14 %tmp.10.22 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.26.0.1 = add i14 %tmp.1.cast3, 27, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.26.0.1 = zext i14 %tmp.10.26.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.52 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.26.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].26" = load i32* %video.addr.52, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].26"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.26.2.1 = add i14 %tmp.1.cast3, 227, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.26.2.1 = zext i14 %tmp.10.26.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.53 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.26.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].26" = load i32* %video.addr.53, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].26"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.55 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].26", i32 %"block[7].26") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.53 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.25, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.55, i32* %sob_x1.addr.53, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.56 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].26", i32 %"block[7].26") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.53 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.25, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.56, i32* %sob_y1.addr.53, align 4, !dbg !76 ; [debug line = 59:6]
  br label %59

; <label>:61                                      ; preds = %.preheader.preheader.27, %62
  br i1 %tmp, label %64, label %.preheader.preheader.28, !dbg !58 ; [debug line = 41:7]

; <label>:62                                      ; preds = %59
  %tmp.4.26 = add i14 %tmp.1.cast3, 27, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.26 = zext i14 %tmp.4.26 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.54 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.26, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.54, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.54 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.26, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.54, align 4, !dbg !63 ; [debug line = 44:6]
  br label %61, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.27:                          ; preds = %59
  %tmp.10.23 = add i14 %tmp.1.cast3, 27, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.26 = zext i14 %tmp.10.23 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.27.0.1 = add i14 %tmp.1.cast3, 28, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.27.0.1 = zext i14 %tmp.10.27.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.54 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.27.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].27" = load i32* %video.addr.54, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].27"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.27.2.1 = add i14 %tmp.1.cast3, 228, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.27.2.1 = zext i14 %tmp.10.27.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.55 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.27.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].27" = load i32* %video.addr.55, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].27"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.57 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].27", i32 %"block[7].27") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.55 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.26, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.57, i32* %sob_x1.addr.55, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.58 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].27", i32 %"block[7].27") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.55 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.26, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.58, i32* %sob_y1.addr.55, align 4, !dbg !76 ; [debug line = 59:6]
  br label %61

; <label>:63                                      ; preds = %.preheader.preheader.28, %64
  br i1 %tmp, label %66, label %.preheader.preheader.29, !dbg !58 ; [debug line = 41:7]

; <label>:64                                      ; preds = %61
  %tmp.4.27 = add i14 %tmp.1.cast3, 28, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.27 = zext i14 %tmp.4.27 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.56 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.27, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.56, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.56 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.27, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.56, align 4, !dbg !63 ; [debug line = 44:6]
  br label %63, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.28:                          ; preds = %61
  %tmp.10.24 = add i14 %tmp.1.cast3, 28, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.27 = zext i14 %tmp.10.24 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.28.0.1 = add i14 %tmp.1.cast3, 29, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.28.0.1 = zext i14 %tmp.10.28.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.56 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.28.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].28" = load i32* %video.addr.56, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].28"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.28.2.1 = add i14 %tmp.1.cast3, 229, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.28.2.1 = zext i14 %tmp.10.28.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.57 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.28.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].28" = load i32* %video.addr.57, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].28"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.59 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].28", i32 %"block[7].28") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.57 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.27, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.59, i32* %sob_x1.addr.57, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.60 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].28", i32 %"block[7].28") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.57 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.27, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.60, i32* %sob_y1.addr.57, align 4, !dbg !76 ; [debug line = 59:6]
  br label %63

; <label>:65                                      ; preds = %.preheader.preheader.29, %66
  br i1 %tmp, label %68, label %.preheader.preheader.30, !dbg !58 ; [debug line = 41:7]

; <label>:66                                      ; preds = %63
  %tmp.4.28 = add i14 %tmp.1.cast3, 29, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.28 = zext i14 %tmp.4.28 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.58 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.28, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.58, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.58 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.28, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.58, align 4, !dbg !63 ; [debug line = 44:6]
  br label %65, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.29:                          ; preds = %63
  %tmp.10.25 = add i14 %tmp.1.cast3, 29, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.28 = zext i14 %tmp.10.25 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.29.0.1 = add i14 %tmp.1.cast3, 30, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.29.0.1 = zext i14 %tmp.10.29.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.58 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.29.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].29" = load i32* %video.addr.58, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].29"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.29.2.1 = add i14 %tmp.1.cast3, 230, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.29.2.1 = zext i14 %tmp.10.29.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.59 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.29.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].29" = load i32* %video.addr.59, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].29"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.61 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].29", i32 %"block[7].29") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.59 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.28, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.61, i32* %sob_x1.addr.59, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.62 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].29", i32 %"block[7].29") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.59 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.28, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.62, i32* %sob_y1.addr.59, align 4, !dbg !76 ; [debug line = 59:6]
  br label %65

; <label>:67                                      ; preds = %.preheader.preheader.30, %68
  br i1 %tmp, label %70, label %.preheader.preheader.31, !dbg !58 ; [debug line = 41:7]

; <label>:68                                      ; preds = %65
  %tmp.4.29 = add i14 %tmp.1.cast3, 30, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.29 = zext i14 %tmp.4.29 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.60 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.29, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.60, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.60 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.29, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.60, align 4, !dbg !63 ; [debug line = 44:6]
  br label %67, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.30:                          ; preds = %65
  %tmp.10.26 = add i14 %tmp.1.cast3, 30, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.29 = zext i14 %tmp.10.26 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.30.0.1 = add i14 %tmp.1.cast3, 31, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.30.0.1 = zext i14 %tmp.10.30.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.60 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.30.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].30" = load i32* %video.addr.60, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].30"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.30.2.1 = add i14 %tmp.1.cast3, 231, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.30.2.1 = zext i14 %tmp.10.30.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.61 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.30.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].30" = load i32* %video.addr.61, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].30"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.63 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].30", i32 %"block[7].30") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.61 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.29, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.63, i32* %sob_x1.addr.61, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.64 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].30", i32 %"block[7].30") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.61 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.29, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.64, i32* %sob_y1.addr.61, align 4, !dbg !76 ; [debug line = 59:6]
  br label %67

; <label>:69                                      ; preds = %.preheader.preheader.31, %70
  br i1 %tmp, label %72, label %.preheader.preheader.32, !dbg !58 ; [debug line = 41:7]

; <label>:70                                      ; preds = %67
  %tmp.4.30 = add i14 %tmp.1.cast3, 31, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.30 = zext i14 %tmp.4.30 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.62 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.30, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.62, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.62 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.30, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.62, align 4, !dbg !63 ; [debug line = 44:6]
  br label %69, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.31:                          ; preds = %67
  %tmp.10.27 = add i14 %tmp.1.cast3, 31, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.30 = zext i14 %tmp.10.27 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.31.0.1 = add i14 %tmp.1.cast3, 32, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.31.0.1 = zext i14 %tmp.10.31.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.62 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.31.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].31" = load i32* %video.addr.62, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].31"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.31.2.1 = add i14 %tmp.1.cast3, 232, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.31.2.1 = zext i14 %tmp.10.31.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.63 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.31.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].31" = load i32* %video.addr.63, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].31"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.65 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].31", i32 %"block[7].31") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.63 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.30, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.65, i32* %sob_x1.addr.63, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.66 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].31", i32 %"block[7].31") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.63 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.30, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.66, i32* %sob_y1.addr.63, align 4, !dbg !76 ; [debug line = 59:6]
  br label %69

; <label>:71                                      ; preds = %.preheader.preheader.32, %72
  br i1 %tmp, label %74, label %.preheader.preheader.33, !dbg !58 ; [debug line = 41:7]

; <label>:72                                      ; preds = %69
  %tmp.4.31 = add i14 %tmp.1.cast3, 32, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.31 = zext i14 %tmp.4.31 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.64 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.31, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.64, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.64 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.31, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.64, align 4, !dbg !63 ; [debug line = 44:6]
  br label %71, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.32:                          ; preds = %69
  %tmp.10.28 = add i14 %tmp.1.cast3, 32, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.31 = zext i14 %tmp.10.28 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.32.0.1 = add i14 %tmp.1.cast3, 33, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.32.0.1 = zext i14 %tmp.10.32.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.64 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.32.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].32" = load i32* %video.addr.64, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].32"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.32.2.1 = add i14 %tmp.1.cast3, 233, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.32.2.1 = zext i14 %tmp.10.32.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.65 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.32.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].32" = load i32* %video.addr.65, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].32"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.67 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].32", i32 %"block[7].32") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.65 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.31, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.67, i32* %sob_x1.addr.65, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.68 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].32", i32 %"block[7].32") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.65 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.31, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.68, i32* %sob_y1.addr.65, align 4, !dbg !76 ; [debug line = 59:6]
  br label %71

; <label>:73                                      ; preds = %.preheader.preheader.33, %74
  br i1 %tmp, label %76, label %.preheader.preheader.34, !dbg !58 ; [debug line = 41:7]

; <label>:74                                      ; preds = %71
  %tmp.4.32 = add i14 %tmp.1.cast3, 33, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.32 = zext i14 %tmp.4.32 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.66 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.32, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.66, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.66 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.32, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.66, align 4, !dbg !63 ; [debug line = 44:6]
  br label %73, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.33:                          ; preds = %71
  %tmp.10.29 = add i14 %tmp.1.cast3, 33, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.32 = zext i14 %tmp.10.29 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.33.0.1 = add i14 %tmp.1.cast3, 34, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.33.0.1 = zext i14 %tmp.10.33.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.66 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.33.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].33" = load i32* %video.addr.66, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].33"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.33.2.1 = add i14 %tmp.1.cast3, 234, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.33.2.1 = zext i14 %tmp.10.33.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.67 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.33.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].33" = load i32* %video.addr.67, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].33"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.69 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].33", i32 %"block[7].33") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.67 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.32, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.69, i32* %sob_x1.addr.67, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.70 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].33", i32 %"block[7].33") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.67 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.32, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.70, i32* %sob_y1.addr.67, align 4, !dbg !76 ; [debug line = 59:6]
  br label %73

; <label>:75                                      ; preds = %.preheader.preheader.34, %76
  br i1 %tmp, label %78, label %.preheader.preheader.35, !dbg !58 ; [debug line = 41:7]

; <label>:76                                      ; preds = %73
  %tmp.4.33 = add i14 %tmp.1.cast3, 34, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.33 = zext i14 %tmp.4.33 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.68 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.33, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.68, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.68 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.33, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.68, align 4, !dbg !63 ; [debug line = 44:6]
  br label %75, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.34:                          ; preds = %73
  %tmp.10.30 = add i14 %tmp.1.cast3, 34, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.33 = zext i14 %tmp.10.30 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.34.0.1 = add i14 %tmp.1.cast3, 35, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.34.0.1 = zext i14 %tmp.10.34.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.68 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.34.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].34" = load i32* %video.addr.68, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].34"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.34.2.1 = add i14 %tmp.1.cast3, 235, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.34.2.1 = zext i14 %tmp.10.34.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.69 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.34.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].34" = load i32* %video.addr.69, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].34"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.71 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].34", i32 %"block[7].34") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.69 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.33, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.71, i32* %sob_x1.addr.69, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.72 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].34", i32 %"block[7].34") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.69 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.33, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.72, i32* %sob_y1.addr.69, align 4, !dbg !76 ; [debug line = 59:6]
  br label %75

; <label>:77                                      ; preds = %.preheader.preheader.35, %78
  br i1 %tmp, label %80, label %.preheader.preheader.36, !dbg !58 ; [debug line = 41:7]

; <label>:78                                      ; preds = %75
  %tmp.4.34 = add i14 %tmp.1.cast3, 35, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.34 = zext i14 %tmp.4.34 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.70 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.34, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.70, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.70 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.34, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.70, align 4, !dbg !63 ; [debug line = 44:6]
  br label %77, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.35:                          ; preds = %75
  %tmp.10.31 = add i14 %tmp.1.cast3, 35, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.34 = zext i14 %tmp.10.31 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.35.0.1 = add i14 %tmp.1.cast3, 36, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.35.0.1 = zext i14 %tmp.10.35.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.70 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.35.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].35" = load i32* %video.addr.70, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].35"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.35.2.1 = add i14 %tmp.1.cast3, 236, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.35.2.1 = zext i14 %tmp.10.35.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.71 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.35.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].35" = load i32* %video.addr.71, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].35"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.73 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].35", i32 %"block[7].35") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.71 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.34, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.73, i32* %sob_x1.addr.71, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.74 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].35", i32 %"block[7].35") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.71 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.34, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.74, i32* %sob_y1.addr.71, align 4, !dbg !76 ; [debug line = 59:6]
  br label %77

; <label>:79                                      ; preds = %.preheader.preheader.36, %80
  br i1 %tmp, label %82, label %.preheader.preheader.37, !dbg !58 ; [debug line = 41:7]

; <label>:80                                      ; preds = %77
  %tmp.4.35 = add i14 %tmp.1.cast3, 36, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.35 = zext i14 %tmp.4.35 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.72 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.35, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.72, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.72 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.35, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.72, align 4, !dbg !63 ; [debug line = 44:6]
  br label %79, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.36:                          ; preds = %77
  %tmp.10.32 = add i14 %tmp.1.cast3, 36, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.35 = zext i14 %tmp.10.32 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.36.0.1 = add i14 %tmp.1.cast3, 37, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.36.0.1 = zext i14 %tmp.10.36.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.72 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.36.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].36" = load i32* %video.addr.72, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].36"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.36.2.1 = add i14 %tmp.1.cast3, 237, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.36.2.1 = zext i14 %tmp.10.36.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.73 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.36.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].36" = load i32* %video.addr.73, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].36"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.75 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].36", i32 %"block[7].36") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.73 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.35, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.75, i32* %sob_x1.addr.73, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.76 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].36", i32 %"block[7].36") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.73 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.35, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.76, i32* %sob_y1.addr.73, align 4, !dbg !76 ; [debug line = 59:6]
  br label %79

; <label>:81                                      ; preds = %.preheader.preheader.37, %82
  br i1 %tmp, label %84, label %.preheader.preheader.38, !dbg !58 ; [debug line = 41:7]

; <label>:82                                      ; preds = %79
  %tmp.4.36 = add i14 %tmp.1.cast3, 37, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.36 = zext i14 %tmp.4.36 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.74 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.36, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.74, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.74 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.36, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.74, align 4, !dbg !63 ; [debug line = 44:6]
  br label %81, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.37:                          ; preds = %79
  %tmp.10.33 = add i14 %tmp.1.cast3, 37, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.36 = zext i14 %tmp.10.33 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.37.0.1 = add i14 %tmp.1.cast3, 38, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.37.0.1 = zext i14 %tmp.10.37.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.74 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.37.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].37" = load i32* %video.addr.74, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].37"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.37.2.1 = add i14 %tmp.1.cast3, 238, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.37.2.1 = zext i14 %tmp.10.37.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.75 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.37.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].37" = load i32* %video.addr.75, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].37"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.77 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].37", i32 %"block[7].37") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.75 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.36, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.77, i32* %sob_x1.addr.75, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.78 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].37", i32 %"block[7].37") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.75 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.36, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.78, i32* %sob_y1.addr.75, align 4, !dbg !76 ; [debug line = 59:6]
  br label %81

; <label>:83                                      ; preds = %.preheader.preheader.38, %84
  br i1 %tmp, label %86, label %.preheader.preheader.39, !dbg !58 ; [debug line = 41:7]

; <label>:84                                      ; preds = %81
  %tmp.4.37 = add i14 %tmp.1.cast3, 38, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.37 = zext i14 %tmp.4.37 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.76 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.37, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.76, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.76 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.37, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.76, align 4, !dbg !63 ; [debug line = 44:6]
  br label %83, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.38:                          ; preds = %81
  %tmp.10.34 = add i14 %tmp.1.cast3, 38, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.37 = zext i14 %tmp.10.34 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.38.0.1 = add i14 %tmp.1.cast3, 39, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.38.0.1 = zext i14 %tmp.10.38.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.76 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.38.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].38" = load i32* %video.addr.76, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].38"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.38.2.1 = add i14 %tmp.1.cast3, 239, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.38.2.1 = zext i14 %tmp.10.38.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.77 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.38.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].38" = load i32* %video.addr.77, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].38"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.79 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].38", i32 %"block[7].38") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.77 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.37, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.79, i32* %sob_x1.addr.77, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.80 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].38", i32 %"block[7].38") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.77 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.37, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.80, i32* %sob_y1.addr.77, align 4, !dbg !76 ; [debug line = 59:6]
  br label %83

; <label>:85                                      ; preds = %.preheader.preheader.39, %86
  br i1 %tmp, label %88, label %.preheader.preheader.40, !dbg !58 ; [debug line = 41:7]

; <label>:86                                      ; preds = %83
  %tmp.4.38 = add i14 %tmp.1.cast3, 39, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.38 = zext i14 %tmp.4.38 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.78 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.38, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.78, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.78 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.38, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.78, align 4, !dbg !63 ; [debug line = 44:6]
  br label %85, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.39:                          ; preds = %83
  %tmp.10.35 = add i14 %tmp.1.cast3, 39, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.38 = zext i14 %tmp.10.35 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.39.0.1 = add i14 %tmp.1.cast3, 40, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.39.0.1 = zext i14 %tmp.10.39.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.78 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.39.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].39" = load i32* %video.addr.78, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].39"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.39.2.1 = add i14 %tmp.1.cast3, 240, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.39.2.1 = zext i14 %tmp.10.39.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.79 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.39.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].39" = load i32* %video.addr.79, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].39"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.81 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].39", i32 %"block[7].39") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.79 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.38, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.81, i32* %sob_x1.addr.79, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.82 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].39", i32 %"block[7].39") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.79 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.38, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.82, i32* %sob_y1.addr.79, align 4, !dbg !76 ; [debug line = 59:6]
  br label %85

; <label>:87                                      ; preds = %.preheader.preheader.40, %88
  br i1 %tmp, label %90, label %.preheader.preheader.41, !dbg !58 ; [debug line = 41:7]

; <label>:88                                      ; preds = %85
  %tmp.4.39 = add i14 %tmp.1.cast3, 40, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.39 = zext i14 %tmp.4.39 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.80 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.39, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.80, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.80 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.39, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.80, align 4, !dbg !63 ; [debug line = 44:6]
  br label %87, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.40:                          ; preds = %85
  %tmp.10.36 = add i14 %tmp.1.cast3, 40, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.39 = zext i14 %tmp.10.36 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.40.0.1 = add i14 %tmp.1.cast3, 41, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.40.0.1 = zext i14 %tmp.10.40.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.80 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.40.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].40" = load i32* %video.addr.80, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].40"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.40.2.1 = add i14 %tmp.1.cast3, 241, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.40.2.1 = zext i14 %tmp.10.40.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.81 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.40.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].40" = load i32* %video.addr.81, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].40"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.83 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].40", i32 %"block[7].40") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.81 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.39, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.83, i32* %sob_x1.addr.81, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.84 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].40", i32 %"block[7].40") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.81 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.39, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.84, i32* %sob_y1.addr.81, align 4, !dbg !76 ; [debug line = 59:6]
  br label %87

; <label>:89                                      ; preds = %.preheader.preheader.41, %90
  br i1 %tmp, label %92, label %.preheader.preheader.42, !dbg !58 ; [debug line = 41:7]

; <label>:90                                      ; preds = %87
  %tmp.4.40 = add i14 %tmp.1.cast3, 41, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.40 = zext i14 %tmp.4.40 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.82 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.40, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.82, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.82 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.40, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.82, align 4, !dbg !63 ; [debug line = 44:6]
  br label %89, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.41:                          ; preds = %87
  %tmp.10.37 = add i14 %tmp.1.cast3, 41, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.40 = zext i14 %tmp.10.37 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.41.0.1 = add i14 %tmp.1.cast3, 42, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.41.0.1 = zext i14 %tmp.10.41.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.82 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.41.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].41" = load i32* %video.addr.82, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].41"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.41.2.1 = add i14 %tmp.1.cast3, 242, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.41.2.1 = zext i14 %tmp.10.41.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.83 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.41.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].41" = load i32* %video.addr.83, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].41"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.85 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].41", i32 %"block[7].41") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.83 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.40, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.85, i32* %sob_x1.addr.83, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.86 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].41", i32 %"block[7].41") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.83 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.40, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.86, i32* %sob_y1.addr.83, align 4, !dbg !76 ; [debug line = 59:6]
  br label %89

; <label>:91                                      ; preds = %.preheader.preheader.42, %92
  br i1 %tmp, label %94, label %.preheader.preheader.43, !dbg !58 ; [debug line = 41:7]

; <label>:92                                      ; preds = %89
  %tmp.4.41 = add i14 %tmp.1.cast3, 42, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.41 = zext i14 %tmp.4.41 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.84 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.41, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.84, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.84 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.41, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.84, align 4, !dbg !63 ; [debug line = 44:6]
  br label %91, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.42:                          ; preds = %89
  %tmp.10.38 = add i14 %tmp.1.cast3, 42, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.41 = zext i14 %tmp.10.38 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.42.0.1 = add i14 %tmp.1.cast3, 43, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.42.0.1 = zext i14 %tmp.10.42.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.84 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.42.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].42" = load i32* %video.addr.84, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].42"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.42.2.1 = add i14 %tmp.1.cast3, 243, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.42.2.1 = zext i14 %tmp.10.42.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.85 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.42.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].42" = load i32* %video.addr.85, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].42"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.87 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].42", i32 %"block[7].42") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.85 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.41, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.87, i32* %sob_x1.addr.85, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.88 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].42", i32 %"block[7].42") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.85 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.41, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.88, i32* %sob_y1.addr.85, align 4, !dbg !76 ; [debug line = 59:6]
  br label %91

; <label>:93                                      ; preds = %.preheader.preheader.43, %94
  br i1 %tmp, label %96, label %.preheader.preheader.44, !dbg !58 ; [debug line = 41:7]

; <label>:94                                      ; preds = %91
  %tmp.4.42 = add i14 %tmp.1.cast3, 43, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.42 = zext i14 %tmp.4.42 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.86 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.42, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.86, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.86 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.42, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.86, align 4, !dbg !63 ; [debug line = 44:6]
  br label %93, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.43:                          ; preds = %91
  %tmp.10.39 = add i14 %tmp.1.cast3, 43, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.42 = zext i14 %tmp.10.39 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.43.0.1 = add i14 %tmp.1.cast3, 44, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.43.0.1 = zext i14 %tmp.10.43.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.86 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.43.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].43" = load i32* %video.addr.86, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].43"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.43.2.1 = add i14 %tmp.1.cast3, 244, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.43.2.1 = zext i14 %tmp.10.43.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.87 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.43.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].43" = load i32* %video.addr.87, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].43"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.89 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].43", i32 %"block[7].43") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.87 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.42, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.89, i32* %sob_x1.addr.87, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.90 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].43", i32 %"block[7].43") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.87 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.42, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.90, i32* %sob_y1.addr.87, align 4, !dbg !76 ; [debug line = 59:6]
  br label %93

; <label>:95                                      ; preds = %.preheader.preheader.44, %96
  br i1 %tmp, label %98, label %.preheader.preheader.45, !dbg !58 ; [debug line = 41:7]

; <label>:96                                      ; preds = %93
  %tmp.4.43 = add i14 %tmp.1.cast3, 44, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.43 = zext i14 %tmp.4.43 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.88 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.43, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.88, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.88 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.43, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.88, align 4, !dbg !63 ; [debug line = 44:6]
  br label %95, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.44:                          ; preds = %93
  %tmp.10.40 = add i14 %tmp.1.cast3, 44, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.43 = zext i14 %tmp.10.40 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.44.0.1 = add i14 %tmp.1.cast3, 45, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.44.0.1 = zext i14 %tmp.10.44.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.88 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.44.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].44" = load i32* %video.addr.88, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].44"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.44.2.1 = add i14 %tmp.1.cast3, 245, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.44.2.1 = zext i14 %tmp.10.44.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.89 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.44.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].44" = load i32* %video.addr.89, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].44"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.91 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].44", i32 %"block[7].44") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.89 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.43, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.91, i32* %sob_x1.addr.89, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.92 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].44", i32 %"block[7].44") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.89 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.43, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.92, i32* %sob_y1.addr.89, align 4, !dbg !76 ; [debug line = 59:6]
  br label %95

; <label>:97                                      ; preds = %.preheader.preheader.45, %98
  br i1 %tmp, label %100, label %.preheader.preheader.46, !dbg !58 ; [debug line = 41:7]

; <label>:98                                      ; preds = %95
  %tmp.4.44 = add i14 %tmp.1.cast3, 45, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.44 = zext i14 %tmp.4.44 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.90 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.44, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.90, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.90 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.44, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.90, align 4, !dbg !63 ; [debug line = 44:6]
  br label %97, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.45:                          ; preds = %95
  %tmp.10.41 = add i14 %tmp.1.cast3, 45, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.44 = zext i14 %tmp.10.41 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.45.0.1 = add i14 %tmp.1.cast3, 46, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.45.0.1 = zext i14 %tmp.10.45.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.90 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.45.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].45" = load i32* %video.addr.90, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].45"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.45.2.1 = add i14 %tmp.1.cast3, 246, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.45.2.1 = zext i14 %tmp.10.45.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.91 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.45.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].45" = load i32* %video.addr.91, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].45"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.93 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].45", i32 %"block[7].45") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.91 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.44, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.93, i32* %sob_x1.addr.91, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.94 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].45", i32 %"block[7].45") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.91 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.44, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.94, i32* %sob_y1.addr.91, align 4, !dbg !76 ; [debug line = 59:6]
  br label %97

; <label>:99                                      ; preds = %.preheader.preheader.46, %100
  br i1 %tmp, label %102, label %.preheader.preheader.47, !dbg !58 ; [debug line = 41:7]

; <label>:100                                     ; preds = %97
  %tmp.4.45 = add i14 %tmp.1.cast3, 46, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.45 = zext i14 %tmp.4.45 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.92 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.45, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.92, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.92 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.45, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.92, align 4, !dbg !63 ; [debug line = 44:6]
  br label %99, !dbg !64                          ; [debug line = 45:4]

.preheader.preheader.46:                          ; preds = %97
  %tmp.10.42 = add i14 %tmp.1.cast3, 46, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.45 = zext i14 %tmp.10.42 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.46.0.1 = add i14 %tmp.1.cast3, 47, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.46.0.1 = zext i14 %tmp.10.46.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.92 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.46.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].46" = load i32* %video.addr.92, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].46"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.46.2.1 = add i14 %tmp.1.cast3, 247, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.46.2.1 = zext i14 %tmp.10.46.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.93 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.46.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].46" = load i32* %video.addr.93, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].46"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.95 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].46", i32 %"block[7].46") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.93 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.45, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.95, i32* %sob_x1.addr.93, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.96 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].46", i32 %"block[7].46") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.93 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.45, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.96, i32* %sob_y1.addr.93, align 4, !dbg !76 ; [debug line = 59:6]
  br label %99

; <label>:101                                     ; preds = %.preheader.preheader.47, %102
  br i1 %tmp, label %104, label %.preheader.preheader.48, !dbg !58 ; [debug line = 41:7]

; <label>:102                                     ; preds = %99
  %tmp.4.46 = add i14 %tmp.1.cast3, 47, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.46 = zext i14 %tmp.4.46 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.94 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.46, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.94, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.94 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.46, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.94, align 4, !dbg !63 ; [debug line = 44:6]
  br label %101, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.47:                          ; preds = %99
  %tmp.10.43 = add i14 %tmp.1.cast3, 47, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.46 = zext i14 %tmp.10.43 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.47.0.1 = add i14 %tmp.1.cast3, 48, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.47.0.1 = zext i14 %tmp.10.47.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.94 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.47.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].47" = load i32* %video.addr.94, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].47"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.47.2.1 = add i14 %tmp.1.cast3, 248, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.47.2.1 = zext i14 %tmp.10.47.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.95 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.47.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].47" = load i32* %video.addr.95, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].47"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.97 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].47", i32 %"block[7].47") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.95 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.46, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.97, i32* %sob_x1.addr.95, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.98 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].47", i32 %"block[7].47") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.95 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.46, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.98, i32* %sob_y1.addr.95, align 4, !dbg !76 ; [debug line = 59:6]
  br label %101

; <label>:103                                     ; preds = %.preheader.preheader.48, %104
  br i1 %tmp, label %106, label %.preheader.preheader.49, !dbg !58 ; [debug line = 41:7]

; <label>:104                                     ; preds = %101
  %tmp.4.47 = add i14 %tmp.1.cast3, 48, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.47 = zext i14 %tmp.4.47 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.96 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.47, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.96, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.96 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.47, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.96, align 4, !dbg !63 ; [debug line = 44:6]
  br label %103, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.48:                          ; preds = %101
  %tmp.10.44 = add i14 %tmp.1.cast3, 48, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.47 = zext i14 %tmp.10.44 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.48.0.1 = add i14 %tmp.1.cast3, 49, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.48.0.1 = zext i14 %tmp.10.48.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.96 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.48.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].48" = load i32* %video.addr.96, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].48"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.48.2.1 = add i14 %tmp.1.cast3, 249, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.48.2.1 = zext i14 %tmp.10.48.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.97 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.48.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].48" = load i32* %video.addr.97, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].48"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.99 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].48", i32 %"block[7].48") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.97 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.47, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.99, i32* %sob_x1.addr.97, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.100 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].48", i32 %"block[7].48") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.97 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.47, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.100, i32* %sob_y1.addr.97, align 4, !dbg !76 ; [debug line = 59:6]
  br label %103

; <label>:105                                     ; preds = %.preheader.preheader.49, %106
  br i1 %tmp, label %108, label %.preheader.preheader.50, !dbg !58 ; [debug line = 41:7]

; <label>:106                                     ; preds = %103
  %tmp.4.48 = add i14 %tmp.1.cast3, 49, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.48 = zext i14 %tmp.4.48 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.98 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.48, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.98, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.98 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.48, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.98, align 4, !dbg !63 ; [debug line = 44:6]
  br label %105, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.49:                          ; preds = %103
  %tmp.10.45 = add i14 %tmp.1.cast3, 49, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.48 = zext i14 %tmp.10.45 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.49.0.1 = add i14 %tmp.1.cast3, 50, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.49.0.1 = zext i14 %tmp.10.49.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.98 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.49.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].49" = load i32* %video.addr.98, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].49"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.49.2.1 = add i14 %tmp.1.cast3, 250, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.49.2.1 = zext i14 %tmp.10.49.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.99 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.49.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].49" = load i32* %video.addr.99, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].49"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.101 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].49", i32 %"block[7].49") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.99 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.48, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.101, i32* %sob_x1.addr.99, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.102 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].49", i32 %"block[7].49") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.99 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.48, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.102, i32* %sob_y1.addr.99, align 4, !dbg !76 ; [debug line = 59:6]
  br label %105

; <label>:107                                     ; preds = %.preheader.preheader.50, %108
  br i1 %tmp, label %110, label %.preheader.preheader.51, !dbg !58 ; [debug line = 41:7]

; <label>:108                                     ; preds = %105
  %tmp.4.49 = add i14 %tmp.1.cast3, 50, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.49 = zext i14 %tmp.4.49 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.100 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.49, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.100, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.100 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.49, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.100, align 4, !dbg !63 ; [debug line = 44:6]
  br label %107, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.50:                          ; preds = %105
  %tmp.10.46 = add i14 %tmp.1.cast3, 50, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.49 = zext i14 %tmp.10.46 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.50.0.1 = add i14 %tmp.1.cast3, 51, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.50.0.1 = zext i14 %tmp.10.50.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.100 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.50.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].50" = load i32* %video.addr.100, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].50"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.50.2.1 = add i14 %tmp.1.cast3, 251, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.50.2.1 = zext i14 %tmp.10.50.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.101 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.50.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].50" = load i32* %video.addr.101, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].50"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.103 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].50", i32 %"block[7].50") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.101 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.49, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.103, i32* %sob_x1.addr.101, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.104 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].50", i32 %"block[7].50") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.101 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.49, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.104, i32* %sob_y1.addr.101, align 4, !dbg !76 ; [debug line = 59:6]
  br label %107

; <label>:109                                     ; preds = %.preheader.preheader.51, %110
  br i1 %tmp, label %112, label %.preheader.preheader.52, !dbg !58 ; [debug line = 41:7]

; <label>:110                                     ; preds = %107
  %tmp.4.50 = add i14 %tmp.1.cast3, 51, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.50 = zext i14 %tmp.4.50 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.102 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.50, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.102, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.102 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.50, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.102, align 4, !dbg !63 ; [debug line = 44:6]
  br label %109, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.51:                          ; preds = %107
  %tmp.10.47 = add i14 %tmp.1.cast3, 51, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.50 = zext i14 %tmp.10.47 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.51.0.1 = add i14 %tmp.1.cast3, 52, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.51.0.1 = zext i14 %tmp.10.51.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.102 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.51.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].51" = load i32* %video.addr.102, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].51"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.51.2.1 = add i14 %tmp.1.cast3, 252, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.51.2.1 = zext i14 %tmp.10.51.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.103 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.51.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].51" = load i32* %video.addr.103, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].51"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.105 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].51", i32 %"block[7].51") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.103 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.50, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.105, i32* %sob_x1.addr.103, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.106 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].51", i32 %"block[7].51") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.103 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.50, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.106, i32* %sob_y1.addr.103, align 4, !dbg !76 ; [debug line = 59:6]
  br label %109

; <label>:111                                     ; preds = %.preheader.preheader.52, %112
  br i1 %tmp, label %114, label %.preheader.preheader.53, !dbg !58 ; [debug line = 41:7]

; <label>:112                                     ; preds = %109
  %tmp.4.51 = add i14 %tmp.1.cast3, 52, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.51 = zext i14 %tmp.4.51 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.104 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.51, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.104, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.104 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.51, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.104, align 4, !dbg !63 ; [debug line = 44:6]
  br label %111, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.52:                          ; preds = %109
  %tmp.10.48 = add i14 %tmp.1.cast3, 52, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.51 = zext i14 %tmp.10.48 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.52.0.1 = add i14 %tmp.1.cast3, 53, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.52.0.1 = zext i14 %tmp.10.52.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.104 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.52.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].52" = load i32* %video.addr.104, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].52"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.52.2.1 = add i14 %tmp.1.cast3, 253, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.52.2.1 = zext i14 %tmp.10.52.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.105 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.52.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].52" = load i32* %video.addr.105, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].52"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.107 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].52", i32 %"block[7].52") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.105 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.51, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.107, i32* %sob_x1.addr.105, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.108 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].52", i32 %"block[7].52") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.105 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.51, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.108, i32* %sob_y1.addr.105, align 4, !dbg !76 ; [debug line = 59:6]
  br label %111

; <label>:113                                     ; preds = %.preheader.preheader.53, %114
  br i1 %tmp, label %116, label %.preheader.preheader.54, !dbg !58 ; [debug line = 41:7]

; <label>:114                                     ; preds = %111
  %tmp.4.52 = add i14 %tmp.1.cast3, 53, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.52 = zext i14 %tmp.4.52 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.106 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.52, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.106, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.106 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.52, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.106, align 4, !dbg !63 ; [debug line = 44:6]
  br label %113, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.53:                          ; preds = %111
  %tmp.10.49 = add i14 %tmp.1.cast3, 53, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.52 = zext i14 %tmp.10.49 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.53.0.1 = add i14 %tmp.1.cast3, 54, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.53.0.1 = zext i14 %tmp.10.53.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.106 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.53.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].53" = load i32* %video.addr.106, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].53"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.53.2.1 = add i14 %tmp.1.cast3, 254, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.53.2.1 = zext i14 %tmp.10.53.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.107 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.53.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].53" = load i32* %video.addr.107, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].53"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.109 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].53", i32 %"block[7].53") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.107 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.52, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.109, i32* %sob_x1.addr.107, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.110 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].53", i32 %"block[7].53") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.107 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.52, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.110, i32* %sob_y1.addr.107, align 4, !dbg !76 ; [debug line = 59:6]
  br label %113

; <label>:115                                     ; preds = %.preheader.preheader.54, %116
  br i1 %tmp, label %118, label %.preheader.preheader.55, !dbg !58 ; [debug line = 41:7]

; <label>:116                                     ; preds = %113
  %tmp.4.53 = add i14 %tmp.1.cast3, 54, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.53 = zext i14 %tmp.4.53 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.108 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.53, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.108, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.108 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.53, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.108, align 4, !dbg !63 ; [debug line = 44:6]
  br label %115, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.54:                          ; preds = %113
  %tmp.10.50 = add i14 %tmp.1.cast3, 54, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.53 = zext i14 %tmp.10.50 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.54.0.1 = add i14 %tmp.1.cast3, 55, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.54.0.1 = zext i14 %tmp.10.54.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.108 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.54.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].54" = load i32* %video.addr.108, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].54"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.54.2.1 = add i14 %tmp.1.cast3, 255, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.54.2.1 = zext i14 %tmp.10.54.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.109 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.54.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].54" = load i32* %video.addr.109, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].54"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.111 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].54", i32 %"block[7].54") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.109 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.53, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.111, i32* %sob_x1.addr.109, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.112 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].54", i32 %"block[7].54") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.109 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.53, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.112, i32* %sob_y1.addr.109, align 4, !dbg !76 ; [debug line = 59:6]
  br label %115

; <label>:117                                     ; preds = %.preheader.preheader.55, %118
  br i1 %tmp, label %120, label %.preheader.preheader.56, !dbg !58 ; [debug line = 41:7]

; <label>:118                                     ; preds = %115
  %tmp.4.54 = add i14 %tmp.1.cast3, 55, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.54 = zext i14 %tmp.4.54 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.110 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.54, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.110, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.110 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.54, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.110, align 4, !dbg !63 ; [debug line = 44:6]
  br label %117, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.55:                          ; preds = %115
  %tmp.10.51 = add i14 %tmp.1.cast3, 55, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.54 = zext i14 %tmp.10.51 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.55.0.1 = add i14 %tmp.1.cast3, 56, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.55.0.1 = zext i14 %tmp.10.55.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.110 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.55.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].55" = load i32* %video.addr.110, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].55"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.55.2.1 = add i14 %tmp.1.cast3, 256, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.55.2.1 = zext i14 %tmp.10.55.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.111 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.55.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].55" = load i32* %video.addr.111, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].55"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.113 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].55", i32 %"block[7].55") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.111 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.54, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.113, i32* %sob_x1.addr.111, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.114 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].55", i32 %"block[7].55") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.111 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.54, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.114, i32* %sob_y1.addr.111, align 4, !dbg !76 ; [debug line = 59:6]
  br label %117

; <label>:119                                     ; preds = %.preheader.preheader.56, %120
  br i1 %tmp, label %122, label %.preheader.preheader.57, !dbg !58 ; [debug line = 41:7]

; <label>:120                                     ; preds = %117
  %tmp.4.55 = add i14 %tmp.1.cast3, 56, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.55 = zext i14 %tmp.4.55 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.112 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.55, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.112, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.112 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.55, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.112, align 4, !dbg !63 ; [debug line = 44:6]
  br label %119, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.56:                          ; preds = %117
  %tmp.10.52 = add i14 %tmp.1.cast3, 56, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.55 = zext i14 %tmp.10.52 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.56.0.1 = add i14 %tmp.1.cast3, 57, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.56.0.1 = zext i14 %tmp.10.56.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.112 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.56.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].56" = load i32* %video.addr.112, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].56"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.56.2.1 = add i14 %tmp.1.cast3, 257, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.56.2.1 = zext i14 %tmp.10.56.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.113 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.56.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].56" = load i32* %video.addr.113, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].56"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.115 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].56", i32 %"block[7].56") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.113 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.55, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.115, i32* %sob_x1.addr.113, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.116 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].56", i32 %"block[7].56") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.113 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.55, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.116, i32* %sob_y1.addr.113, align 4, !dbg !76 ; [debug line = 59:6]
  br label %119

; <label>:121                                     ; preds = %.preheader.preheader.57, %122
  br i1 %tmp, label %124, label %.preheader.preheader.58, !dbg !58 ; [debug line = 41:7]

; <label>:122                                     ; preds = %119
  %tmp.4.56 = add i14 %tmp.1.cast3, 57, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.56 = zext i14 %tmp.4.56 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.114 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.56, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.114, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.114 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.56, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.114, align 4, !dbg !63 ; [debug line = 44:6]
  br label %121, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.57:                          ; preds = %119
  %tmp.10.53 = add i14 %tmp.1.cast3, 57, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.56 = zext i14 %tmp.10.53 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.57.0.1 = add i14 %tmp.1.cast3, 58, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.57.0.1 = zext i14 %tmp.10.57.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.114 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.57.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].57" = load i32* %video.addr.114, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].57"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.57.2.1 = add i14 %tmp.1.cast3, 258, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.57.2.1 = zext i14 %tmp.10.57.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.115 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.57.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].57" = load i32* %video.addr.115, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].57"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.117 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].57", i32 %"block[7].57") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.115 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.56, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.117, i32* %sob_x1.addr.115, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.118 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].57", i32 %"block[7].57") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.115 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.56, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.118, i32* %sob_y1.addr.115, align 4, !dbg !76 ; [debug line = 59:6]
  br label %121

; <label>:123                                     ; preds = %.preheader.preheader.58, %124
  br i1 %tmp, label %126, label %.preheader.preheader.59, !dbg !58 ; [debug line = 41:7]

; <label>:124                                     ; preds = %121
  %tmp.4.57 = add i14 %tmp.1.cast3, 58, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.57 = zext i14 %tmp.4.57 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.116 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.57, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.116, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.116 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.57, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.116, align 4, !dbg !63 ; [debug line = 44:6]
  br label %123, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.58:                          ; preds = %121
  %tmp.10.54 = add i14 %tmp.1.cast3, 58, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.57 = zext i14 %tmp.10.54 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.58.0.1 = add i14 %tmp.1.cast3, 59, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.58.0.1 = zext i14 %tmp.10.58.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.116 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.58.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].58" = load i32* %video.addr.116, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].58"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.58.2.1 = add i14 %tmp.1.cast3, 259, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.58.2.1 = zext i14 %tmp.10.58.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.117 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.58.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].58" = load i32* %video.addr.117, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].58"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.119 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].58", i32 %"block[7].58") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.117 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.57, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.119, i32* %sob_x1.addr.117, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.120 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].58", i32 %"block[7].58") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.117 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.57, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.120, i32* %sob_y1.addr.117, align 4, !dbg !76 ; [debug line = 59:6]
  br label %123

; <label>:125                                     ; preds = %.preheader.preheader.59, %126
  br i1 %tmp, label %128, label %.preheader.preheader.60, !dbg !58 ; [debug line = 41:7]

; <label>:126                                     ; preds = %123
  %tmp.4.58 = add i14 %tmp.1.cast3, 59, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.58 = zext i14 %tmp.4.58 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.118 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.58, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.118, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.118 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.58, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.118, align 4, !dbg !63 ; [debug line = 44:6]
  br label %125, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.59:                          ; preds = %123
  %tmp.10.55 = add i14 %tmp.1.cast3, 59, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.58 = zext i14 %tmp.10.55 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.59.0.1 = add i14 %tmp.1.cast3, 60, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.59.0.1 = zext i14 %tmp.10.59.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.118 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.59.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].59" = load i32* %video.addr.118, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].59"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.59.2.1 = add i14 %tmp.1.cast3, 260, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.59.2.1 = zext i14 %tmp.10.59.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.119 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.59.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].59" = load i32* %video.addr.119, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].59"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.121 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].59", i32 %"block[7].59") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.119 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.58, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.121, i32* %sob_x1.addr.119, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.122 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].59", i32 %"block[7].59") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.119 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.58, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.122, i32* %sob_y1.addr.119, align 4, !dbg !76 ; [debug line = 59:6]
  br label %125

; <label>:127                                     ; preds = %.preheader.preheader.60, %128
  br i1 %tmp, label %130, label %.preheader.preheader.61, !dbg !58 ; [debug line = 41:7]

; <label>:128                                     ; preds = %125
  %tmp.4.59 = add i14 %tmp.1.cast3, 60, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.59 = zext i14 %tmp.4.59 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.120 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.59, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.120, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.120 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.59, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.120, align 4, !dbg !63 ; [debug line = 44:6]
  br label %127, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.60:                          ; preds = %125
  %tmp.10.56 = add i14 %tmp.1.cast3, 60, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.59 = zext i14 %tmp.10.56 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.60.0.1 = add i14 %tmp.1.cast3, 61, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.60.0.1 = zext i14 %tmp.10.60.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.120 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.60.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].60" = load i32* %video.addr.120, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].60"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.60.2.1 = add i14 %tmp.1.cast3, 261, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.60.2.1 = zext i14 %tmp.10.60.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.121 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.60.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].60" = load i32* %video.addr.121, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].60"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.123 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].60", i32 %"block[7].60") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.121 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.59, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.123, i32* %sob_x1.addr.121, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.124 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].60", i32 %"block[7].60") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.121 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.59, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.124, i32* %sob_y1.addr.121, align 4, !dbg !76 ; [debug line = 59:6]
  br label %127

; <label>:129                                     ; preds = %.preheader.preheader.61, %130
  br i1 %tmp, label %132, label %.preheader.preheader.62, !dbg !58 ; [debug line = 41:7]

; <label>:130                                     ; preds = %127
  %tmp.4.60 = add i14 %tmp.1.cast3, 61, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.60 = zext i14 %tmp.4.60 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.122 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.60, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.122, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.122 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.60, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.122, align 4, !dbg !63 ; [debug line = 44:6]
  br label %129, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.61:                          ; preds = %127
  %tmp.10.57 = add i14 %tmp.1.cast3, 61, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.60 = zext i14 %tmp.10.57 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.61.0.1 = add i14 %tmp.1.cast3, 62, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.61.0.1 = zext i14 %tmp.10.61.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.122 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.61.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].61" = load i32* %video.addr.122, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].61"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.61.2.1 = add i14 %tmp.1.cast3, 262, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.61.2.1 = zext i14 %tmp.10.61.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.123 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.61.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].61" = load i32* %video.addr.123, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].61"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.125 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].61", i32 %"block[7].61") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.123 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.60, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.125, i32* %sob_x1.addr.123, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.126 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].61", i32 %"block[7].61") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.123 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.60, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.126, i32* %sob_y1.addr.123, align 4, !dbg !76 ; [debug line = 59:6]
  br label %129

; <label>:131                                     ; preds = %.preheader.preheader.62, %132
  br i1 %tmp, label %134, label %.preheader.preheader.63, !dbg !58 ; [debug line = 41:7]

; <label>:132                                     ; preds = %129
  %tmp.4.61 = add i14 %tmp.1.cast3, 62, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.61 = zext i14 %tmp.4.61 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.124 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.61, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.124, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.124 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.61, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.124, align 4, !dbg !63 ; [debug line = 44:6]
  br label %131, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.62:                          ; preds = %129
  %tmp.10.58 = add i14 %tmp.1.cast3, 62, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.61 = zext i14 %tmp.10.58 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.62.0.1 = add i14 %tmp.1.cast3, 63, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.62.0.1 = zext i14 %tmp.10.62.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.124 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.62.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].62" = load i32* %video.addr.124, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].62"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.62.2.1 = add i14 %tmp.1.cast3, 263, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.62.2.1 = zext i14 %tmp.10.62.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.125 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.62.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].62" = load i32* %video.addr.125, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].62"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.127 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].62", i32 %"block[7].62") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.125 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.61, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.127, i32* %sob_x1.addr.125, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.128 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].62", i32 %"block[7].62") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.125 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.61, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.128, i32* %sob_y1.addr.125, align 4, !dbg !76 ; [debug line = 59:6]
  br label %131

; <label>:133                                     ; preds = %.preheader.preheader.63, %134
  br i1 %tmp, label %136, label %.preheader.preheader.64, !dbg !58 ; [debug line = 41:7]

; <label>:134                                     ; preds = %131
  %tmp.4.62 = add i14 %tmp.1.cast3, 63, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.62 = zext i14 %tmp.4.62 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.126 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.62, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.126, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.126 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.62, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.126, align 4, !dbg !63 ; [debug line = 44:6]
  br label %133, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.63:                          ; preds = %131
  %tmp.10.59 = add i14 %tmp.1.cast3, 63, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.62 = zext i14 %tmp.10.59 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.63.0.1 = add i14 %tmp.1.cast3, 64, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.63.0.1 = zext i14 %tmp.10.63.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.126 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.63.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].63" = load i32* %video.addr.126, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].63"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.63.2.1 = add i14 %tmp.1.cast3, 264, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.63.2.1 = zext i14 %tmp.10.63.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.127 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.63.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].63" = load i32* %video.addr.127, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].63"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.129 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].63", i32 %"block[7].63") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.127 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.62, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.129, i32* %sob_x1.addr.127, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.130 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].63", i32 %"block[7].63") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.127 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.62, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.130, i32* %sob_y1.addr.127, align 4, !dbg !76 ; [debug line = 59:6]
  br label %133

; <label>:135                                     ; preds = %.preheader.preheader.64, %136
  br i1 %tmp, label %138, label %.preheader.preheader.65, !dbg !58 ; [debug line = 41:7]

; <label>:136                                     ; preds = %133
  %tmp.4.63 = add i14 %tmp.1.cast3, 64, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.63 = zext i14 %tmp.4.63 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.128 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.63, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.128, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.128 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.63, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.128, align 4, !dbg !63 ; [debug line = 44:6]
  br label %135, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.64:                          ; preds = %133
  %tmp.10.60 = add i14 %tmp.1.cast3, 64, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.63 = zext i14 %tmp.10.60 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.64.0.1 = add i14 %tmp.1.cast3, 65, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.64.0.1 = zext i14 %tmp.10.64.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.128 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.64.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].64" = load i32* %video.addr.128, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].64"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.64.2.1 = add i14 %tmp.1.cast3, 265, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.64.2.1 = zext i14 %tmp.10.64.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.129 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.64.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].64" = load i32* %video.addr.129, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].64"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.131 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].64", i32 %"block[7].64") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.129 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.63, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.131, i32* %sob_x1.addr.129, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.132 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].64", i32 %"block[7].64") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.129 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.63, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.132, i32* %sob_y1.addr.129, align 4, !dbg !76 ; [debug line = 59:6]
  br label %135

; <label>:137                                     ; preds = %.preheader.preheader.65, %138
  br i1 %tmp, label %140, label %.preheader.preheader.66, !dbg !58 ; [debug line = 41:7]

; <label>:138                                     ; preds = %135
  %tmp.4.64 = add i14 %tmp.1.cast3, 65, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.64 = zext i14 %tmp.4.64 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.130 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.64, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.130, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.130 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.64, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.130, align 4, !dbg !63 ; [debug line = 44:6]
  br label %137, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.65:                          ; preds = %135
  %tmp.10.61 = add i14 %tmp.1.cast3, 65, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.64 = zext i14 %tmp.10.61 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.65.0.1 = add i14 %tmp.1.cast3, 66, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.65.0.1 = zext i14 %tmp.10.65.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.130 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.65.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].65" = load i32* %video.addr.130, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].65"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.65.2.1 = add i14 %tmp.1.cast3, 266, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.65.2.1 = zext i14 %tmp.10.65.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.131 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.65.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].65" = load i32* %video.addr.131, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].65"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.133 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].65", i32 %"block[7].65") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.131 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.64, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.133, i32* %sob_x1.addr.131, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.134 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].65", i32 %"block[7].65") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.131 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.64, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.134, i32* %sob_y1.addr.131, align 4, !dbg !76 ; [debug line = 59:6]
  br label %137

; <label>:139                                     ; preds = %.preheader.preheader.66, %140
  br i1 %tmp, label %142, label %.preheader.preheader.67, !dbg !58 ; [debug line = 41:7]

; <label>:140                                     ; preds = %137
  %tmp.4.65 = add i14 %tmp.1.cast3, 66, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.65 = zext i14 %tmp.4.65 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.132 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.65, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.132, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.132 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.65, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.132, align 4, !dbg !63 ; [debug line = 44:6]
  br label %139, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.66:                          ; preds = %137
  %tmp.10.62 = add i14 %tmp.1.cast3, 66, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.65 = zext i14 %tmp.10.62 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.66.0.1 = add i14 %tmp.1.cast3, 67, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.66.0.1 = zext i14 %tmp.10.66.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.132 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.66.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].66" = load i32* %video.addr.132, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].66"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.66.2.1 = add i14 %tmp.1.cast3, 267, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.66.2.1 = zext i14 %tmp.10.66.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.133 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.66.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].66" = load i32* %video.addr.133, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].66"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.135 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].66", i32 %"block[7].66") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.133 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.65, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.135, i32* %sob_x1.addr.133, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.136 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].66", i32 %"block[7].66") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.133 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.65, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.136, i32* %sob_y1.addr.133, align 4, !dbg !76 ; [debug line = 59:6]
  br label %139

; <label>:141                                     ; preds = %.preheader.preheader.67, %142
  br i1 %tmp, label %144, label %.preheader.preheader.68, !dbg !58 ; [debug line = 41:7]

; <label>:142                                     ; preds = %139
  %tmp.4.66 = add i14 %tmp.1.cast3, 67, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.66 = zext i14 %tmp.4.66 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.134 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.66, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.134, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.134 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.66, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.134, align 4, !dbg !63 ; [debug line = 44:6]
  br label %141, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.67:                          ; preds = %139
  %tmp.10.63 = add i14 %tmp.1.cast3, 67, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.66 = zext i14 %tmp.10.63 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.67.0.1 = add i14 %tmp.1.cast3, 68, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.67.0.1 = zext i14 %tmp.10.67.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.134 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.67.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].67" = load i32* %video.addr.134, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].67"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.67.2.1 = add i14 %tmp.1.cast3, 268, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.67.2.1 = zext i14 %tmp.10.67.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.135 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.67.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].67" = load i32* %video.addr.135, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].67"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.137 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].67", i32 %"block[7].67") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.135 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.66, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.137, i32* %sob_x1.addr.135, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.138 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].67", i32 %"block[7].67") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.135 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.66, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.138, i32* %sob_y1.addr.135, align 4, !dbg !76 ; [debug line = 59:6]
  br label %141

; <label>:143                                     ; preds = %.preheader.preheader.68, %144
  br i1 %tmp, label %146, label %.preheader.preheader.69, !dbg !58 ; [debug line = 41:7]

; <label>:144                                     ; preds = %141
  %tmp.4.67 = add i14 %tmp.1.cast3, 68, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.67 = zext i14 %tmp.4.67 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.136 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.67, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.136, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.136 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.67, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.136, align 4, !dbg !63 ; [debug line = 44:6]
  br label %143, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.68:                          ; preds = %141
  %tmp.10.64 = add i14 %tmp.1.cast3, 68, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.67 = zext i14 %tmp.10.64 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.68.0.1 = add i14 %tmp.1.cast3, 69, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.68.0.1 = zext i14 %tmp.10.68.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.136 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.68.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].68" = load i32* %video.addr.136, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].68"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.68.2.1 = add i14 %tmp.1.cast3, 269, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.68.2.1 = zext i14 %tmp.10.68.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.137 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.68.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].68" = load i32* %video.addr.137, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].68"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.139 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].68", i32 %"block[7].68") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.137 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.67, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.139, i32* %sob_x1.addr.137, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.140 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].68", i32 %"block[7].68") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.137 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.67, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.140, i32* %sob_y1.addr.137, align 4, !dbg !76 ; [debug line = 59:6]
  br label %143

; <label>:145                                     ; preds = %.preheader.preheader.69, %146
  br i1 %tmp, label %148, label %.preheader.preheader.70, !dbg !58 ; [debug line = 41:7]

; <label>:146                                     ; preds = %143
  %tmp.4.68 = add i14 %tmp.1.cast3, 69, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.68 = zext i14 %tmp.4.68 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.138 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.68, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.138, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.138 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.68, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.138, align 4, !dbg !63 ; [debug line = 44:6]
  br label %145, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.69:                          ; preds = %143
  %tmp.10.65 = add i14 %tmp.1.cast3, 69, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.68 = zext i14 %tmp.10.65 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.69.0.1 = add i14 %tmp.1.cast3, 70, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.69.0.1 = zext i14 %tmp.10.69.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.138 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.69.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].69" = load i32* %video.addr.138, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].69"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.69.2.1 = add i14 %tmp.1.cast3, 270, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.69.2.1 = zext i14 %tmp.10.69.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.139 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.69.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].69" = load i32* %video.addr.139, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].69"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.141 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].69", i32 %"block[7].69") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.139 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.68, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.141, i32* %sob_x1.addr.139, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.142 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].69", i32 %"block[7].69") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.139 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.68, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.142, i32* %sob_y1.addr.139, align 4, !dbg !76 ; [debug line = 59:6]
  br label %145

; <label>:147                                     ; preds = %.preheader.preheader.70, %148
  br i1 %tmp, label %150, label %.preheader.preheader.71, !dbg !58 ; [debug line = 41:7]

; <label>:148                                     ; preds = %145
  %tmp.4.69 = add i14 %tmp.1.cast3, 70, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.69 = zext i14 %tmp.4.69 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.140 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.69, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.140, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.140 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.69, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.140, align 4, !dbg !63 ; [debug line = 44:6]
  br label %147, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.70:                          ; preds = %145
  %tmp.10.66 = add i14 %tmp.1.cast3, 70, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.69 = zext i14 %tmp.10.66 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.70.0.1 = add i14 %tmp.1.cast3, 71, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.70.0.1 = zext i14 %tmp.10.70.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.140 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.70.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].70" = load i32* %video.addr.140, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].70"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.70.2.1 = add i14 %tmp.1.cast3, 271, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.70.2.1 = zext i14 %tmp.10.70.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.141 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.70.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].70" = load i32* %video.addr.141, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].70"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.143 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].70", i32 %"block[7].70") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.141 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.69, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.143, i32* %sob_x1.addr.141, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.144 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].70", i32 %"block[7].70") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.141 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.69, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.144, i32* %sob_y1.addr.141, align 4, !dbg !76 ; [debug line = 59:6]
  br label %147

; <label>:149                                     ; preds = %.preheader.preheader.71, %150
  br i1 %tmp, label %152, label %.preheader.preheader.72, !dbg !58 ; [debug line = 41:7]

; <label>:150                                     ; preds = %147
  %tmp.4.70 = add i14 %tmp.1.cast3, 71, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.70 = zext i14 %tmp.4.70 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.142 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.70, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.142, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.142 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.70, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.142, align 4, !dbg !63 ; [debug line = 44:6]
  br label %149, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.71:                          ; preds = %147
  %tmp.10.67 = add i14 %tmp.1.cast3, 71, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.70 = zext i14 %tmp.10.67 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.71.0.1 = add i14 %tmp.1.cast3, 72, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.71.0.1 = zext i14 %tmp.10.71.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.142 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.71.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].71" = load i32* %video.addr.142, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].71"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.71.2.1 = add i14 %tmp.1.cast3, 272, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.71.2.1 = zext i14 %tmp.10.71.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.143 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.71.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].71" = load i32* %video.addr.143, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].71"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.145 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].71", i32 %"block[7].71") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.143 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.70, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.145, i32* %sob_x1.addr.143, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.146 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].71", i32 %"block[7].71") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.143 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.70, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.146, i32* %sob_y1.addr.143, align 4, !dbg !76 ; [debug line = 59:6]
  br label %149

; <label>:151                                     ; preds = %.preheader.preheader.72, %152
  br i1 %tmp, label %154, label %.preheader.preheader.73, !dbg !58 ; [debug line = 41:7]

; <label>:152                                     ; preds = %149
  %tmp.4.71 = add i14 %tmp.1.cast3, 72, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.71 = zext i14 %tmp.4.71 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.144 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.71, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.144, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.144 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.71, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.144, align 4, !dbg !63 ; [debug line = 44:6]
  br label %151, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.72:                          ; preds = %149
  %tmp.10.68 = add i14 %tmp.1.cast3, 72, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.71 = zext i14 %tmp.10.68 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.72.0.1 = add i14 %tmp.1.cast3, 73, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.72.0.1 = zext i14 %tmp.10.72.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.144 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.72.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].72" = load i32* %video.addr.144, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].72"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.72.2.1 = add i14 %tmp.1.cast3, 273, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.72.2.1 = zext i14 %tmp.10.72.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.145 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.72.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].72" = load i32* %video.addr.145, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].72"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.147 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].72", i32 %"block[7].72") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.145 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.71, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.147, i32* %sob_x1.addr.145, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.148 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].72", i32 %"block[7].72") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.145 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.71, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.148, i32* %sob_y1.addr.145, align 4, !dbg !76 ; [debug line = 59:6]
  br label %151

; <label>:153                                     ; preds = %.preheader.preheader.73, %154
  br i1 %tmp, label %156, label %.preheader.preheader.74, !dbg !58 ; [debug line = 41:7]

; <label>:154                                     ; preds = %151
  %tmp.4.72 = add i14 %tmp.1.cast3, 73, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.72 = zext i14 %tmp.4.72 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.146 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.72, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.146, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.146 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.72, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.146, align 4, !dbg !63 ; [debug line = 44:6]
  br label %153, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.73:                          ; preds = %151
  %tmp.10.69 = add i14 %tmp.1.cast3, 73, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.72 = zext i14 %tmp.10.69 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.73.0.1 = add i14 %tmp.1.cast3, 74, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.73.0.1 = zext i14 %tmp.10.73.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.146 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.73.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].73" = load i32* %video.addr.146, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].73"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.73.2.1 = add i14 %tmp.1.cast3, 274, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.73.2.1 = zext i14 %tmp.10.73.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.147 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.73.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].73" = load i32* %video.addr.147, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].73"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.149 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].73", i32 %"block[7].73") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.147 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.72, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.149, i32* %sob_x1.addr.147, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.150 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].73", i32 %"block[7].73") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.147 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.72, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.150, i32* %sob_y1.addr.147, align 4, !dbg !76 ; [debug line = 59:6]
  br label %153

; <label>:155                                     ; preds = %.preheader.preheader.74, %156
  br i1 %tmp, label %158, label %.preheader.preheader.75, !dbg !58 ; [debug line = 41:7]

; <label>:156                                     ; preds = %153
  %tmp.4.73 = add i14 %tmp.1.cast3, 74, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.73 = zext i14 %tmp.4.73 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.148 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.73, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.148, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.148 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.73, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.148, align 4, !dbg !63 ; [debug line = 44:6]
  br label %155, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.74:                          ; preds = %153
  %tmp.10.70 = add i14 %tmp.1.cast3, 74, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.73 = zext i14 %tmp.10.70 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.74.0.1 = add i14 %tmp.1.cast3, 75, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.74.0.1 = zext i14 %tmp.10.74.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.148 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.74.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].74" = load i32* %video.addr.148, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].74"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.74.2.1 = add i14 %tmp.1.cast3, 275, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.74.2.1 = zext i14 %tmp.10.74.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.149 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.74.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].74" = load i32* %video.addr.149, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].74"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.151 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].74", i32 %"block[7].74") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.149 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.73, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.151, i32* %sob_x1.addr.149, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.152 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].74", i32 %"block[7].74") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.149 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.73, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.152, i32* %sob_y1.addr.149, align 4, !dbg !76 ; [debug line = 59:6]
  br label %155

; <label>:157                                     ; preds = %.preheader.preheader.75, %158
  br i1 %tmp, label %160, label %.preheader.preheader.76, !dbg !58 ; [debug line = 41:7]

; <label>:158                                     ; preds = %155
  %tmp.4.74 = add i14 %tmp.1.cast3, 75, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.74 = zext i14 %tmp.4.74 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.150 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.74, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.150, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.150 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.74, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.150, align 4, !dbg !63 ; [debug line = 44:6]
  br label %157, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.75:                          ; preds = %155
  %tmp.10.71 = add i14 %tmp.1.cast3, 75, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.74 = zext i14 %tmp.10.71 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.75.0.1 = add i14 %tmp.1.cast3, 76, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.75.0.1 = zext i14 %tmp.10.75.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.150 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.75.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].75" = load i32* %video.addr.150, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].75"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.75.2.1 = add i14 %tmp.1.cast3, 276, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.75.2.1 = zext i14 %tmp.10.75.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.151 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.75.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].75" = load i32* %video.addr.151, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].75"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.153 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].75", i32 %"block[7].75") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.151 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.74, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.153, i32* %sob_x1.addr.151, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.154 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].75", i32 %"block[7].75") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.151 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.74, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.154, i32* %sob_y1.addr.151, align 4, !dbg !76 ; [debug line = 59:6]
  br label %157

; <label>:159                                     ; preds = %.preheader.preheader.76, %160
  br i1 %tmp, label %162, label %.preheader.preheader.77, !dbg !58 ; [debug line = 41:7]

; <label>:160                                     ; preds = %157
  %tmp.4.75 = add i14 %tmp.1.cast3, 76, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.75 = zext i14 %tmp.4.75 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.152 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.75, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.152, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.152 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.75, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.152, align 4, !dbg !63 ; [debug line = 44:6]
  br label %159, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.76:                          ; preds = %157
  %tmp.10.72 = add i14 %tmp.1.cast3, 76, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.75 = zext i14 %tmp.10.72 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.76.0.1 = add i14 %tmp.1.cast3, 77, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.76.0.1 = zext i14 %tmp.10.76.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.152 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.76.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].76" = load i32* %video.addr.152, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].76"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.76.2.1 = add i14 %tmp.1.cast3, 277, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.76.2.1 = zext i14 %tmp.10.76.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.153 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.76.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].76" = load i32* %video.addr.153, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].76"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.155 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].76", i32 %"block[7].76") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.153 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.75, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.155, i32* %sob_x1.addr.153, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.156 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].76", i32 %"block[7].76") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.153 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.75, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.156, i32* %sob_y1.addr.153, align 4, !dbg !76 ; [debug line = 59:6]
  br label %159

; <label>:161                                     ; preds = %.preheader.preheader.77, %162
  br i1 %tmp, label %164, label %.preheader.preheader.78, !dbg !58 ; [debug line = 41:7]

; <label>:162                                     ; preds = %159
  %tmp.4.76 = add i14 %tmp.1.cast3, 77, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.76 = zext i14 %tmp.4.76 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.154 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.76, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.154, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.154 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.76, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.154, align 4, !dbg !63 ; [debug line = 44:6]
  br label %161, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.77:                          ; preds = %159
  %tmp.10.73 = add i14 %tmp.1.cast3, 77, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.76 = zext i14 %tmp.10.73 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.77.0.1 = add i14 %tmp.1.cast3, 78, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.77.0.1 = zext i14 %tmp.10.77.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.154 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.77.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].77" = load i32* %video.addr.154, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].77"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.77.2.1 = add i14 %tmp.1.cast3, 278, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.77.2.1 = zext i14 %tmp.10.77.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.155 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.77.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].77" = load i32* %video.addr.155, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].77"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.157 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].77", i32 %"block[7].77") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.155 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.76, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.157, i32* %sob_x1.addr.155, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.158 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].77", i32 %"block[7].77") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.155 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.76, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.158, i32* %sob_y1.addr.155, align 4, !dbg !76 ; [debug line = 59:6]
  br label %161

; <label>:163                                     ; preds = %.preheader.preheader.78, %164
  br i1 %tmp, label %166, label %.preheader.preheader.79, !dbg !58 ; [debug line = 41:7]

; <label>:164                                     ; preds = %161
  %tmp.4.77 = add i14 %tmp.1.cast3, 78, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.77 = zext i14 %tmp.4.77 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.156 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.77, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.156, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.156 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.77, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.156, align 4, !dbg !63 ; [debug line = 44:6]
  br label %163, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.78:                          ; preds = %161
  %tmp.10.74 = add i14 %tmp.1.cast3, 78, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.77 = zext i14 %tmp.10.74 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.78.0.1 = add i14 %tmp.1.cast3, 79, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.78.0.1 = zext i14 %tmp.10.78.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.156 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.78.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].78" = load i32* %video.addr.156, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].78"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.78.2.1 = add i14 %tmp.1.cast3, 279, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.78.2.1 = zext i14 %tmp.10.78.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.157 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.78.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].78" = load i32* %video.addr.157, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].78"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.159 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].78", i32 %"block[7].78") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.157 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.77, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.159, i32* %sob_x1.addr.157, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.160 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].78", i32 %"block[7].78") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.157 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.77, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.160, i32* %sob_y1.addr.157, align 4, !dbg !76 ; [debug line = 59:6]
  br label %163

; <label>:165                                     ; preds = %.preheader.preheader.79, %166
  br i1 %tmp, label %168, label %.preheader.preheader.80, !dbg !58 ; [debug line = 41:7]

; <label>:166                                     ; preds = %163
  %tmp.4.78 = add i14 %tmp.1.cast3, 79, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.78 = zext i14 %tmp.4.78 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.158 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.78, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.158, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.158 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.78, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.158, align 4, !dbg !63 ; [debug line = 44:6]
  br label %165, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.79:                          ; preds = %163
  %tmp.10.75 = add i14 %tmp.1.cast3, 79, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.78 = zext i14 %tmp.10.75 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.79.0.1 = add i14 %tmp.1.cast3, 80, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.79.0.1 = zext i14 %tmp.10.79.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.158 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.79.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].79" = load i32* %video.addr.158, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].79"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.79.2.1 = add i14 %tmp.1.cast3, 280, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.79.2.1 = zext i14 %tmp.10.79.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.159 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.79.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].79" = load i32* %video.addr.159, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].79"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.161 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].79", i32 %"block[7].79") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.159 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.78, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.161, i32* %sob_x1.addr.159, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.162 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].79", i32 %"block[7].79") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.159 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.78, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.162, i32* %sob_y1.addr.159, align 4, !dbg !76 ; [debug line = 59:6]
  br label %165

; <label>:167                                     ; preds = %.preheader.preheader.80, %168
  br i1 %tmp, label %170, label %.preheader.preheader.81, !dbg !58 ; [debug line = 41:7]

; <label>:168                                     ; preds = %165
  %tmp.4.79 = add i14 %tmp.1.cast3, 80, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.79 = zext i14 %tmp.4.79 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.160 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.79, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.160, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.160 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.79, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.160, align 4, !dbg !63 ; [debug line = 44:6]
  br label %167, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.80:                          ; preds = %165
  %tmp.10.76 = add i14 %tmp.1.cast3, 80, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.79 = zext i14 %tmp.10.76 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.80.0.1 = add i14 %tmp.1.cast3, 81, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.80.0.1 = zext i14 %tmp.10.80.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.160 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.80.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].80" = load i32* %video.addr.160, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].80"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.80.2.1 = add i14 %tmp.1.cast3, 281, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.80.2.1 = zext i14 %tmp.10.80.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.161 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.80.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].80" = load i32* %video.addr.161, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].80"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.163 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].80", i32 %"block[7].80") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.161 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.79, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.163, i32* %sob_x1.addr.161, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.164 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].80", i32 %"block[7].80") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.161 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.79, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.164, i32* %sob_y1.addr.161, align 4, !dbg !76 ; [debug line = 59:6]
  br label %167

; <label>:169                                     ; preds = %.preheader.preheader.81, %170
  br i1 %tmp, label %172, label %.preheader.preheader.82, !dbg !58 ; [debug line = 41:7]

; <label>:170                                     ; preds = %167
  %tmp.4.80 = add i14 %tmp.1.cast3, 81, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.80 = zext i14 %tmp.4.80 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.162 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.80, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.162, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.162 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.80, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.162, align 4, !dbg !63 ; [debug line = 44:6]
  br label %169, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.81:                          ; preds = %167
  %tmp.10.77 = add i14 %tmp.1.cast3, 81, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.80 = zext i14 %tmp.10.77 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.81.0.1 = add i14 %tmp.1.cast3, 82, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.81.0.1 = zext i14 %tmp.10.81.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.162 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.81.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].81" = load i32* %video.addr.162, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].81"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.81.2.1 = add i14 %tmp.1.cast3, 282, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.81.2.1 = zext i14 %tmp.10.81.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.163 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.81.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].81" = load i32* %video.addr.163, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].81"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.165 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].81", i32 %"block[7].81") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.163 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.80, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.165, i32* %sob_x1.addr.163, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.166 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].81", i32 %"block[7].81") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.163 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.80, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.166, i32* %sob_y1.addr.163, align 4, !dbg !76 ; [debug line = 59:6]
  br label %169

; <label>:171                                     ; preds = %.preheader.preheader.82, %172
  br i1 %tmp, label %174, label %.preheader.preheader.83, !dbg !58 ; [debug line = 41:7]

; <label>:172                                     ; preds = %169
  %tmp.4.81 = add i14 %tmp.1.cast3, 82, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.81 = zext i14 %tmp.4.81 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.164 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.81, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.164, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.164 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.81, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.164, align 4, !dbg !63 ; [debug line = 44:6]
  br label %171, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.82:                          ; preds = %169
  %tmp.10.78 = add i14 %tmp.1.cast3, 82, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.81 = zext i14 %tmp.10.78 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.82.0.1 = add i14 %tmp.1.cast3, 83, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.82.0.1 = zext i14 %tmp.10.82.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.164 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.82.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].82" = load i32* %video.addr.164, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].82"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.82.2.1 = add i14 %tmp.1.cast3, 283, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.82.2.1 = zext i14 %tmp.10.82.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.165 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.82.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].82" = load i32* %video.addr.165, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].82"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.167 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].82", i32 %"block[7].82") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.165 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.81, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.167, i32* %sob_x1.addr.165, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.168 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].82", i32 %"block[7].82") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.165 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.81, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.168, i32* %sob_y1.addr.165, align 4, !dbg !76 ; [debug line = 59:6]
  br label %171

; <label>:173                                     ; preds = %.preheader.preheader.83, %174
  br i1 %tmp, label %176, label %.preheader.preheader.84, !dbg !58 ; [debug line = 41:7]

; <label>:174                                     ; preds = %171
  %tmp.4.82 = add i14 %tmp.1.cast3, 83, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.82 = zext i14 %tmp.4.82 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.166 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.82, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.166, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.166 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.82, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.166, align 4, !dbg !63 ; [debug line = 44:6]
  br label %173, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.83:                          ; preds = %171
  %tmp.10.79 = add i14 %tmp.1.cast3, 83, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.82 = zext i14 %tmp.10.79 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.83.0.1 = add i14 %tmp.1.cast3, 84, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.83.0.1 = zext i14 %tmp.10.83.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.166 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.83.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].83" = load i32* %video.addr.166, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].83"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.83.2.1 = add i14 %tmp.1.cast3, 284, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.83.2.1 = zext i14 %tmp.10.83.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.167 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.83.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].83" = load i32* %video.addr.167, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].83"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.169 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].83", i32 %"block[7].83") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.167 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.82, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.169, i32* %sob_x1.addr.167, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.170 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].83", i32 %"block[7].83") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.167 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.82, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.170, i32* %sob_y1.addr.167, align 4, !dbg !76 ; [debug line = 59:6]
  br label %173

; <label>:175                                     ; preds = %.preheader.preheader.84, %176
  br i1 %tmp, label %178, label %.preheader.preheader.85, !dbg !58 ; [debug line = 41:7]

; <label>:176                                     ; preds = %173
  %tmp.4.83 = add i14 %tmp.1.cast3, 84, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.83 = zext i14 %tmp.4.83 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.168 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.83, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.168, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.168 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.83, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.168, align 4, !dbg !63 ; [debug line = 44:6]
  br label %175, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.84:                          ; preds = %173
  %tmp.10.80 = add i14 %tmp.1.cast3, 84, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.83 = zext i14 %tmp.10.80 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.84.0.1 = add i14 %tmp.1.cast3, 85, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.84.0.1 = zext i14 %tmp.10.84.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.168 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.84.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].84" = load i32* %video.addr.168, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].84"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.84.2.1 = add i14 %tmp.1.cast3, 285, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.84.2.1 = zext i14 %tmp.10.84.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.169 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.84.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].84" = load i32* %video.addr.169, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].84"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.171 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].84", i32 %"block[7].84") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.169 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.83, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.171, i32* %sob_x1.addr.169, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.172 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].84", i32 %"block[7].84") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.169 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.83, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.172, i32* %sob_y1.addr.169, align 4, !dbg !76 ; [debug line = 59:6]
  br label %175

; <label>:177                                     ; preds = %.preheader.preheader.85, %178
  br i1 %tmp, label %180, label %.preheader.preheader.86, !dbg !58 ; [debug line = 41:7]

; <label>:178                                     ; preds = %175
  %tmp.4.84 = add i14 %tmp.1.cast3, 85, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.84 = zext i14 %tmp.4.84 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.170 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.84, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.170, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.170 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.84, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.170, align 4, !dbg !63 ; [debug line = 44:6]
  br label %177, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.85:                          ; preds = %175
  %tmp.10.81 = add i14 %tmp.1.cast3, 85, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.84 = zext i14 %tmp.10.81 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.85.0.1 = add i14 %tmp.1.cast3, 86, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.85.0.1 = zext i14 %tmp.10.85.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.170 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.85.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].85" = load i32* %video.addr.170, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].85"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.85.2.1 = add i14 %tmp.1.cast3, 286, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.85.2.1 = zext i14 %tmp.10.85.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.171 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.85.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].85" = load i32* %video.addr.171, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].85"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.173 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].85", i32 %"block[7].85") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.171 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.84, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.173, i32* %sob_x1.addr.171, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.174 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].85", i32 %"block[7].85") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.171 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.84, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.174, i32* %sob_y1.addr.171, align 4, !dbg !76 ; [debug line = 59:6]
  br label %177

; <label>:179                                     ; preds = %.preheader.preheader.86, %180
  br i1 %tmp, label %182, label %.preheader.preheader.87, !dbg !58 ; [debug line = 41:7]

; <label>:180                                     ; preds = %177
  %tmp.4.85 = add i14 %tmp.1.cast3, 86, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.85 = zext i14 %tmp.4.85 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.172 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.85, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.172, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.172 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.85, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.172, align 4, !dbg !63 ; [debug line = 44:6]
  br label %179, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.86:                          ; preds = %177
  %tmp.10.82 = add i14 %tmp.1.cast3, 86, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.85 = zext i14 %tmp.10.82 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.86.0.1 = add i14 %tmp.1.cast3, 87, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.86.0.1 = zext i14 %tmp.10.86.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.172 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.86.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].86" = load i32* %video.addr.172, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].86"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.86.2.1 = add i14 %tmp.1.cast3, 287, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.86.2.1 = zext i14 %tmp.10.86.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.173 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.86.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].86" = load i32* %video.addr.173, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].86"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.175 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].86", i32 %"block[7].86") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.173 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.85, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.175, i32* %sob_x1.addr.173, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.176 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].86", i32 %"block[7].86") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.173 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.85, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.176, i32* %sob_y1.addr.173, align 4, !dbg !76 ; [debug line = 59:6]
  br label %179

; <label>:181                                     ; preds = %.preheader.preheader.87, %182
  br i1 %tmp, label %184, label %.preheader.preheader.88, !dbg !58 ; [debug line = 41:7]

; <label>:182                                     ; preds = %179
  %tmp.4.86 = add i14 %tmp.1.cast3, 87, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.86 = zext i14 %tmp.4.86 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.174 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.86, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.174, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.174 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.86, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.174, align 4, !dbg !63 ; [debug line = 44:6]
  br label %181, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.87:                          ; preds = %179
  %tmp.10.83 = add i14 %tmp.1.cast3, 87, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.86 = zext i14 %tmp.10.83 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.87.0.1 = add i14 %tmp.1.cast3, 88, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.87.0.1 = zext i14 %tmp.10.87.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.174 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.87.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].87" = load i32* %video.addr.174, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].87"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.87.2.1 = add i14 %tmp.1.cast3, 288, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.87.2.1 = zext i14 %tmp.10.87.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.175 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.87.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].87" = load i32* %video.addr.175, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].87"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.177 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].87", i32 %"block[7].87") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.175 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.86, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.177, i32* %sob_x1.addr.175, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.178 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].87", i32 %"block[7].87") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.175 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.86, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.178, i32* %sob_y1.addr.175, align 4, !dbg !76 ; [debug line = 59:6]
  br label %181

; <label>:183                                     ; preds = %.preheader.preheader.88, %184
  br i1 %tmp, label %186, label %.preheader.preheader.89, !dbg !58 ; [debug line = 41:7]

; <label>:184                                     ; preds = %181
  %tmp.4.87 = add i14 %tmp.1.cast3, 88, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.87 = zext i14 %tmp.4.87 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.176 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.87, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.176, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.176 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.87, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.176, align 4, !dbg !63 ; [debug line = 44:6]
  br label %183, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.88:                          ; preds = %181
  %tmp.10.84 = add i14 %tmp.1.cast3, 88, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.87 = zext i14 %tmp.10.84 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.88.0.1 = add i14 %tmp.1.cast3, 89, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.88.0.1 = zext i14 %tmp.10.88.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.176 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.88.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].88" = load i32* %video.addr.176, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].88"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.88.2.1 = add i14 %tmp.1.cast3, 289, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.88.2.1 = zext i14 %tmp.10.88.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.177 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.88.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].88" = load i32* %video.addr.177, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].88"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.179 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].88", i32 %"block[7].88") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.177 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.87, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.179, i32* %sob_x1.addr.177, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.180 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].88", i32 %"block[7].88") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.177 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.87, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.180, i32* %sob_y1.addr.177, align 4, !dbg !76 ; [debug line = 59:6]
  br label %183

; <label>:185                                     ; preds = %.preheader.preheader.89, %186
  br i1 %tmp, label %188, label %.preheader.preheader.90, !dbg !58 ; [debug line = 41:7]

; <label>:186                                     ; preds = %183
  %tmp.4.88 = add i14 %tmp.1.cast3, 89, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.88 = zext i14 %tmp.4.88 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.178 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.88, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.178, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.178 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.88, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.178, align 4, !dbg !63 ; [debug line = 44:6]
  br label %185, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.89:                          ; preds = %183
  %tmp.10.85 = add i14 %tmp.1.cast3, 89, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.88 = zext i14 %tmp.10.85 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.89.0.1 = add i14 %tmp.1.cast3, 90, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.89.0.1 = zext i14 %tmp.10.89.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.178 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.89.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].89" = load i32* %video.addr.178, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].89"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.89.2.1 = add i14 %tmp.1.cast3, 290, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.89.2.1 = zext i14 %tmp.10.89.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.179 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.89.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].89" = load i32* %video.addr.179, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].89"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.181 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].89", i32 %"block[7].89") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.179 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.88, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.181, i32* %sob_x1.addr.179, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.182 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].89", i32 %"block[7].89") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.179 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.88, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.182, i32* %sob_y1.addr.179, align 4, !dbg !76 ; [debug line = 59:6]
  br label %185

; <label>:187                                     ; preds = %.preheader.preheader.90, %188
  br i1 %tmp, label %190, label %.preheader.preheader.91, !dbg !58 ; [debug line = 41:7]

; <label>:188                                     ; preds = %185
  %tmp.4.89 = add i14 %tmp.1.cast3, 90, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.89 = zext i14 %tmp.4.89 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.180 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.89, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.180, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.180 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.89, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.180, align 4, !dbg !63 ; [debug line = 44:6]
  br label %187, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.90:                          ; preds = %185
  %tmp.10.86 = add i14 %tmp.1.cast3, 90, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.89 = zext i14 %tmp.10.86 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.90.0.1 = add i14 %tmp.1.cast3, 91, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.90.0.1 = zext i14 %tmp.10.90.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.180 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.90.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].90" = load i32* %video.addr.180, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].90"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.90.2.1 = add i14 %tmp.1.cast3, 291, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.90.2.1 = zext i14 %tmp.10.90.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.181 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.90.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].90" = load i32* %video.addr.181, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].90"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.183 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].90", i32 %"block[7].90") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.181 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.89, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.183, i32* %sob_x1.addr.181, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.184 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].90", i32 %"block[7].90") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.181 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.89, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.184, i32* %sob_y1.addr.181, align 4, !dbg !76 ; [debug line = 59:6]
  br label %187

; <label>:189                                     ; preds = %.preheader.preheader.91, %190
  br i1 %tmp, label %192, label %.preheader.preheader.92, !dbg !58 ; [debug line = 41:7]

; <label>:190                                     ; preds = %187
  %tmp.4.90 = add i14 %tmp.1.cast3, 91, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.90 = zext i14 %tmp.4.90 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.182 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.90, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.182, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.182 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.90, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.182, align 4, !dbg !63 ; [debug line = 44:6]
  br label %189, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.91:                          ; preds = %187
  %tmp.10.87 = add i14 %tmp.1.cast3, 91, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.90 = zext i14 %tmp.10.87 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.91.0.1 = add i14 %tmp.1.cast3, 92, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.91.0.1 = zext i14 %tmp.10.91.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.182 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.91.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].91" = load i32* %video.addr.182, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].91"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.91.2.1 = add i14 %tmp.1.cast3, 292, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.91.2.1 = zext i14 %tmp.10.91.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.183 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.91.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].91" = load i32* %video.addr.183, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].91"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.185 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].91", i32 %"block[7].91") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.183 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.90, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.185, i32* %sob_x1.addr.183, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.186 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].91", i32 %"block[7].91") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.183 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.90, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.186, i32* %sob_y1.addr.183, align 4, !dbg !76 ; [debug line = 59:6]
  br label %189

; <label>:191                                     ; preds = %.preheader.preheader.92, %192
  br i1 %tmp, label %194, label %.preheader.preheader.93, !dbg !58 ; [debug line = 41:7]

; <label>:192                                     ; preds = %189
  %tmp.4.91 = add i14 %tmp.1.cast3, 92, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.91 = zext i14 %tmp.4.91 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.184 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.91, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.184, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.184 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.91, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.184, align 4, !dbg !63 ; [debug line = 44:6]
  br label %191, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.92:                          ; preds = %189
  %tmp.10.88 = add i14 %tmp.1.cast3, 92, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.91 = zext i14 %tmp.10.88 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.92.0.1 = add i14 %tmp.1.cast3, 93, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.92.0.1 = zext i14 %tmp.10.92.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.184 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.92.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].92" = load i32* %video.addr.184, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].92"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.92.2.1 = add i14 %tmp.1.cast3, 293, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.92.2.1 = zext i14 %tmp.10.92.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.185 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.92.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].92" = load i32* %video.addr.185, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].92"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.187 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].92", i32 %"block[7].92") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.185 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.91, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.187, i32* %sob_x1.addr.185, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.188 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].92", i32 %"block[7].92") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.185 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.91, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.188, i32* %sob_y1.addr.185, align 4, !dbg !76 ; [debug line = 59:6]
  br label %191

; <label>:193                                     ; preds = %.preheader.preheader.93, %194
  br i1 %tmp, label %196, label %.preheader.preheader.94, !dbg !58 ; [debug line = 41:7]

; <label>:194                                     ; preds = %191
  %tmp.4.92 = add i14 %tmp.1.cast3, 93, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.92 = zext i14 %tmp.4.92 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.186 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.92, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.186, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.186 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.92, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.186, align 4, !dbg !63 ; [debug line = 44:6]
  br label %193, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.93:                          ; preds = %191
  %tmp.10.89 = add i14 %tmp.1.cast3, 93, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.92 = zext i14 %tmp.10.89 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.93.0.1 = add i14 %tmp.1.cast3, 94, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.93.0.1 = zext i14 %tmp.10.93.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.186 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.93.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].93" = load i32* %video.addr.186, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].93"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.93.2.1 = add i14 %tmp.1.cast3, 294, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.93.2.1 = zext i14 %tmp.10.93.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.187 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.93.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].93" = load i32* %video.addr.187, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].93"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.189 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].93", i32 %"block[7].93") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.187 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.92, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.189, i32* %sob_x1.addr.187, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.190 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].93", i32 %"block[7].93") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.187 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.92, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.190, i32* %sob_y1.addr.187, align 4, !dbg !76 ; [debug line = 59:6]
  br label %193

; <label>:195                                     ; preds = %.preheader.preheader.94, %196
  br i1 %tmp, label %198, label %.preheader.preheader.95, !dbg !58 ; [debug line = 41:7]

; <label>:196                                     ; preds = %193
  %tmp.4.93 = add i14 %tmp.1.cast3, 94, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.93 = zext i14 %tmp.4.93 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.188 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.93, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.188, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.188 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.93, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.188, align 4, !dbg !63 ; [debug line = 44:6]
  br label %195, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.94:                          ; preds = %193
  %tmp.10.90 = add i14 %tmp.1.cast3, 94, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.93 = zext i14 %tmp.10.90 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.94.0.1 = add i14 %tmp.1.cast3, 95, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.94.0.1 = zext i14 %tmp.10.94.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.188 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.94.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].94" = load i32* %video.addr.188, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].94"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.94.2.1 = add i14 %tmp.1.cast3, 295, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.94.2.1 = zext i14 %tmp.10.94.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.189 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.94.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].94" = load i32* %video.addr.189, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].94"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.191 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].94", i32 %"block[7].94") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.189 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.93, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.191, i32* %sob_x1.addr.189, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.192 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].94", i32 %"block[7].94") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.189 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.93, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.192, i32* %sob_y1.addr.189, align 4, !dbg !76 ; [debug line = 59:6]
  br label %195

; <label>:197                                     ; preds = %.preheader.preheader.95, %198
  br i1 %tmp, label %200, label %.preheader.preheader.96, !dbg !58 ; [debug line = 41:7]

; <label>:198                                     ; preds = %195
  %tmp.4.94 = add i14 %tmp.1.cast3, 95, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.94 = zext i14 %tmp.4.94 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.190 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.94, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.190, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.190 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.94, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.190, align 4, !dbg !63 ; [debug line = 44:6]
  br label %197, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.95:                          ; preds = %195
  %tmp.10.91 = add i14 %tmp.1.cast3, 95, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.94 = zext i14 %tmp.10.91 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.95.0.1 = add i14 %tmp.1.cast3, 96, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.95.0.1 = zext i14 %tmp.10.95.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.190 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.95.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].95" = load i32* %video.addr.190, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].95"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.95.2.1 = add i14 %tmp.1.cast3, 296, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.95.2.1 = zext i14 %tmp.10.95.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.191 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.95.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].95" = load i32* %video.addr.191, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].95"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.193 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].95", i32 %"block[7].95") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.191 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.94, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.193, i32* %sob_x1.addr.191, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.194 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].95", i32 %"block[7].95") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.191 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.94, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.194, i32* %sob_y1.addr.191, align 4, !dbg !76 ; [debug line = 59:6]
  br label %197

; <label>:199                                     ; preds = %.preheader.preheader.96, %200
  br i1 %tmp, label %203, label %.preheader.preheader.97, !dbg !58 ; [debug line = 41:7]

; <label>:200                                     ; preds = %197
  %tmp.4.95 = add i14 %tmp.1.cast3, 96, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.95 = zext i14 %tmp.4.95 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.192 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.95, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.192, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.192 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.95, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.192, align 4, !dbg !63 ; [debug line = 44:6]
  br label %199, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.96:                          ; preds = %197
  %tmp.10.92 = add i14 %tmp.1.cast3, 96, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.95 = zext i14 %tmp.10.92 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.96.0.1 = add i14 %tmp.1.cast3, 97, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.96.0.1 = zext i14 %tmp.10.96.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.192 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.96.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].96" = load i32* %video.addr.192, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].96"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.96.2.1 = add i14 %tmp.1.cast3, 297, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.96.2.1 = zext i14 %tmp.10.96.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.193 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.96.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].96" = load i32* %video.addr.193, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].96"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.195 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].96", i32 %"block[7].96") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.193 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.95, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.195, i32* %sob_x1.addr.193, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.196 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].96", i32 %"block[7].96") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.193 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.95, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.196, i32* %sob_y1.addr.193, align 4, !dbg !76 ; [debug line = 59:6]
  br label %199

; <label>:201                                     ; preds = %.preheader.preheader.97, %203
  %tmp.4.97 = add i14 %tmp.1.cast3, 98, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.97 = zext i14 %tmp.4.97 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.196 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.97, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.196, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.196 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.97, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.196, align 4, !dbg !63 ; [debug line = 44:6]
  %tmp.4.98 = add i14 %tmp.1.cast3, 99, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.98 = zext i14 %tmp.4.98 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.197 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.98, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.197, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.197 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.98, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.197, align 4, !dbg !63 ; [debug line = 44:6]
  %202 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str, i32 %tmp.2) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 61:5]
  %i.1 = add i7 %i, 1, !dbg !78                   ; [#uses=1 type=i7] [debug line = 37:31]
  call void @llvm.dbg.value(metadata !{i7 %i.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 37:31] [debug variable = i]
  br label %4, !dbg !78                           ; [debug line = 37:31]

; <label>:203                                     ; preds = %199
  %tmp.4.96 = add i14 %tmp.1.cast3, 97, !dbg !61  ; [#uses=1 type=i14] [debug line = 43:12]
  %tmp.5.96 = zext i14 %tmp.4.96 to i64, !dbg !61 ; [#uses=2 type=i64] [debug line = 43:12]
  %sob_x1.addr.194 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5.96, !dbg !61 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %sob_x1.addr.194, align 4, !dbg !61 ; [debug line = 43:12]
  %sob_y1.addr.194 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5.96, !dbg !63 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %sob_y1.addr.194, align 4, !dbg !63 ; [debug line = 44:6]
  br label %201, !dbg !64                         ; [debug line = 45:4]

.preheader.preheader.97:                          ; preds = %199
  %tmp.10.93 = add i14 %tmp.1.cast3, 97, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.96 = zext i14 %tmp.10.93 to i64, !dbg !65 ; [#uses=2 type=i64] [debug line = 54:1]
  %tmp.10.97.0.1 = add i14 %tmp.1.cast3, 98, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.97.0.1 = zext i14 %tmp.10.97.0.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.194 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.97.0.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[1].97" = load i32* %video.addr.194, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[1].97"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:1] [debug variable = block[1]]
  %tmp.10.97.2.1 = add i14 %tmp.1.cast3, 298, !dbg !65 ; [#uses=1 type=i14] [debug line = 54:1]
  %tmp.11.97.2.1 = zext i14 %tmp.10.97.2.1 to i64, !dbg !65 ; [#uses=1 type=i64] [debug line = 54:1]
  %video.addr.195 = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11.97.2.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 54:1]
  %"block[7].97" = load i32* %video.addr.195, align 4, !dbg !65 ; [#uses=2 type=i32] [debug line = 54:1]
  call void @llvm.dbg.value(metadata !{i32 %"block[7].97"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:1] [debug variable = block[7]]
  %tmp.197 = call fastcc i32 @convolution(i3 0, i4 0, i32 %"block[1].97", i32 %"block[7].97") nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 55:12]
  %sob_x1.addr.195 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.11.96, !dbg !74 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %tmp.197, i32* %sob_x1.addr.195, align 4, !dbg !74 ; [debug line = 56:6]
  %tmp.198 = call fastcc i32 @convolution(i3 -2, i4 2, i32 %"block[1].97", i32 %"block[7].97") nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 58:12]
  %sob_y1.addr.195 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.11.96, !dbg !76 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %tmp.198, i32* %sob_y1.addr.195, align 4, !dbg !76 ; [debug line = 59:6]
  br label %201

; <label>:204                                     ; preds = %4
  ret void, !dbg !80                              ; [debug line = 63:1]
}

; [#uses=196]
define internal fastcc i32 @convolution(i3 %.read, i4 %.read2, i32 %.read3, i32 %.read5) readnone {
  %.read2.cast = zext i4 %.read2 to i32           ; [#uses=2 type=i32]
  %.read.cast = sext i3 %.read to i32             ; [#uses=2 type=i32]
  call void (...)* @_ssdm_SpecKeepAssert(i32 %.read.cast), !hlsrange !81
  call void (...)* @_ssdm_SpecKeepAssert(i32 %.read2.cast), !hlsrange !82
  %tmp.15 = mul nsw i32 %.read.cast, %.read3, !dbg !83 ; [#uses=2 type=i32] [debug line = 77:1]
  %value.2.0.1 = shl nsw i32 %tmp.15, 1, !dbg !83 ; [#uses=1 type=i32] [debug line = 77:1]
  %tmp.15.2 = mul nsw i32 %.read2.cast, %.read5, !dbg !83 ; [#uses=2 type=i32] [debug line = 77:1]
  %tmp = add i32 %tmp.15, %value.2.0.1, !dbg !83  ; [#uses=1 type=i32] [debug line = 77:1]
  %tmp2 = shl i32 %tmp.15.2, 1, !dbg !83          ; [#uses=1 type=i32] [debug line = 77:1]
  %tmp1 = add i32 %tmp2, %tmp.15.2, !dbg !83      ; [#uses=1 type=i32] [debug line = 77:1]
  %value.2.2.2 = add nsw i32 %tmp1, %tmp, !dbg !83 ; [#uses=1 type=i32] [debug line = 77:1]
  ret i32 %value.2.2.2, !dbg !89                  ; [debug line = 80:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/edge_prj/solution2/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 66, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !9, metadata !9}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1"}
!22 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !22}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"operatr", metadata !"block"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"video", metadata !33, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 9999, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"sob_x1", metadata !33, metadata !"int", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"sob_y1", metadata !33, metadata !"int", i32 0, i32 31}
!43 = metadata !{i32 786689, metadata !5, metadata !"video", null, i32 4, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !10, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 4, i32 19, metadata !5, null}
!48 = metadata !{i32 786689, metadata !5, metadata !"sob_x1", null, i32 4, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 4, i32 38, metadata !5, null}
!50 = metadata !{i32 786689, metadata !5, metadata !"sob_y1", null, i32 4, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 4, i32 58, metadata !5, null}
!52 = metadata !{i32 37, i32 21, metadata !53, null}
!53 = metadata !{i32 786443, metadata !54, i32 37, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 39, i32 2, metadata !56, null}
!56 = metadata !{i32 786443, metadata !53, i32 39, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 40, i32 1, metadata !56, null}
!58 = metadata !{i32 41, i32 7, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 40, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !56, i32 39, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 43, i32 12, metadata !62, null}
!62 = metadata !{i32 786443, metadata !59, i32 42, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 44, i32 6, metadata !62, null}
!64 = metadata !{i32 45, i32 4, metadata !62, null}
!65 = metadata !{i32 54, i32 1, metadata !66, null}
!66 = metadata !{i32 786443, metadata !67, i32 54, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !68, i32 52, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786443, metadata !69, i32 52, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !70, i32 49, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !59, i32 47, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786688, metadata !54, metadata !"block[1]", null, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786688, metadata !54, metadata !"block[7]", null, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 55, i32 12, metadata !70, null}
!74 = metadata !{i32 56, i32 6, metadata !70, null}
!75 = metadata !{i32 58, i32 12, metadata !70, null}
!76 = metadata !{i32 59, i32 6, metadata !70, null}
!77 = metadata !{i32 61, i32 5, metadata !60, null}
!78 = metadata !{i32 37, i32 31, metadata !53, null}
!79 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 63, i32 1, metadata !54, null}
!81 = metadata !{i3 -2, i3 0, i3 0, i3 -1}        ; [ DW_TAG_class_field_type ]
!82 = metadata !{i4 0, i4 2, i4 0, i4 2}          
!83 = metadata !{i32 77, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 77, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 76, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 76, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 73, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !13, i32 67, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 80, i32 5, metadata !88, null}
