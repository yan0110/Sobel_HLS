; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1] ; [#uses=1 type=[9 x i32]*]
@sob_x = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1] ; [#uses=1 type=[9 x i32]*]
@edge_det.str = internal unnamed_addr constant [9 x i8] c"edge_det\00" ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=3 type=[19 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=3 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=3 type=[16 x i8]*]
@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=3 type=[16 x i8]*]

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1) nounwind uwtable {
meminst4.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det.str) nounwind
  %block = alloca [9 x i32], align 16             ; [#uses=3 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %video}, i64 0, metadata !43), !dbg !47 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_x1}, i64 0, metadata !48), !dbg !49 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_y1}, i64 0, metadata !50), !dbg !51 ; [debug line = 4:58] [debug variable = sob_y1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !52), !dbg !57 ; [debug line = 11:7] [debug variable = block]
  br label %0, !dbg !58                           ; [debug line = 16:21]

; <label>:0                                       ; preds = %17, %meminst4.preheader
  %i = phi i7 [ 0, %meminst4.preheader ], [ %i.1, %17 ] ; [#uses=5 type=i7]
  %i.cast8 = zext i7 %i to i14, !dbg !60          ; [#uses=1 type=i14] [debug line = 22:12]
  %exitcond3 = icmp eq i7 %i, -28, !dbg !58       ; [#uses=1 type=i1] [debug line = 16:21]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %19, label %2, !dbg !58 ; [debug line = 16:21]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str) nounwind, !dbg !65 ; [debug line = 18:1]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 18:1]
  %tmp = icmp ugt i7 %i, -31, !dbg !66            ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp.1 = mul i14 %i.cast8, 100, !dbg !60        ; [#uses=2 type=i14] [debug line = 22:12]
  br label %3, !dbg !67                           ; [debug line = 18:21]

; <label>:3                                       ; preds = %15, %2
  %j = phi i7 [ 0, %2 ], [ %j.1, %15 ]            ; [#uses=4 type=i7]
  %j.cast7 = zext i7 %j to i14, !dbg !67          ; [#uses=3 type=i14] [debug line = 18:21]
  %exitcond2 = icmp eq i7 %j, -28, !dbg !67       ; [#uses=1 type=i1] [debug line = 18:21]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %17, label %5, !dbg !67 ; [debug line = 18:21]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str1) nounwind, !dbg !68 ; [debug line = 19:6]
  %tmp.14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str1) nounwind, !dbg !68 ; [#uses=1 type=i32] [debug line = 19:6]
  %tmp.3 = icmp ugt i7 %j, -31, !dbg !66          ; [#uses=1 type=i1] [debug line = 20:7]
  %or.cond = or i1 %tmp, %tmp.3, !dbg !66         ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %or.cond, label %6, label %.preheader.preheader, !dbg !66 ; [debug line = 20:7]

.preheader.preheader:                             ; preds = %5
  br label %.preheader, !dbg !69                  ; [debug line = 28:21]

; <label>:6                                       ; preds = %5
  %tmp.4 = add i14 %j.cast7, %tmp.1, !dbg !60     ; [#uses=1 type=i14] [debug line = 22:12]
  %tmp.5 = zext i14 %tmp.4 to i64, !dbg !60       ; [#uses=2 type=i64] [debug line = 22:12]
  %sob_x1.addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.5, !dbg !60 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %sob_x1.addr, align 4, !dbg !60 ; [debug line = 22:12]
  %sob_y1.addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.5, !dbg !72 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %sob_y1.addr, align 4, !dbg !72 ; [debug line = 23:6]
  br label %15, !dbg !73                          ; [debug line = 24:4]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %m = phi i2 [ %m.1, %12 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i2]
  %m.cast6 = zext i2 %m to i7, !dbg !69           ; [#uses=1 type=i7] [debug line = 28:21]
  %m.cast5 = zext i2 %m to i5, !dbg !69           ; [#uses=1 type=i5] [debug line = 28:21]
  %m.cast4 = zext i2 %m to i4, !dbg !69           ; [#uses=1 type=i4] [debug line = 28:21]
  %exitcond1 = icmp eq i2 %m, -1, !dbg !69        ; [#uses=1 type=i1] [debug line = 28:21]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %14, label %8, !dbg !69 ; [debug line = 28:21]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str2) nounwind, !dbg !74 ; [debug line = 31:1]
  %tmp.15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str2) nounwind, !dbg !74 ; [#uses=1 type=i32] [debug line = 31:1]
  %tmp.8 = add i7 %m.cast6, %i, !dbg !76          ; [#uses=1 type=i7] [debug line = 33:7]
  %tmp.8.cast.cast = zext i7 %tmp.8 to i14, !dbg !76 ; [#uses=1 type=i14] [debug line = 33:7]
  %tmp.9 = mul i14 %tmp.8.cast.cast, 100, !dbg !76 ; [#uses=1 type=i14] [debug line = 33:7]
  %_shl = shl nuw i4 %m.cast4, 2, !dbg !76        ; [#uses=1 type=i4] [debug line = 33:7]
  %_shl.cast = zext i4 %_shl to i5, !dbg !76      ; [#uses=1 type=i5] [debug line = 33:7]
  %tmp. = sub i5 %_shl.cast, %m.cast5, !dbg !76   ; [#uses=1 type=i5] [debug line = 33:7]
  br label %9, !dbg !79                           ; [debug line = 31:21]

; <label>:9                                       ; preds = %11, %8
  %n = phi i2 [ 0, %8 ], [ %n.1, %11 ]            ; [#uses=4 type=i2]
  %n.cast3 = zext i2 %n to i5, !dbg !79           ; [#uses=1 type=i5] [debug line = 31:21]
  %exitcond = icmp eq i2 %n, -1, !dbg !79         ; [#uses=1 type=i1] [debug line = 31:21]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %12, label %11, !dbg !79 ; [debug line = 31:21]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str3) nounwind, !dbg !76 ; [debug line = 33:7]
  %tmp.16 = call i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14 %tmp.9, i32 2, i32 13) ; [#uses=1 type=i12]
  %tmp1 = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp.16, i2 %n), !dbg !76 ; [#uses=1 type=i14] [debug line = 33:7]
  %tmp.10 = add i14 %tmp1, %j.cast7, !dbg !76     ; [#uses=1 type=i14] [debug line = 33:7]
  %tmp.11 = zext i14 %tmp.10 to i64, !dbg !76     ; [#uses=1 type=i64] [debug line = 33:7]
  %video.addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.11, !dbg !76 ; [#uses=1 type=i32*] [debug line = 33:7]
  %video.load = load i32* %video.addr, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.12 = add i5 %tmp., %n.cast3, !dbg !76      ; [#uses=1 type=i5] [debug line = 33:7]
  %tmp.12.cast = sext i5 %tmp.12 to i32, !dbg !76 ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.13 = zext i32 %tmp.12.cast to i64, !dbg !76 ; [#uses=1 type=i64] [debug line = 33:7]
  %block.addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp.13, !dbg !76 ; [#uses=1 type=i32*] [debug line = 33:7]
  store i32 %video.load, i32* %block.addr, align 4, !dbg !76 ; [debug line = 33:7]
  %n.1 = add i2 %n, 1, !dbg !80                   ; [#uses=1 type=i2] [debug line = 31:29]
  call void @llvm.dbg.value(metadata !{i2 %n.1}, i64 0, metadata !81), !dbg !80 ; [debug line = 31:29] [debug variable = n]
  br label %9, !dbg !80                           ; [debug line = 31:29]

; <label>:12                                      ; preds = %9
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str2, i32 %tmp.15) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 33:40]
  %m.1 = add i2 %m, 1, !dbg !83                   ; [#uses=1 type=i2] [debug line = 28:29]
  call void @llvm.dbg.value(metadata !{i2 %m.1}, i64 0, metadata !84), !dbg !83 ; [debug line = 28:29] [debug variable = m]
  br label %.preheader, !dbg !83                  ; [debug line = 28:29]

; <label>:14                                      ; preds = %.preheader
  %value = call fastcc i32 @convolution([9 x i32]* @sob_x, [9 x i32]* %block) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 34:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !86), !dbg !85 ; [debug line = 34:12] [debug variable = value]
  %tmp.6 = add i14 %j.cast7, %tmp.1, !dbg !87     ; [#uses=1 type=i14] [debug line = 35:6]
  %tmp.7 = zext i14 %tmp.6 to i64, !dbg !87       ; [#uses=2 type=i64] [debug line = 35:6]
  %sob_x1.addr.1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.7, !dbg !87 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %value, i32* %sob_x1.addr.1, align 4, !dbg !87 ; [debug line = 35:6]
  %value.1 = call fastcc i32 @convolution([9 x i32]* @sob_y, [9 x i32]* %block) nounwind, !dbg !88 ; [#uses=1 type=i32] [debug line = 37:12]
  call void @llvm.dbg.value(metadata !{i32 %value.1}, i64 0, metadata !86), !dbg !88 ; [debug line = 37:12] [debug variable = value]
  %sob_y1.addr.1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.7, !dbg !89 ; [#uses=1 type=i32*] [debug line = 38:6]
  store i32 %value.1, i32* %sob_y1.addr.1, align 4, !dbg !89 ; [debug line = 38:6]
  br label %15

; <label>:15                                      ; preds = %14, %6
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str1, i32 %tmp.14) nounwind, !dbg !90 ; [#uses=0 type=i32] [debug line = 40:5]
  %j.1 = add i7 %j, 1, !dbg !91                   ; [#uses=1 type=i7] [debug line = 18:31]
  call void @llvm.dbg.value(metadata !{i7 %j.1}, i64 0, metadata !92), !dbg !91 ; [debug line = 18:31] [debug variable = j]
  br label %3, !dbg !91                           ; [debug line = 18:31]

; <label>:17                                      ; preds = %3
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str, i32 %tmp.2) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 40:5]
  %i.1 = add i7 %i, 1, !dbg !94                   ; [#uses=1 type=i7] [debug line = 16:31]
  call void @llvm.dbg.value(metadata !{i7 %i.1}, i64 0, metadata !95), !dbg !94 ; [debug line = 16:31] [debug variable = i]
  br label %0, !dbg !94                           ; [debug line = 16:31]

; <label>:19                                      ; preds = %0
  ret void, !dbg !96                              ; [debug line = 42:1]
}

; [#uses=2]
define internal fastcc i32 @convolution([9 x i32]* nocapture %operatr, [9 x i32]* nocapture %block) readonly {
  call void @llvm.dbg.value(metadata !{[9 x i32]* %operatr}, i64 0, metadata !97), !dbg !98 ; [debug line = 45:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %block}, i64 0, metadata !99), !dbg !100 ; [debug line = 45:36] [debug variable = block]
  br label %1, !dbg !101                          ; [debug line = 49:24]

; <label>:1                                       ; preds = %7, %0
  %value = phi i32 [ 0, %0 ], [ %value.1.lcssa, %7 ] ; [#uses=2 type=i32]
  %i = phi i2 [ 0, %0 ], [ %i.2, %7 ]             ; [#uses=4 type=i2]
  %i.cast3 = zext i2 %i to i5, !dbg !101          ; [#uses=1 type=i5] [debug line = 49:24]
  %i.cast2 = zext i2 %i to i4, !dbg !101          ; [#uses=1 type=i4] [debug line = 49:24]
  %exitcond1 = icmp eq i2 %i, -1, !dbg !101       ; [#uses=1 type=i1] [debug line = 49:24]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %3, !dbg !101 ; [debug line = 49:24]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @.str4) nounwind, !dbg !104 ; [debug line = 50:1]
  %tmp.16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([19 x i8]* @.str4), !dbg !104 ; [#uses=1 type=i32] [debug line = 50:1]
  %_shl = shl nuw i4 %i.cast2, 2, !dbg !106       ; [#uses=1 type=i4] [debug line = 51:11]
  %_shl.cast = zext i4 %_shl to i5, !dbg !106     ; [#uses=1 type=i5] [debug line = 51:11]
  %tmp = sub i5 %_shl.cast, %i.cast3, !dbg !106   ; [#uses=1 type=i5] [debug line = 51:11]
  br label %4, !dbg !109                          ; [debug line = 50:24]

; <label>:4                                       ; preds = %6, %3
  %value.1 = phi i32 [ %value, %3 ], [ %value.2, %6 ] ; [#uses=2 type=i32]
  %j = phi i2 [ 0, %3 ], [ %j.2, %6 ]             ; [#uses=3 type=i2]
  %j.cast1 = zext i2 %j to i5, !dbg !109          ; [#uses=1 type=i5] [debug line = 50:24]
  %exitcond = icmp eq i2 %j, -1, !dbg !109        ; [#uses=1 type=i1] [debug line = 50:24]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %6, !dbg !109  ; [debug line = 50:24]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @.str5) nounwind, !dbg !106 ; [debug line = 51:11]
  %tmp. = add i5 %j.cast1, %tmp, !dbg !106        ; [#uses=1 type=i5] [debug line = 51:11]
  %tmp..cast = sext i5 %tmp. to i32, !dbg !106    ; [#uses=1 type=i32] [debug line = 51:11]
  %tmp.14 = zext i32 %tmp..cast to i64, !dbg !106 ; [#uses=2 type=i64] [debug line = 51:11]
  %operatr.addr = getelementptr [9 x i32]* %operatr, i64 0, i64 %tmp.14, !dbg !106 ; [#uses=1 type=i32*] [debug line = 51:11]
  %operatr.load = load i32* %operatr.addr, align 4, !dbg !106 ; [#uses=1 type=i32] [debug line = 51:11]
  %block.addr = getelementptr [9 x i32]* %block, i64 0, i64 %tmp.14, !dbg !106 ; [#uses=1 type=i32*] [debug line = 51:11]
  %block.load = load i32* %block.addr, align 4, !dbg !106 ; [#uses=1 type=i32] [debug line = 51:11]
  %tmp.15 = mul nsw i32 %block.load, %operatr.load, !dbg !106 ; [#uses=1 type=i32] [debug line = 51:11]
  %value.2 = add nsw i32 %value.1, %tmp.15, !dbg !106 ; [#uses=1 type=i32] [debug line = 51:11]
  call void @llvm.dbg.value(metadata !{i32 %value.2}, i64 0, metadata !110), !dbg !106 ; [debug line = 51:11] [debug variable = value]
  %j.2 = add i2 %j, 1, !dbg !111                  ; [#uses=1 type=i2] [debug line = 50:32]
  call void @llvm.dbg.value(metadata !{i2 %j.2}, i64 0, metadata !112), !dbg !111 ; [debug line = 50:32] [debug variable = j]
  br label %4, !dbg !111                          ; [debug line = 50:32]

; <label>:7                                       ; preds = %4
  %value.1.lcssa = phi i32 [ %value.1, %4 ]       ; [#uses=1 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([19 x i8]* @.str4, i32 %tmp.16), !dbg !113 ; [#uses=0 type=i32] [debug line = 51:50]
  %i.2 = add i2 %i, 1, !dbg !114                  ; [#uses=1 type=i2] [debug line = 49:32]
  call void @llvm.dbg.value(metadata !{i2 %i.2}, i64 0, metadata !115), !dbg !114 ; [debug line = 49:32] [debug variable = i]
  br label %1, !dbg !114                          ; [debug line = 49:32]

; <label>:9                                       ; preds = %1
  %value.lcssa = phi i32 [ %value, %1 ]           ; [#uses=1 type=i32]
  ret i32 %value.lcssa, !dbg !116                 ; [debug line = 52:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i12 @_ssdm_op_PartSelect.i12.i14.i32.i32(i14, i32, i32) nounwind readnone

; [#uses=1]
declare i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
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
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 45, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 46} ; [ DW_TAG_subprogram ]
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
!52 = metadata !{i32 786688, metadata !53, metadata !"block", metadata !6, i32 11, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 11, i32 7, metadata !53, null}
!58 = metadata !{i32 16, i32 21, metadata !59, null}
!59 = metadata !{i32 786443, metadata !53, i32 16, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 22, i32 12, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 21, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !63, i32 19, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 18, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !59, i32 18, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 18, i32 1, metadata !64, null}
!66 = metadata !{i32 20, i32 7, metadata !62, null}
!67 = metadata !{i32 18, i32 21, metadata !63, null}
!68 = metadata !{i32 19, i32 6, metadata !62, null}
!69 = metadata !{i32 28, i32 21, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 28, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !62, i32 26, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 23, i32 6, metadata !61, null}
!73 = metadata !{i32 24, i32 4, metadata !61, null}
!74 = metadata !{i32 31, i32 1, metadata !75, null}
!75 = metadata !{i32 786443, metadata !70, i32 31, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 33, i32 7, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 33, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !75, i32 31, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 31, i32 21, metadata !78, null}
!80 = metadata !{i32 31, i32 29, metadata !78, null}
!81 = metadata !{i32 786688, metadata !53, metadata !"n", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 33, i32 40, metadata !78, null}
!83 = metadata !{i32 28, i32 29, metadata !70, null}
!84 = metadata !{i32 786688, metadata !53, metadata !"m", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 34, i32 12, metadata !71, null}
!86 = metadata !{i32 786688, metadata !53, metadata !"value", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 35, i32 6, metadata !71, null}
!88 = metadata !{i32 37, i32 12, metadata !71, null}
!89 = metadata !{i32 38, i32 6, metadata !71, null}
!90 = metadata !{i32 40, i32 5, metadata !62, null}
!91 = metadata !{i32 18, i32 31, metadata !63, null}
!92 = metadata !{i32 786688, metadata !53, metadata !"j", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 40, i32 5, metadata !63, null}
!94 = metadata !{i32 16, i32 31, metadata !59, null}
!95 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 42, i32 1, metadata !53, null}
!97 = metadata !{i32 786689, metadata !13, metadata !"operatr", null, i32 45, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 45, i32 21, metadata !13, null}
!99 = metadata !{i32 786689, metadata !13, metadata !"block", null, i32 45, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 45, i32 36, metadata !13, null}
!101 = metadata !{i32 49, i32 24, metadata !102, null}
!102 = metadata !{i32 786443, metadata !103, i32 49, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !13, i32 46, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 50, i32 1, metadata !105, null}
!105 = metadata !{i32 786443, metadata !102, i32 50, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 51, i32 11, metadata !107, null}
!107 = metadata !{i32 786443, metadata !108, i32 51, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786443, metadata !105, i32 50, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 50, i32 24, metadata !108, null}
!110 = metadata !{i32 786688, metadata !103, metadata !"value", metadata !6, i32 47, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 50, i32 32, metadata !108, null}
!112 = metadata !{i32 786688, metadata !103, metadata !"j", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 51, i32 50, metadata !108, null}
!114 = metadata !{i32 49, i32 32, metadata !102, null}
!115 = metadata !{i32 786688, metadata !103, metadata !"i", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 52, i32 5, metadata !103, null}
