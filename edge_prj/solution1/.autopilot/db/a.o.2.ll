; ModuleID = 'F:/0yan/fpga/HLS/Sobel_HLS/edge_prj/solution1/.autopilot/db/a.o.2.bc'
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

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @edge_det([10000 x i32]* %video, [10000 x i32]* %sob_x1, [10000 x i32]* %sob_y1, [10000 x i32]* %sob_xy1) nounwind uwtable {
meminst6.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %video) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_x1) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_y1) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %sob_xy1) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det.str) nounwind
  %block = alloca [9 x i32], align 16             ; [#uses=3 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %video}, i64 0, metadata !47), !dbg !51 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_x1}, i64 0, metadata !52), !dbg !53 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_y1}, i64 0, metadata !54), !dbg !55 ; [debug line = 4:58] [debug variable = sob_y1]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %sob_xy1}, i64 0, metadata !56), !dbg !57 ; [debug line = 4:78] [debug variable = sob_xy1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !58), !dbg !63 ; [debug line = 11:7] [debug variable = block]
  br label %0, !dbg !64                           ; [debug line = 16:21]

; <label>:0                                       ; preds = %17, %meminst6.preheader
  %i = phi i7 [ 0, %meminst6.preheader ], [ %i.1, %17 ] ; [#uses=6 type=i7]
  %i.cast = zext i7 %i to i14, !dbg !66           ; [#uses=1 type=i14] [debug line = 22:12]
  %exitcond3 = icmp eq i7 %i, -28, !dbg !64       ; [#uses=1 type=i1] [debug line = 16:21]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %19, label %2, !dbg !64 ; [debug line = 16:21]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str) nounwind, !dbg !71 ; [debug line = 18:1]
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:1]
  %tmp = icmp eq i7 %i, -29, !dbg !72             ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp.1 = icmp eq i7 %i, 1, !dbg !72             ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp.2 = mul i14 %i.cast, 100, !dbg !66         ; [#uses=2 type=i14] [debug line = 22:12]
  br label %3, !dbg !73                           ; [debug line = 18:21]

; <label>:3                                       ; preds = %15, %2
  %j = phi i7 [ 0, %2 ], [ %j.1, %15 ]            ; [#uses=5 type=i7]
  %j.cast = zext i7 %j to i14, !dbg !73           ; [#uses=3 type=i14] [debug line = 18:21]
  %exitcond2 = icmp eq i7 %j, -28, !dbg !73       ; [#uses=1 type=i1] [debug line = 18:21]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %17, label %5, !dbg !73 ; [debug line = 18:21]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str1) nounwind, !dbg !74 ; [debug line = 19:6]
  %tmp.13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str1) nounwind, !dbg !74 ; [#uses=1 type=i32] [debug line = 19:6]
  %tmp.4 = icmp eq i7 %j, -29, !dbg !72           ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp.5 = icmp eq i7 %j, 1, !dbg !72             ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp1 = or i1 %tmp, %tmp.4, !dbg !72            ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp2 = or i1 %tmp.1, %tmp.5, !dbg !72          ; [#uses=1 type=i1] [debug line = 20:7]
  %or.cond5 = or i1 %tmp2, %tmp1, !dbg !72        ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %or.cond5, label %6, label %.preheader.preheader, !dbg !72 ; [debug line = 20:7]

.preheader.preheader:                             ; preds = %5
  br label %.preheader, !dbg !75                  ; [debug line = 28:21]

; <label>:6                                       ; preds = %5
  %tmp.6 = add i14 %j.cast, %tmp.2, !dbg !66      ; [#uses=1 type=i14] [debug line = 22:12]
  %tmp.7 = zext i14 %tmp.6 to i64, !dbg !66       ; [#uses=2 type=i64] [debug line = 22:12]
  %sob_x1.addr = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.7, !dbg !66 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %sob_x1.addr, align 4, !dbg !66 ; [debug line = 22:12]
  %sob_y1.addr = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %sob_y1.addr, align 4, !dbg !78 ; [debug line = 23:6]
  br label %15, !dbg !79                          ; [debug line = 24:4]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %m = phi i2 [ %m.1, %12 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i2]
  %m.cast9 = zext i2 %m to i7, !dbg !75           ; [#uses=1 type=i7] [debug line = 28:21]
  %m.cast8 = zext i2 %m to i5, !dbg !75           ; [#uses=1 type=i5] [debug line = 28:21]
  %m.cast7 = zext i2 %m to i4, !dbg !75           ; [#uses=1 type=i4] [debug line = 28:21]
  %exitcond1 = icmp eq i2 %m, -1, !dbg !75        ; [#uses=1 type=i1] [debug line = 28:21]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %14, label %8, !dbg !75 ; [debug line = 28:21]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str2) nounwind, !dbg !80 ; [debug line = 29:1]
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str2) nounwind, !dbg !80 ; [#uses=1 type=i32] [debug line = 29:1]
  %tmp.3 = add i7 %m.cast9, %i, !dbg !82          ; [#uses=1 type=i7] [debug line = 30:5]
  %tmp.3.cast.cast = zext i7 %tmp.3 to i14, !dbg !82 ; [#uses=1 type=i14] [debug line = 30:5]
  %tmp.10 = mul i14 %tmp.3.cast.cast, 100, !dbg !82 ; [#uses=1 type=i14] [debug line = 30:5]
  %_shl = shl nuw i4 %m.cast7, 2, !dbg !82        ; [#uses=1 type=i4] [debug line = 30:5]
  %_shl.cast = zext i4 %_shl to i5, !dbg !82      ; [#uses=1 type=i5] [debug line = 30:5]
  %tmp.11 = sub i5 %_shl.cast, %m.cast8, !dbg !82 ; [#uses=1 type=i5] [debug line = 30:5]
  br label %9, !dbg !85                           ; [debug line = 29:21]

; <label>:9                                       ; preds = %11, %8
  %n = phi i2 [ 0, %8 ], [ %n.1, %11 ]            ; [#uses=4 type=i2]
  %n.cast6 = zext i2 %n to i5, !dbg !85           ; [#uses=1 type=i5] [debug line = 29:21]
  %n.cast5 = zext i2 %n to i8, !dbg !85           ; [#uses=1 type=i8] [debug line = 29:21]
  %exitcond = icmp eq i2 %n, -1, !dbg !85         ; [#uses=1 type=i1] [debug line = 29:21]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %12, label %11, !dbg !85 ; [debug line = 29:21]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str3) nounwind, !dbg !82 ; [debug line = 30:5]
  %tmp3 = add i14 %tmp.10, %j.cast, !dbg !82      ; [#uses=1 type=i14] [debug line = 30:5]
  %tmp3.cast = zext i14 %tmp3 to i15, !dbg !82    ; [#uses=1 type=i15] [debug line = 30:5]
  %tmp4 = add i8 %n.cast5, -101, !dbg !82         ; [#uses=1 type=i8] [debug line = 30:5]
  %tmp4.cast = sext i8 %tmp4 to i15, !dbg !82     ; [#uses=1 type=i15] [debug line = 30:5]
  %tmp.14 = add i15 %tmp3.cast, %tmp4.cast, !dbg !82 ; [#uses=1 type=i15] [debug line = 30:5]
  %tmp.15 = sext i15 %tmp.14 to i64, !dbg !82     ; [#uses=1 type=i64] [debug line = 30:5]
  %video.addr = getelementptr [10000 x i32]* %video, i64 0, i64 %tmp.15, !dbg !82 ; [#uses=1 type=i32*] [debug line = 30:5]
  %video.load = load i32* %video.addr, align 4, !dbg !82 ; [#uses=1 type=i32] [debug line = 30:5]
  %tmp.16 = add i5 %n.cast6, %tmp.11, !dbg !82    ; [#uses=1 type=i5] [debug line = 30:5]
  %tmp.16.cast = sext i5 %tmp.16 to i32, !dbg !82 ; [#uses=1 type=i32] [debug line = 30:5]
  %tmp.17 = zext i32 %tmp.16.cast to i64, !dbg !82 ; [#uses=1 type=i64] [debug line = 30:5]
  %block.addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp.17, !dbg !82 ; [#uses=1 type=i32*] [debug line = 30:5]
  store i32 %video.load, i32* %block.addr, align 4, !dbg !82 ; [debug line = 30:5]
  %n.1 = add i2 %n, 1, !dbg !86                   ; [#uses=1 type=i2] [debug line = 29:29]
  call void @llvm.dbg.value(metadata !{i2 %n.1}, i64 0, metadata !87), !dbg !86 ; [debug line = 29:29] [debug variable = n]
  br label %9, !dbg !86                           ; [debug line = 29:29]

; <label>:12                                      ; preds = %9
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str2, i32 %tmp.18) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 30:42]
  %m.1 = add i2 %m, 1, !dbg !89                   ; [#uses=1 type=i2] [debug line = 28:29]
  call void @llvm.dbg.value(metadata !{i2 %m.1}, i64 0, metadata !90), !dbg !89 ; [debug line = 28:29] [debug variable = m]
  br label %.preheader, !dbg !89                  ; [debug line = 28:29]

; <label>:14                                      ; preds = %.preheader
  %value = call fastcc i32 @convolution([9 x i32]* @sob_x, [9 x i32]* %block) nounwind, !dbg !91 ; [#uses=4 type=i32] [debug line = 31:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !92), !dbg !91 ; [debug line = 31:12] [debug variable = value]
  %tmp.8 = add i14 %j.cast, %tmp.2, !dbg !93      ; [#uses=1 type=i14] [debug line = 32:6]
  %tmp.9 = zext i14 %tmp.8 to i64, !dbg !93       ; [#uses=3 type=i64] [debug line = 32:6]
  %sob_x1.addr.1 = getelementptr [10000 x i32]* %sob_x1, i64 0, i64 %tmp.9, !dbg !93 ; [#uses=1 type=i32*] [debug line = 32:6]
  store i32 %value, i32* %sob_x1.addr.1, align 4, !dbg !93 ; [debug line = 32:6]
  %value.1 = call fastcc i32 @convolution([9 x i32]* @sob_y, [9 x i32]* %block) nounwind, !dbg !94 ; [#uses=4 type=i32] [debug line = 34:12]
  call void @llvm.dbg.value(metadata !{i32 %value.1}, i64 0, metadata !92), !dbg !94 ; [debug line = 34:12] [debug variable = value]
  %sob_y1.addr.1 = getelementptr [10000 x i32]* %sob_y1, i64 0, i64 %tmp.9, !dbg !95 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %value.1, i32* %sob_y1.addr.1, align 4, !dbg !95 ; [debug line = 35:6]
  %neg = sub i32 0, %value.1                      ; [#uses=1 type=i32]
  %abscond = icmp sgt i32 %value.1, 0             ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i32 %value.1, i32 %neg ; [#uses=1 type=i32]
  %neg9 = sub i32 0, %value                       ; [#uses=1 type=i32]
  %abscond1 = icmp sgt i32 %value, 0              ; [#uses=1 type=i1]
  %abs1 = select i1 %abscond1, i32 %value, i32 %neg9 ; [#uses=1 type=i32]
  %tmp. = add nsw i32 %abs1, %abs, !dbg !96       ; [#uses=1 type=i32] [debug line = 36:50]
  %sob_xy1.addr = getelementptr [10000 x i32]* %sob_xy1, i64 0, i64 %tmp.9, !dbg !96 ; [#uses=1 type=i32*] [debug line = 36:50]
  store i32 %tmp., i32* %sob_xy1.addr, align 4, !dbg !96 ; [debug line = 36:50]
  br label %15

; <label>:15                                      ; preds = %14, %6
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str1, i32 %tmp.13) nounwind, !dbg !97 ; [#uses=0 type=i32] [debug line = 38:5]
  %j.1 = add i7 %j, 1, !dbg !98                   ; [#uses=1 type=i7] [debug line = 18:31]
  call void @llvm.dbg.value(metadata !{i7 %j.1}, i64 0, metadata !99), !dbg !98 ; [debug line = 18:31] [debug variable = j]
  br label %3, !dbg !98                           ; [debug line = 18:31]

; <label>:17                                      ; preds = %3
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str, i32 %tmp.12) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 38:5]
  %i.1 = add i7 %i, 1, !dbg !101                  ; [#uses=1 type=i7] [debug line = 16:31]
  call void @llvm.dbg.value(metadata !{i7 %i.1}, i64 0, metadata !102), !dbg !101 ; [debug line = 16:31] [debug variable = i]
  br label %0, !dbg !101                          ; [debug line = 16:31]

; <label>:19                                      ; preds = %0
  ret void, !dbg !103                             ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc i32 @convolution([9 x i32]* nocapture %operatr, [9 x i32]* nocapture %block) readonly {
  call void @llvm.dbg.value(metadata !{[9 x i32]* %operatr}, i64 0, metadata !104), !dbg !105 ; [debug line = 43:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %block}, i64 0, metadata !106), !dbg !107 ; [debug line = 43:36] [debug variable = block]
  br label %1, !dbg !108                          ; [debug line = 47:24]

; <label>:1                                       ; preds = %7, %0
  %value = phi i32 [ 0, %0 ], [ %value.1.lcssa, %7 ] ; [#uses=2 type=i32]
  %i = phi i2 [ 0, %0 ], [ %i.2, %7 ]             ; [#uses=4 type=i2]
  %i.cast3 = zext i2 %i to i5, !dbg !108          ; [#uses=1 type=i5] [debug line = 47:24]
  %i.cast2 = zext i2 %i to i4, !dbg !108          ; [#uses=1 type=i4] [debug line = 47:24]
  %exitcond1 = icmp eq i2 %i, -1, !dbg !108       ; [#uses=1 type=i1] [debug line = 47:24]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %3, !dbg !108 ; [debug line = 47:24]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @.str4) nounwind, !dbg !111 ; [debug line = 48:1]
  %tmp.20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([19 x i8]* @.str4), !dbg !111 ; [#uses=1 type=i32] [debug line = 48:1]
  %_shl = shl nuw i4 %i.cast2, 2, !dbg !113       ; [#uses=1 type=i4] [debug line = 49:11]
  %_shl.cast = zext i4 %_shl to i5, !dbg !113     ; [#uses=1 type=i5] [debug line = 49:11]
  %tmp = sub i5 %_shl.cast, %i.cast3, !dbg !113   ; [#uses=1 type=i5] [debug line = 49:11]
  br label %4, !dbg !116                          ; [debug line = 48:24]

; <label>:4                                       ; preds = %6, %3
  %value.1 = phi i32 [ %value, %3 ], [ %value.2, %6 ] ; [#uses=2 type=i32]
  %j = phi i2 [ 0, %3 ], [ %j.2, %6 ]             ; [#uses=3 type=i2]
  %j.cast1 = zext i2 %j to i5, !dbg !116          ; [#uses=1 type=i5] [debug line = 48:24]
  %exitcond = icmp eq i2 %j, -1, !dbg !116        ; [#uses=1 type=i1] [debug line = 48:24]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %6, !dbg !116  ; [debug line = 48:24]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @.str5) nounwind, !dbg !113 ; [debug line = 49:11]
  %tmp. = add i5 %j.cast1, %tmp, !dbg !113        ; [#uses=1 type=i5] [debug line = 49:11]
  %tmp..cast = sext i5 %tmp. to i32, !dbg !113    ; [#uses=1 type=i32] [debug line = 49:11]
  %tmp.18 = zext i32 %tmp..cast to i64, !dbg !113 ; [#uses=2 type=i64] [debug line = 49:11]
  %operatr.addr = getelementptr [9 x i32]* %operatr, i64 0, i64 %tmp.18, !dbg !113 ; [#uses=1 type=i32*] [debug line = 49:11]
  %operatr.load = load i32* %operatr.addr, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 49:11]
  %block.addr = getelementptr [9 x i32]* %block, i64 0, i64 %tmp.18, !dbg !113 ; [#uses=1 type=i32*] [debug line = 49:11]
  %block.load = load i32* %block.addr, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 49:11]
  %tmp.19 = mul nsw i32 %block.load, %operatr.load, !dbg !113 ; [#uses=1 type=i32] [debug line = 49:11]
  %value.2 = add nsw i32 %value.1, %tmp.19, !dbg !113 ; [#uses=1 type=i32] [debug line = 49:11]
  call void @llvm.dbg.value(metadata !{i32 %value.2}, i64 0, metadata !117), !dbg !113 ; [debug line = 49:11] [debug variable = value]
  %j.2 = add i2 %j, 1, !dbg !118                  ; [#uses=1 type=i2] [debug line = 48:32]
  call void @llvm.dbg.value(metadata !{i2 %j.2}, i64 0, metadata !119), !dbg !118 ; [debug line = 48:32] [debug variable = j]
  br label %4, !dbg !118                          ; [debug line = 48:32]

; <label>:7                                       ; preds = %4
  %value.1.lcssa = phi i32 [ %value.1, %4 ]       ; [#uses=1 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([19 x i8]* @.str4, i32 %tmp.20), !dbg !120 ; [#uses=0 type=i32] [debug line = 49:50]
  %i.2 = add i2 %i, 1, !dbg !121                  ; [#uses=1 type=i2] [debug line = 47:32]
  call void @llvm.dbg.value(metadata !{i2 %i.2}, i64 0, metadata !122), !dbg !121 ; [debug line = 47:32] [debug variable = i]
  br label %1, !dbg !121                          ; [debug line = 47:32]

; <label>:9                                       ; preds = %1
  %value.lcssa = phi i32 [ %value, %1 ]           ; [#uses=1 type=i32]
  ret i32 %value.lcssa, !dbg !123                 ; [debug line = 50:5]
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

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/Sobel_HLS/edge_prj/solution1/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS\5CSobel_HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS\5CSobel_HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 44} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !9, metadata !9}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1", metadata !"sob_xy1"}
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
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"sob_xy1", metadata !33, metadata !"int", i32 0, i32 31}
!47 = metadata !{i32 786689, metadata !5, metadata !"video", null, i32 4, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !10, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 4, i32 19, metadata !5, null}
!52 = metadata !{i32 786689, metadata !5, metadata !"sob_x1", null, i32 4, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 4, i32 38, metadata !5, null}
!54 = metadata !{i32 786689, metadata !5, metadata !"sob_y1", null, i32 4, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 4, i32 58, metadata !5, null}
!56 = metadata !{i32 786689, metadata !5, metadata !"sob_xy1", null, i32 4, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 4, i32 78, metadata !5, null}
!58 = metadata !{i32 786688, metadata !59, metadata !"block", metadata !6, i32 11, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 11, i32 7, metadata !59, null}
!64 = metadata !{i32 16, i32 21, metadata !65, null}
!65 = metadata !{i32 786443, metadata !59, i32 16, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 22, i32 12, metadata !67, null}
!67 = metadata !{i32 786443, metadata !68, i32 21, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786443, metadata !69, i32 19, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !70, i32 18, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !65, i32 18, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 18, i32 1, metadata !70, null}
!72 = metadata !{i32 20, i32 7, metadata !68, null}
!73 = metadata !{i32 18, i32 21, metadata !69, null}
!74 = metadata !{i32 19, i32 6, metadata !68, null}
!75 = metadata !{i32 28, i32 21, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 28, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !68, i32 26, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 23, i32 6, metadata !67, null}
!79 = metadata !{i32 24, i32 4, metadata !67, null}
!80 = metadata !{i32 29, i32 1, metadata !81, null}
!81 = metadata !{i32 786443, metadata !76, i32 29, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 30, i32 5, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 30, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !81, i32 29, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 29, i32 21, metadata !84, null}
!86 = metadata !{i32 29, i32 29, metadata !84, null}
!87 = metadata !{i32 786688, metadata !59, metadata !"n", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 30, i32 42, metadata !84, null}
!89 = metadata !{i32 28, i32 29, metadata !76, null}
!90 = metadata !{i32 786688, metadata !59, metadata !"m", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 31, i32 12, metadata !77, null}
!92 = metadata !{i32 786688, metadata !59, metadata !"value", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 32, i32 6, metadata !77, null}
!94 = metadata !{i32 34, i32 12, metadata !77, null}
!95 = metadata !{i32 35, i32 6, metadata !77, null}
!96 = metadata !{i32 36, i32 50, metadata !77, null}
!97 = metadata !{i32 38, i32 5, metadata !68, null}
!98 = metadata !{i32 18, i32 31, metadata !69, null}
!99 = metadata !{i32 786688, metadata !59, metadata !"j", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 38, i32 5, metadata !69, null}
!101 = metadata !{i32 16, i32 31, metadata !65, null}
!102 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 40, i32 1, metadata !59, null}
!104 = metadata !{i32 786689, metadata !13, metadata !"operatr", null, i32 43, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 43, i32 21, metadata !13, null}
!106 = metadata !{i32 786689, metadata !13, metadata !"block", null, i32 43, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 43, i32 36, metadata !13, null}
!108 = metadata !{i32 47, i32 24, metadata !109, null}
!109 = metadata !{i32 786443, metadata !110, i32 47, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786443, metadata !13, i32 44, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 48, i32 1, metadata !112, null}
!112 = metadata !{i32 786443, metadata !109, i32 48, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 49, i32 11, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 49, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !112, i32 48, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 48, i32 24, metadata !115, null}
!117 = metadata !{i32 786688, metadata !110, metadata !"value", metadata !6, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 48, i32 32, metadata !115, null}
!119 = metadata !{i32 786688, metadata !110, metadata !"j", metadata !6, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 49, i32 50, metadata !115, null}
!121 = metadata !{i32 47, i32 32, metadata !109, null}
!122 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !6, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 50, i32 5, metadata !110, null}
