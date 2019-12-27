; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1] ; [#uses=1 type=[9 x i32]*]
@sob_x = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1] ; [#uses=1 type=[9 x i32]*]
@edge_det.str = internal unnamed_addr constant [9 x i8] c"edge_det\00" ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=1 type=[16 x i8]*]

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @edge_det(i32* %video, i32* %sob_x1, i32* %sob_y1) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @edge_det.str) nounwind
  %block = alloca [9 x i32], align 16             ; [#uses=2 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %video}, i64 0, metadata !29), !dbg !30 ; [debug line = 4:19] [debug variable = video]
  call void @llvm.dbg.value(metadata !{i32* %sob_x1}, i64 0, metadata !31), !dbg !32 ; [debug line = 4:38] [debug variable = sob_x1]
  call void @llvm.dbg.value(metadata !{i32* %sob_y1}, i64 0, metadata !33), !dbg !34 ; [debug line = 4:58] [debug variable = sob_y1]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sob_x1, i32 10000), !dbg !35 ; [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sob_y1, i32 10000), !dbg !37 ; [debug line = 5:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %video, i32 10000), !dbg !38 ; [debug line = 5:80]
  br label %meminst4.preheader

meminst4.preheader:                               ; preds = %0
  br label %1, !dbg !39                           ; [debug line = 8:42]

; <label>:1                                       ; preds = %meminst4.preheader
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !40), !dbg !44 ; [debug line = 11:7] [debug variable = block]
  %block.addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 0, !dbg !45 ; [#uses=2 type=i32*] [debug line = 34:12]
  br label %2, !dbg !51                           ; [debug line = 16:21]

; <label>:2                                       ; preds = %13, %1
  %i = phi i32 [ 0, %1 ], [ %i.1, %13 ]           ; [#uses=5 type=i32]
  %exitcond3 = icmp eq i32 %i, 100, !dbg !51      ; [#uses=1 type=i1] [debug line = 16:21]
  br i1 %exitcond3, label %14, label %3, !dbg !51 ; [debug line = 16:21]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)), !dbg !52 ; [debug line = 18:1]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 18:1]
  %tmp = icmp sgt i32 %i, 97, !dbg !53            ; [#uses=1 type=i1] [debug line = 20:7]
  %tmp.1 = mul nsw i32 %i, 100, !dbg !54          ; [#uses=2 type=i32] [debug line = 22:12]
  br label %4, !dbg !56                           ; [debug line = 18:21]

; <label>:4                                       ; preds = %12, %3
  %j = phi i32 [ 0, %3 ], [ %j.1, %12 ]           ; [#uses=6 type=i32]
  %exitcond2 = icmp eq i32 %j, 100, !dbg !56      ; [#uses=1 type=i1] [debug line = 18:21]
  br i1 %exitcond2, label %13, label %5, !dbg !56 ; [debug line = 18:21]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)), !dbg !57 ; [debug line = 19:6]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !57 ; [#uses=1 type=i32] [debug line = 19:6]
  %tmp.3 = icmp sgt i32 %j, 97, !dbg !53          ; [#uses=1 type=i1] [debug line = 20:7]
  %or.cond = or i1 %tmp, %tmp.3, !dbg !53         ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %or.cond, label %6, label %.preheader.preheader, !dbg !53 ; [debug line = 20:7]

.preheader.preheader:                             ; preds = %5
  br label %.preheader, !dbg !58                  ; [debug line = 28:21]

; <label>:6                                       ; preds = %5
  %tmp.4 = add nsw i32 %j, %tmp.1, !dbg !54       ; [#uses=1 type=i32] [debug line = 22:12]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !54       ; [#uses=2 type=i64] [debug line = 22:12]
  %sob_x1.addr = getelementptr inbounds i32* %sob_x1, i64 %tmp.5, !dbg !54 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %sob_x1.addr, align 4, !dbg !54 ; [debug line = 22:12]
  %sob_y1.addr = getelementptr inbounds i32* %sob_y1, i64 %tmp.5, !dbg !60 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %sob_y1.addr, align 4, !dbg !60 ; [debug line = 23:6]
  br label %12, !dbg !61                          ; [debug line = 24:4]

.preheader:                                       ; preds = %10, %.preheader.preheader
  %m = phi i32 [ %m.1, %10 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %m, 3, !dbg !58        ; [#uses=1 type=i1] [debug line = 28:21]
  br i1 %exitcond1, label %11, label %7, !dbg !58 ; [debug line = 28:21]

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)), !dbg !62 ; [debug line = 31:1]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !62 ; [#uses=1 type=i32] [debug line = 31:1]
  %tmp.8 = add nsw i32 %m, %i, !dbg !64           ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.9 = mul nsw i32 %tmp.8, 100, !dbg !64      ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.10 = mul nsw i32 %m, 3, !dbg !64           ; [#uses=1 type=i32] [debug line = 33:7]
  br label %8, !dbg !67                           ; [debug line = 31:21]

; <label>:8                                       ; preds = %9, %7
  %n = phi i32 [ 0, %7 ], [ %n.1, %9 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %n, 3, !dbg !67         ; [#uses=1 type=i1] [debug line = 31:21]
  br i1 %exitcond, label %10, label %9, !dbg !67  ; [debug line = 31:21]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)), !dbg !64 ; [debug line = 33:7]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !64 ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.13 = add i32 %tmp.9, %j, !dbg !64          ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.14 = add i32 %tmp.13, %n, !dbg !64         ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.15 = sext i32 %tmp.14 to i64, !dbg !64     ; [#uses=1 type=i64] [debug line = 33:7]
  %video.addr = getelementptr inbounds i32* %video, i64 %tmp.15, !dbg !64 ; [#uses=1 type=i32*] [debug line = 33:7]
  %video.load = load i32* %video.addr, align 4, !dbg !64 ; [#uses=2 type=i32] [debug line = 33:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %video.load) nounwind
  %tmp.16 = add nsw i32 %n, %tmp.10, !dbg !64     ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.17 = sext i32 %tmp.16 to i64, !dbg !64     ; [#uses=1 type=i64] [debug line = 33:7]
  %block.addr.1 = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp.17, !dbg !64 ; [#uses=1 type=i32*] [debug line = 33:7]
  store i32 %video.load, i32* %block.addr.1, align 4, !dbg !64 ; [debug line = 33:7]
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !68 ; [#uses=0 type=i32] [debug line = 33:40]
  %n.1 = add nsw i32 %n, 1, !dbg !69              ; [#uses=1 type=i32] [debug line = 31:29]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !70), !dbg !69 ; [debug line = 31:29] [debug variable = n]
  br label %8, !dbg !69                           ; [debug line = 31:29]

; <label>:10                                      ; preds = %8
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !71 ; [#uses=0 type=i32] [debug line = 33:40]
  %m.1 = add nsw i32 %m, 1, !dbg !72              ; [#uses=1 type=i32] [debug line = 28:29]
  call void @llvm.dbg.value(metadata !{i32 %m.1}, i64 0, metadata !73), !dbg !72 ; [debug line = 28:29] [debug variable = m]
  br label %.preheader, !dbg !72                  ; [debug line = 28:29]

; <label>:11                                      ; preds = %.preheader
  %value = call fastcc i32 @convolution(i32* getelementptr inbounds ([9 x i32]* @sob_x, i64 0, i64 0), i32* %block.addr), !dbg !45 ; [#uses=1 type=i32] [debug line = 34:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !74), !dbg !45 ; [debug line = 34:12] [debug variable = value]
  %tmp.6 = add nsw i32 %j, %tmp.1, !dbg !75       ; [#uses=1 type=i32] [debug line = 35:6]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !75       ; [#uses=2 type=i64] [debug line = 35:6]
  %sob_x1.addr.1 = getelementptr inbounds i32* %sob_x1, i64 %tmp.7, !dbg !75 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %value, i32* %sob_x1.addr.1, align 4, !dbg !75 ; [debug line = 35:6]
  %value.2 = call fastcc i32 @convolution(i32* getelementptr inbounds ([9 x i32]* @sob_y, i64 0, i64 0), i32* %block.addr), !dbg !76 ; [#uses=1 type=i32] [debug line = 37:12]
  call void @llvm.dbg.value(metadata !{i32 %value.2}, i64 0, metadata !74), !dbg !76 ; [debug line = 37:12] [debug variable = value]
  %sob_y1.addr.1 = getelementptr inbounds i32* %sob_y1, i64 %tmp.7, !dbg !77 ; [#uses=1 type=i32*] [debug line = 38:6]
  store i32 %value.2, i32* %sob_y1.addr.1, align 4, !dbg !77 ; [debug line = 38:6]
  br label %12

; <label>:12                                      ; preds = %11, %6
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !78 ; [#uses=0 type=i32] [debug line = 40:5]
  %j.1 = add nsw i32 %j, 1, !dbg !79              ; [#uses=1 type=i32] [debug line = 18:31]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !80), !dbg !79 ; [debug line = 18:31] [debug variable = j]
  br label %4, !dbg !79                           ; [debug line = 18:31]

; <label>:13                                      ; preds = %4
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !81 ; [#uses=0 type=i32] [debug line = 40:5]
  %i.1 = add nsw i32 %i, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 16:31]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !83), !dbg !82 ; [debug line = 16:31] [debug variable = i]
  br label %2, !dbg !82                           ; [debug line = 16:31]

; <label>:14                                      ; preds = %2
  ret void, !dbg !84                              ; [debug line = 42:1]
}

; [#uses=2]
define internal fastcc i32 @convolution(i32* %operatr, i32* %block) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32* %operatr}, i64 0, metadata !85), !dbg !86 ; [debug line = 45:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{i32* %block}, i64 0, metadata !87), !dbg !88 ; [debug line = 45:36] [debug variable = block]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %operatr, i32 9), !dbg !89 ; [debug line = 46:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %block, i32 9), !dbg !91 ; [debug line = 46:36]
  br label %1, !dbg !92                           ; [debug line = 49:24]

; <label>:1                                       ; preds = %5, %0
  %value = phi i32 [ 0, %0 ], [ %value.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %i = phi i32 [ 0, %0 ], [ %i.2, %5 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 3, !dbg !92        ; [#uses=1 type=i1] [debug line = 49:24]
  br i1 %exitcond1, label %6, label %2, !dbg !92  ; [debug line = 49:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)), !dbg !94 ; [debug line = 50:1]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !94 ; [#uses=1 type=i32] [debug line = 50:1]
  %tmp = mul nsw i32 %i, 3, !dbg !96              ; [#uses=1 type=i32] [debug line = 51:11]
  br label %3, !dbg !99                           ; [debug line = 50:24]

; <label>:3                                       ; preds = %4, %2
  %value.1 = phi i32 [ %value, %2 ], [ %value.3, %4 ] ; [#uses=2 type=i32]
  %j = phi i32 [ 0, %2 ], [ %j.2, %4 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 3, !dbg !99         ; [#uses=1 type=i1] [debug line = 50:24]
  br i1 %exitcond, label %5, label %4, !dbg !99   ; [debug line = 50:24]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)), !dbg !96 ; [debug line = 51:11]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 51:11]
  %tmp.20 = add nsw i32 %j, %tmp, !dbg !96        ; [#uses=1 type=i32] [debug line = 51:11]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !96     ; [#uses=2 type=i64] [debug line = 51:11]
  %operatr.addr = getelementptr inbounds i32* %operatr, i64 %tmp.21, !dbg !96 ; [#uses=1 type=i32*] [debug line = 51:11]
  %operatr.load = load i32* %operatr.addr, align 4, !dbg !96 ; [#uses=2 type=i32] [debug line = 51:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %operatr.load) nounwind
  %block.addr = getelementptr inbounds i32* %block, i64 %tmp.21, !dbg !96 ; [#uses=1 type=i32*] [debug line = 51:11]
  %block.load = load i32* %block.addr, align 4, !dbg !96 ; [#uses=2 type=i32] [debug line = 51:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %block.load) nounwind
  %tmp.22 = mul nsw i32 %block.load, %operatr.load, !dbg !96 ; [#uses=1 type=i32] [debug line = 51:11]
  %value.3 = add nsw i32 %tmp.22, %value.1, !dbg !96 ; [#uses=1 type=i32] [debug line = 51:11]
  call void @llvm.dbg.value(metadata !{i32 %value.3}, i64 0, metadata !100), !dbg !96 ; [debug line = 51:11] [debug variable = value]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !101 ; [#uses=0 type=i32] [debug line = 51:50]
  %j.2 = add nsw i32 %j, 1, !dbg !102             ; [#uses=1 type=i32] [debug line = 50:32]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !103), !dbg !102 ; [debug line = 50:32] [debug variable = j]
  br label %3, !dbg !102                          ; [debug line = 50:32]

; <label>:5                                       ; preds = %3
  %value.1.lcssa = phi i32 [ %value.1, %3 ]       ; [#uses=1 type=i32]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 51:50]
  %i.2 = add nsw i32 %i, 1, !dbg !105             ; [#uses=1 type=i32] [debug line = 49:32]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !106), !dbg !105 ; [debug line = 49:32] [debug variable = i]
  br label %1, !dbg !105                          ; [debug line = 49:32]

; <label>:6                                       ; preds = %1
  %value.0.lcssa = phi i32 [ %value, %1 ]         ; [#uses=1 type=i32]
  ret i32 %value.0.lcssa, !dbg !107               ; [debug line = 52:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @edge_det, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 45, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @convolution, null, null, metadata !11, i32 46} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !9, metadata !9}
!16 = metadata !{void (i32*, i32*, i32*)* @edge_det, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1"}
!22 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!23 = metadata !{i32 (i32*, i32*)* @convolution, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !22}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"operatr", metadata !"block"}
!29 = metadata !{i32 786689, metadata !5, metadata !"video", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 4, i32 19, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"sob_x1", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 4, i32 38, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"sob_y1", metadata !6, i32 50331652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 4, i32 58, metadata !5, null}
!35 = metadata !{i32 5, i32 2, metadata !36, null}
!36 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 5, i32 41, metadata !36, null}
!38 = metadata !{i32 5, i32 80, metadata !36, null}
!39 = metadata !{i32 8, i32 42, metadata !36, null}
!40 = metadata !{i32 786688, metadata !36, metadata !"block", metadata !6, i32 11, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 11, i32 7, metadata !36, null}
!45 = metadata !{i32 34, i32 12, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 26, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !48, i32 19, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !49, i32 18, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786443, metadata !50, i32 18, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !36, i32 16, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 16, i32 21, metadata !50, null}
!52 = metadata !{i32 18, i32 1, metadata !49, null}
!53 = metadata !{i32 20, i32 7, metadata !47, null}
!54 = metadata !{i32 22, i32 12, metadata !55, null}
!55 = metadata !{i32 786443, metadata !47, i32 21, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 18, i32 21, metadata !48, null}
!57 = metadata !{i32 19, i32 6, metadata !47, null}
!58 = metadata !{i32 28, i32 21, metadata !59, null}
!59 = metadata !{i32 786443, metadata !46, i32 28, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 23, i32 6, metadata !55, null}
!61 = metadata !{i32 24, i32 4, metadata !55, null}
!62 = metadata !{i32 31, i32 1, metadata !63, null}
!63 = metadata !{i32 786443, metadata !59, i32 31, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 33, i32 7, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 33, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !63, i32 31, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 31, i32 21, metadata !66, null}
!68 = metadata !{i32 33, i32 40, metadata !65, null}
!69 = metadata !{i32 31, i32 29, metadata !66, null}
!70 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 33, i32 40, metadata !66, null}
!72 = metadata !{i32 28, i32 29, metadata !59, null}
!73 = metadata !{i32 786688, metadata !36, metadata !"m", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786688, metadata !36, metadata !"value", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 35, i32 6, metadata !46, null}
!76 = metadata !{i32 37, i32 12, metadata !46, null}
!77 = metadata !{i32 38, i32 6, metadata !46, null}
!78 = metadata !{i32 40, i32 5, metadata !47, null}
!79 = metadata !{i32 18, i32 31, metadata !48, null}
!80 = metadata !{i32 786688, metadata !36, metadata !"j", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 40, i32 5, metadata !48, null}
!82 = metadata !{i32 16, i32 31, metadata !50, null}
!83 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 42, i32 1, metadata !36, null}
!85 = metadata !{i32 786689, metadata !13, metadata !"operatr", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 45, i32 21, metadata !13, null}
!87 = metadata !{i32 786689, metadata !13, metadata !"block", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 45, i32 36, metadata !13, null}
!89 = metadata !{i32 46, i32 2, metadata !90, null}
!90 = metadata !{i32 786443, metadata !13, i32 46, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 46, i32 36, metadata !90, null}
!92 = metadata !{i32 49, i32 24, metadata !93, null}
!93 = metadata !{i32 786443, metadata !90, i32 49, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 50, i32 1, metadata !95, null}
!95 = metadata !{i32 786443, metadata !93, i32 50, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 51, i32 11, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 51, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !95, i32 50, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 50, i32 24, metadata !98, null}
!100 = metadata !{i32 786688, metadata !90, metadata !"value", metadata !6, i32 47, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 51, i32 50, metadata !97, null}
!102 = metadata !{i32 50, i32 32, metadata !98, null}
!103 = metadata !{i32 786688, metadata !90, metadata !"j", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 51, i32 50, metadata !98, null}
!105 = metadata !{i32 49, i32 32, metadata !93, null}
!106 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 52, i32 5, metadata !90, null}
