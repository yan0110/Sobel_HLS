; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sob_y = internal constant [9 x i32] [i32 -1, i32 -2, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1] ; [#uses=1 type=[9 x i32]*]
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
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !39), !dbg !43 ; [debug line = 28:7] [debug variable = block]
  %block.addr = getelementptr inbounds [9 x i32]* %block, i64 0, i64 0, !dbg !44 ; [#uses=2 type=i32*] [debug line = 46:12]
  br label %1, !dbg !50                           ; [debug line = 33:21]

; <label>:1                                       ; preds = %12, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %12 ]           ; [#uses=5 type=i32]
  %exitcond3 = icmp eq i32 %i, 100, !dbg !50      ; [#uses=1 type=i1] [debug line = 33:21]
  br i1 %exitcond3, label %13, label %2, !dbg !50 ; [debug line = 33:21]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)), !dbg !51 ; [debug line = 34:1]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 34:1]
  %tmp = icmp sgt i32 %i, 97, !dbg !52            ; [#uses=1 type=i1] [debug line = 36:7]
  %tmp.1 = mul nsw i32 %i, 100, !dbg !53          ; [#uses=2 type=i32] [debug line = 38:12]
  br label %3, !dbg !55                           ; [debug line = 34:21]

; <label>:3                                       ; preds = %11, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %11 ]           ; [#uses=6 type=i32]
  %exitcond2 = icmp eq i32 %j, 100, !dbg !55      ; [#uses=1 type=i1] [debug line = 34:21]
  br i1 %exitcond2, label %12, label %4, !dbg !55 ; [debug line = 34:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)), !dbg !56 ; [debug line = 35:6]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !56 ; [#uses=1 type=i32] [debug line = 35:6]
  %tmp.3 = icmp sgt i32 %j, 97, !dbg !52          ; [#uses=1 type=i1] [debug line = 36:7]
  %or.cond = or i1 %tmp, %tmp.3, !dbg !52         ; [#uses=1 type=i1] [debug line = 36:7]
  br i1 %or.cond, label %5, label %.preheader.preheader, !dbg !52 ; [debug line = 36:7]

.preheader.preheader:                             ; preds = %4
  br label %.preheader, !dbg !57                  ; [debug line = 43:21]

; <label>:5                                       ; preds = %4
  %tmp.4 = add nsw i32 %j, %tmp.1, !dbg !53       ; [#uses=1 type=i32] [debug line = 38:12]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !53       ; [#uses=2 type=i64] [debug line = 38:12]
  %sob_x1.addr = getelementptr inbounds i32* %sob_x1, i64 %tmp.5, !dbg !53 ; [#uses=1 type=i32*] [debug line = 38:12]
  store i32 0, i32* %sob_x1.addr, align 4, !dbg !53 ; [debug line = 38:12]
  %sob_y1.addr = getelementptr inbounds i32* %sob_y1, i64 %tmp.5, !dbg !59 ; [#uses=1 type=i32*] [debug line = 39:6]
  store i32 0, i32* %sob_y1.addr, align 4, !dbg !59 ; [debug line = 39:6]
  br label %11, !dbg !60                          ; [debug line = 40:4]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %m = phi i32 [ %m.1, %9 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %m, 3, !dbg !57        ; [#uses=1 type=i1] [debug line = 43:21]
  br i1 %exitcond1, label %10, label %6, !dbg !57 ; [debug line = 43:21]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)), !dbg !61 ; [debug line = 44:1]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !61 ; [#uses=1 type=i32] [debug line = 44:1]
  %tmp.8 = add nsw i32 %m, %i, !dbg !63           ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.9 = mul nsw i32 %tmp.8, 100, !dbg !63      ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.10 = mul nsw i32 %m, 3, !dbg !63           ; [#uses=1 type=i32] [debug line = 45:6]
  br label %7, !dbg !66                           ; [debug line = 44:21]

; <label>:7                                       ; preds = %8, %6
  %n = phi i32 [ 0, %6 ], [ %n.1, %8 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %n, 3, !dbg !66         ; [#uses=1 type=i1] [debug line = 44:21]
  br i1 %exitcond, label %9, label %8, !dbg !66   ; [debug line = 44:21]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)), !dbg !63 ; [debug line = 45:6]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !63 ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.13 = add i32 %tmp.9, %j, !dbg !63          ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.14 = add i32 %tmp.13, %n, !dbg !63         ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.15 = sext i32 %tmp.14 to i64, !dbg !63     ; [#uses=1 type=i64] [debug line = 45:6]
  %video.addr = getelementptr inbounds i32* %video, i64 %tmp.15, !dbg !63 ; [#uses=1 type=i32*] [debug line = 45:6]
  %video.load = load i32* %video.addr, align 4, !dbg !63 ; [#uses=2 type=i32] [debug line = 45:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %video.load) nounwind
  %tmp.16 = add nsw i32 %n, %tmp.10, !dbg !63     ; [#uses=1 type=i32] [debug line = 45:6]
  %tmp.17 = sext i32 %tmp.16 to i64, !dbg !63     ; [#uses=1 type=i64] [debug line = 45:6]
  %block.addr.1 = getelementptr inbounds [9 x i32]* %block, i64 0, i64 %tmp.17, !dbg !63 ; [#uses=1 type=i32*] [debug line = 45:6]
  store i32 %video.load, i32* %block.addr.1, align 4, !dbg !63 ; [debug line = 45:6]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !67 ; [#uses=0 type=i32] [debug line = 45:39]
  %n.1 = add nsw i32 %n, 1, !dbg !68              ; [#uses=1 type=i32] [debug line = 44:29]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !69), !dbg !68 ; [debug line = 44:29] [debug variable = n]
  br label %7, !dbg !68                           ; [debug line = 44:29]

; <label>:9                                       ; preds = %7
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !70 ; [#uses=0 type=i32] [debug line = 45:39]
  %m.1 = add nsw i32 %m, 1, !dbg !71              ; [#uses=1 type=i32] [debug line = 43:29]
  call void @llvm.dbg.value(metadata !{i32 %m.1}, i64 0, metadata !72), !dbg !71 ; [debug line = 43:29] [debug variable = m]
  br label %.preheader, !dbg !71                  ; [debug line = 43:29]

; <label>:10                                      ; preds = %.preheader
  %value = call fastcc i32 @convolution(i32* getelementptr inbounds ([9 x i32]* @sob_x, i64 0, i64 0), i32* %block.addr), !dbg !44 ; [#uses=1 type=i32] [debug line = 46:12]
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !73), !dbg !44 ; [debug line = 46:12] [debug variable = value]
  %tmp.6 = add nsw i32 %j, %tmp.1, !dbg !74       ; [#uses=1 type=i32] [debug line = 47:6]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !74       ; [#uses=2 type=i64] [debug line = 47:6]
  %sob_x1.addr.1 = getelementptr inbounds i32* %sob_x1, i64 %tmp.7, !dbg !74 ; [#uses=1 type=i32*] [debug line = 47:6]
  store i32 %value, i32* %sob_x1.addr.1, align 4, !dbg !74 ; [debug line = 47:6]
  %value.2 = call fastcc i32 @convolution(i32* getelementptr inbounds ([9 x i32]* @sob_y, i64 0, i64 0), i32* %block.addr), !dbg !75 ; [#uses=1 type=i32] [debug line = 48:12]
  call void @llvm.dbg.value(metadata !{i32 %value.2}, i64 0, metadata !73), !dbg !75 ; [debug line = 48:12] [debug variable = value]
  %sob_y1.addr.1 = getelementptr inbounds i32* %sob_y1, i64 %tmp.7, !dbg !76 ; [#uses=1 type=i32*] [debug line = 49:6]
  store i32 %value.2, i32* %sob_y1.addr.1, align 4, !dbg !76 ; [debug line = 49:6]
  br label %11

; <label>:11                                      ; preds = %10, %5
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 51:5]
  %j.1 = add nsw i32 %j, 1, !dbg !78              ; [#uses=1 type=i32] [debug line = 34:31]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 34:31] [debug variable = j]
  br label %3, !dbg !78                           ; [debug line = 34:31]

; <label>:12                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 51:5]
  %i.1 = add nsw i32 %i, 1, !dbg !81              ; [#uses=1 type=i32] [debug line = 33:31]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !82), !dbg !81 ; [debug line = 33:31] [debug variable = i]
  br label %1, !dbg !81                           ; [debug line = 33:31]

; <label>:13                                      ; preds = %1
  ret void, !dbg !83                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc i32 @convolution(i32* %operatr, i32* %block) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32* %operatr}, i64 0, metadata !84), !dbg !85 ; [debug line = 55:21] [debug variable = operatr]
  call void @llvm.dbg.value(metadata !{i32* %block}, i64 0, metadata !86), !dbg !87 ; [debug line = 55:36] [debug variable = block]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %operatr, i32 9), !dbg !88 ; [debug line = 56:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %block, i32 9), !dbg !90 ; [debug line = 56:36]
  br label %1, !dbg !91                           ; [debug line = 59:24]

; <label>:1                                       ; preds = %5, %0
  %value = phi i32 [ 0, %0 ], [ %value.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %i = phi i32 [ 0, %0 ], [ %i.2, %5 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 3, !dbg !91        ; [#uses=1 type=i1] [debug line = 59:24]
  br i1 %exitcond1, label %6, label %2, !dbg !91  ; [debug line = 59:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)), !dbg !93 ; [debug line = 60:1]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 60:1]
  %tmp = mul nsw i32 %i, 3, !dbg !95              ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp.19 = add nsw i32 %tmp, 1, !dbg !95         ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp.20 = sext i32 %tmp.19 to i64, !dbg !95     ; [#uses=2 type=i64] [debug line = 61:11]
  %operatr.addr = getelementptr inbounds i32* %operatr, i64 %tmp.20, !dbg !95 ; [#uses=1 type=i32*] [debug line = 61:11]
  %block.addr = getelementptr inbounds i32* %block, i64 %tmp.20, !dbg !95 ; [#uses=1 type=i32*] [debug line = 61:11]
  br label %3, !dbg !98                           ; [debug line = 60:24]

; <label>:3                                       ; preds = %4, %2
  %value.1 = phi i32 [ %value, %2 ], [ %value.3, %4 ] ; [#uses=2 type=i32]
  %j = phi i32 [ 0, %2 ], [ %j.2, %4 ]            ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %j, 3, !dbg !98         ; [#uses=1 type=i1] [debug line = 60:24]
  br i1 %exitcond, label %5, label %4, !dbg !98   ; [debug line = 60:24]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)), !dbg !95 ; [debug line = 61:11]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 61:11]
  %operatr.load = load i32* %operatr.addr, align 4, !dbg !95 ; [#uses=2 type=i32] [debug line = 61:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %operatr.load) nounwind
  %block.load = load i32* %block.addr, align 4, !dbg !95 ; [#uses=2 type=i32] [debug line = 61:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %block.load) nounwind
  %tmp.22 = mul nsw i32 %block.load, %operatr.load, !dbg !95 ; [#uses=1 type=i32] [debug line = 61:11]
  %value.3 = add nsw i32 %tmp.22, %value.1, !dbg !95 ; [#uses=1 type=i32] [debug line = 61:11]
  call void @llvm.dbg.value(metadata !{i32 %value.3}, i64 0, metadata !99), !dbg !95 ; [debug line = 61:11] [debug variable = value]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 61:50]
  %j.2 = add nsw i32 %j, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 60:32]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !102), !dbg !101 ; [debug line = 60:32] [debug variable = j]
  br label %3, !dbg !101                          ; [debug line = 60:32]

; <label>:5                                       ; preds = %3
  %value.1.lcssa = phi i32 [ %value.1, %3 ]       ; [#uses=1 type=i32]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !103 ; [#uses=0 type=i32] [debug line = 61:50]
  %i.2 = add nsw i32 %i, 1, !dbg !104             ; [#uses=1 type=i32] [debug line = 59:32]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !105), !dbg !104 ; [debug line = 59:32] [debug variable = i]
  br label %1, !dbg !104                          ; [debug line = 59:32]

; <label>:6                                       ; preds = %1
  %value.0.lcssa = phi i32 [ %value, %1 ]         ; [#uses=1 type=i32]
  ret i32 %value.0.lcssa, !dbg !106               ; [debug line = 62:5]
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
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 55, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @convolution, null, null, metadata !11, i32 56} ; [ DW_TAG_subprogram ]
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
!39 = metadata !{i32 786688, metadata !36, metadata !"block", metadata !6, i32 28, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 28, i32 7, metadata !36, null}
!44 = metadata !{i32 46, i32 12, metadata !45, null}
!45 = metadata !{i32 786443, metadata !46, i32 42, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !47, i32 35, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !48, i32 34, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !49, i32 34, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786443, metadata !36, i32 33, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 33, i32 21, metadata !49, null}
!51 = metadata !{i32 34, i32 1, metadata !48, null}
!52 = metadata !{i32 36, i32 7, metadata !46, null}
!53 = metadata !{i32 38, i32 12, metadata !54, null}
!54 = metadata !{i32 786443, metadata !46, i32 37, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 34, i32 21, metadata !47, null}
!56 = metadata !{i32 35, i32 6, metadata !46, null}
!57 = metadata !{i32 43, i32 21, metadata !58, null}
!58 = metadata !{i32 786443, metadata !45, i32 43, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 39, i32 6, metadata !54, null}
!60 = metadata !{i32 40, i32 4, metadata !54, null}
!61 = metadata !{i32 44, i32 1, metadata !62, null}
!62 = metadata !{i32 786443, metadata !58, i32 44, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 45, i32 6, metadata !64, null}
!64 = metadata !{i32 786443, metadata !65, i32 45, i32 6, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !62, i32 44, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 44, i32 21, metadata !65, null}
!67 = metadata !{i32 45, i32 39, metadata !64, null}
!68 = metadata !{i32 44, i32 29, metadata !65, null}
!69 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 45, i32 39, metadata !65, null}
!71 = metadata !{i32 43, i32 29, metadata !58, null}
!72 = metadata !{i32 786688, metadata !36, metadata !"m", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786688, metadata !36, metadata !"value", metadata !6, i32 30, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 47, i32 6, metadata !45, null}
!75 = metadata !{i32 48, i32 12, metadata !45, null}
!76 = metadata !{i32 49, i32 6, metadata !45, null}
!77 = metadata !{i32 51, i32 5, metadata !46, null}
!78 = metadata !{i32 34, i32 31, metadata !47, null}
!79 = metadata !{i32 786688, metadata !36, metadata !"j", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 51, i32 5, metadata !47, null}
!81 = metadata !{i32 33, i32 31, metadata !49, null}
!82 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 52, i32 1, metadata !36, null}
!84 = metadata !{i32 786689, metadata !13, metadata !"operatr", metadata !6, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 55, i32 21, metadata !13, null}
!86 = metadata !{i32 786689, metadata !13, metadata !"block", metadata !6, i32 33554487, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 55, i32 36, metadata !13, null}
!88 = metadata !{i32 56, i32 2, metadata !89, null}
!89 = metadata !{i32 786443, metadata !13, i32 56, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 56, i32 36, metadata !89, null}
!91 = metadata !{i32 59, i32 24, metadata !92, null}
!92 = metadata !{i32 786443, metadata !89, i32 59, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 60, i32 1, metadata !94, null}
!94 = metadata !{i32 786443, metadata !92, i32 60, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 61, i32 11, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 61, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !94, i32 60, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 60, i32 24, metadata !97, null}
!99 = metadata !{i32 786688, metadata !89, metadata !"value", metadata !6, i32 57, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 61, i32 50, metadata !96, null}
!101 = metadata !{i32 60, i32 32, metadata !97, null}
!102 = metadata !{i32 786688, metadata !89, metadata !"j", metadata !6, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 61, i32 50, metadata !97, null}
!104 = metadata !{i32 59, i32 32, metadata !92, null}
!105 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !6, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 62, i32 5, metadata !89, null}
