; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]

; [#uses=0]
define void @edge_det(i32* %video, i32* %sob_x1, i32* %sob_y1) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %3 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %sob_x = alloca [9 x i32], align 16             ; [#uses=2 type=[9 x i32]*]
  %sob_y = alloca [9 x i32], align 16             ; [#uses=2 type=[9 x i32]*]
  %i = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %m = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %n = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %block = alloca [9 x i32], align 16             ; [#uses=3 type=[9 x i32]*]
  %value = alloca i32, align 4                    ; [#uses=4 type=i32*]
  store i32* %video, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !29), !dbg !30 ; [debug line = 4:19] [debug variable = video]
  store i32* %sob_x1, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !31), !dbg !32 ; [debug line = 4:38] [debug variable = sob_x1]
  store i32* %sob_y1, i32** %3, align 8
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !33), !dbg !34 ; [debug line = 4:58] [debug variable = sob_y1]
  %4 = load i32** %2, align 8, !dbg !35           ; [#uses=1 type=i32*] [debug line = 5:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 10000) nounwind, !dbg !35 ; [debug line = 5:2]
  %5 = load i32** %3, align 8, !dbg !37           ; [#uses=1 type=i32*] [debug line = 5:41]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %5, i32 10000) nounwind, !dbg !37 ; [debug line = 5:41]
  %6 = load i32** %1, align 8, !dbg !38           ; [#uses=1 type=i32*] [debug line = 5:80]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %6, i32 10000) nounwind, !dbg !38 ; [debug line = 5:80]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_x}, metadata !39), !dbg !43 ; [debug line = 7:6] [debug variable = sob_x]
  %7 = bitcast [9 x i32]* %sob_x to i8*, !dbg !44 ; [#uses=2 type=i8*] [debug line = 7:39]
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 36, i32 16, i1 false), !dbg !44 ; [debug line = 7:39]
  %8 = bitcast i8* %7 to [9 x i32]*, !dbg !44     ; [#uses=9 type=[9 x i32]*] [debug line = 7:39]
  %9 = getelementptr [9 x i32]* %8, i32 0, i32 0, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -1, i32* %9, !dbg !44                 ; [debug line = 7:39]
  %10 = getelementptr [9 x i32]* %8, i32 0, i32 1, !dbg !44 ; [#uses=0 type=i32*] [debug line = 7:39]
  %11 = getelementptr [9 x i32]* %8, i32 0, i32 2, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 1, i32* %11, !dbg !44                 ; [debug line = 7:39]
  %12 = getelementptr [9 x i32]* %8, i32 0, i32 3, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -2, i32* %12, !dbg !44                ; [debug line = 7:39]
  %13 = getelementptr [9 x i32]* %8, i32 0, i32 4, !dbg !44 ; [#uses=0 type=i32*] [debug line = 7:39]
  %14 = getelementptr [9 x i32]* %8, i32 0, i32 5, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 2, i32* %14, !dbg !44                 ; [debug line = 7:39]
  %15 = getelementptr [9 x i32]* %8, i32 0, i32 6, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -1, i32* %15, !dbg !44                ; [debug line = 7:39]
  %16 = getelementptr [9 x i32]* %8, i32 0, i32 7, !dbg !44 ; [#uses=0 type=i32*] [debug line = 7:39]
  %17 = getelementptr [9 x i32]* %8, i32 0, i32 8, !dbg !44 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 1, i32* %17, !dbg !44                 ; [debug line = 7:39]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_y}, metadata !45), !dbg !46 ; [debug line = 8:9] [debug variable = sob_y]
  %18 = bitcast [9 x i32]* %sob_y to i8*, !dbg !47 ; [#uses=2 type=i8*] [debug line = 8:42]
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 36, i32 16, i1 false), !dbg !47 ; [debug line = 8:42]
  %19 = bitcast i8* %18 to [9 x i32]*, !dbg !47   ; [#uses=9 type=[9 x i32]*] [debug line = 8:42]
  %20 = getelementptr [9 x i32]* %19, i32 0, i32 0, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -1, i32* %20, !dbg !47                ; [debug line = 8:42]
  %21 = getelementptr [9 x i32]* %19, i32 0, i32 1, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -2, i32* %21, !dbg !47                ; [debug line = 8:42]
  %22 = getelementptr [9 x i32]* %19, i32 0, i32 2, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -1, i32* %22, !dbg !47                ; [debug line = 8:42]
  %23 = getelementptr [9 x i32]* %19, i32 0, i32 3, !dbg !47 ; [#uses=0 type=i32*] [debug line = 8:42]
  %24 = getelementptr [9 x i32]* %19, i32 0, i32 4, !dbg !47 ; [#uses=0 type=i32*] [debug line = 8:42]
  %25 = getelementptr [9 x i32]* %19, i32 0, i32 5, !dbg !47 ; [#uses=0 type=i32*] [debug line = 8:42]
  %26 = getelementptr [9 x i32]* %19, i32 0, i32 6, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 1, i32* %26, !dbg !47                 ; [debug line = 8:42]
  %27 = getelementptr [9 x i32]* %19, i32 0, i32 7, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 2, i32* %27, !dbg !47                 ; [debug line = 8:42]
  %28 = getelementptr [9 x i32]* %19, i32 0, i32 8, !dbg !47 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 1, i32* %28, !dbg !47                 ; [debug line = 8:42]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !48), !dbg !49 ; [debug line = 10:7] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !50), !dbg !51 ; [debug line = 10:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !52), !dbg !53 ; [debug line = 10:11] [debug variable = m]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !54), !dbg !55 ; [debug line = 10:13] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !56), !dbg !57 ; [debug line = 11:7] [debug variable = block]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !58), !dbg !59 ; [debug line = 13:8] [debug variable = value]
  br label %29, !dbg !60                          ; [debug line = 13:13]

; <label>:29                                      ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !61         ; [debug line = 16:21]
  br label %30, !dbg !61                          ; [debug line = 16:21]

; <label>:30                                      ; preds = %123, %29
  %31 = load i32* %i, align 4, !dbg !61           ; [#uses=1 type=i32] [debug line = 16:21]
  %32 = icmp slt i32 %31, 100, !dbg !61           ; [#uses=1 type=i1] [debug line = 16:21]
  br i1 %32, label %33, label %126, !dbg !61      ; [debug line = 16:21]

; <label>:33                                      ; preds = %30
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 18:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 18:1]
  br label %34, !dbg !63                          ; [debug line = 18:1]

; <label>:34                                      ; preds = %33
  store i32 0, i32* %j, align 4, !dbg !65         ; [debug line = 18:21]
  br label %35, !dbg !65                          ; [debug line = 18:21]

; <label>:35                                      ; preds = %119, %34
  %36 = load i32* %j, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 18:21]
  %37 = icmp slt i32 %36, 100, !dbg !65           ; [#uses=1 type=i1] [debug line = 18:21]
  br i1 %37, label %38, label %122, !dbg !65      ; [debug line = 18:21]

; <label>:38                                      ; preds = %35
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 19:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 19:6]
  %39 = load i32* %i, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 20:7]
  %40 = icmp sgt i32 %39, 97, !dbg !69            ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %40, label %44, label %41, !dbg !69       ; [debug line = 20:7]

; <label>:41                                      ; preds = %38
  %42 = load i32* %j, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 20:7]
  %43 = icmp sgt i32 %42, 97, !dbg !69            ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %43, label %44, label %59, !dbg !69       ; [debug line = 20:7]

; <label>:44                                      ; preds = %41, %38
  %45 = load i32* %i, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 22:12]
  %46 = mul nsw i32 %45, 100, !dbg !70            ; [#uses=1 type=i32] [debug line = 22:12]
  %47 = load i32* %j, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 22:12]
  %48 = add nsw i32 %46, %47, !dbg !70            ; [#uses=1 type=i32] [debug line = 22:12]
  %49 = sext i32 %48 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 22:12]
  %50 = load i32** %2, align 8, !dbg !70          ; [#uses=1 type=i32*] [debug line = 22:12]
  %51 = getelementptr inbounds i32* %50, i64 %49, !dbg !70 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %51, align 4, !dbg !70        ; [debug line = 22:12]
  %52 = load i32* %i, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 23:6]
  %53 = mul nsw i32 %52, 100, !dbg !72            ; [#uses=1 type=i32] [debug line = 23:6]
  %54 = load i32* %j, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 23:6]
  %55 = add nsw i32 %53, %54, !dbg !72            ; [#uses=1 type=i32] [debug line = 23:6]
  %56 = sext i32 %55 to i64, !dbg !72             ; [#uses=1 type=i64] [debug line = 23:6]
  %57 = load i32** %3, align 8, !dbg !72          ; [#uses=1 type=i32*] [debug line = 23:6]
  %58 = getelementptr inbounds i32* %57, i64 %56, !dbg !72 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %58, align 4, !dbg !72        ; [debug line = 23:6]
  br label %118, !dbg !73                         ; [debug line = 24:4]

; <label>:59                                      ; preds = %41
  br label %60, !dbg !74                          ; [debug line = 26:4]

; <label>:60                                      ; preds = %59
  store i32 0, i32* %m, align 4, !dbg !76         ; [debug line = 28:21]
  br label %61, !dbg !76                          ; [debug line = 28:21]

; <label>:61                                      ; preds = %92, %60
  %62 = load i32* %m, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 28:21]
  %63 = icmp slt i32 %62, 3, !dbg !76             ; [#uses=1 type=i1] [debug line = 28:21]
  br i1 %63, label %64, label %95, !dbg !76       ; [debug line = 28:21]

; <label>:64                                      ; preds = %61
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 31:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 31:1]
  br label %65, !dbg !78                          ; [debug line = 31:1]

; <label>:65                                      ; preds = %64
  store i32 0, i32* %n, align 4, !dbg !80         ; [debug line = 31:21]
  br label %66, !dbg !80                          ; [debug line = 31:21]

; <label>:66                                      ; preds = %88, %65
  %67 = load i32* %n, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 31:21]
  %68 = icmp slt i32 %67, 3, !dbg !80             ; [#uses=1 type=i1] [debug line = 31:21]
  br i1 %68, label %69, label %91, !dbg !80       ; [debug line = 31:21]

; <label>:69                                      ; preds = %66
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 33:7]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 33:7]
  %70 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %71 = load i32* %m, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %72 = add nsw i32 %70, %71, !dbg !82            ; [#uses=1 type=i32] [debug line = 33:7]
  %73 = mul nsw i32 %72, 100, !dbg !82            ; [#uses=1 type=i32] [debug line = 33:7]
  %74 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %75 = add nsw i32 %73, %74, !dbg !82            ; [#uses=1 type=i32] [debug line = 33:7]
  %76 = load i32* %n, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %77 = add nsw i32 %75, %76, !dbg !82            ; [#uses=1 type=i32] [debug line = 33:7]
  %78 = sext i32 %77 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 33:7]
  %79 = load i32** %1, align 8, !dbg !82          ; [#uses=1 type=i32*] [debug line = 33:7]
  %80 = getelementptr inbounds i32* %79, i64 %78, !dbg !82 ; [#uses=1 type=i32*] [debug line = 33:7]
  %81 = load i32* %80, align 4, !dbg !82          ; [#uses=1 type=i32] [debug line = 33:7]
  %82 = load i32* %m, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %83 = mul nsw i32 %82, 3, !dbg !82              ; [#uses=1 type=i32] [debug line = 33:7]
  %84 = load i32* %n, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 33:7]
  %85 = add nsw i32 %83, %84, !dbg !82            ; [#uses=1 type=i32] [debug line = 33:7]
  %86 = sext i32 %85 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 33:7]
  %87 = getelementptr inbounds [9 x i32]* %block, i32 0, i64 %86, !dbg !82 ; [#uses=1 type=i32*] [debug line = 33:7]
  store i32 %81, i32* %87, align 4, !dbg !82      ; [debug line = 33:7]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 33:40]
  br label %88, !dbg !84                          ; [debug line = 33:40]

; <label>:88                                      ; preds = %69
  %89 = load i32* %n, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 31:29]
  %90 = add nsw i32 %89, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 31:29]
  store i32 %90, i32* %n, align 4, !dbg !85       ; [debug line = 31:29]
  br label %66, !dbg !85                          ; [debug line = 31:29]

; <label>:91                                      ; preds = %66
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 33:40]
  br label %92, !dbg !86                          ; [debug line = 33:40]

; <label>:92                                      ; preds = %91
  %93 = load i32* %m, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 28:29]
  %94 = add nsw i32 %93, 1, !dbg !87              ; [#uses=1 type=i32] [debug line = 28:29]
  store i32 %94, i32* %m, align 4, !dbg !87       ; [debug line = 28:29]
  br label %61, !dbg !87                          ; [debug line = 28:29]

; <label>:95                                      ; preds = %61
  %96 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i32 0, !dbg !88 ; [#uses=1 type=i32*] [debug line = 34:12]
  %97 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !88 ; [#uses=1 type=i32*] [debug line = 34:12]
  %98 = call i32 @convolution(i32* %96, i32* %97), !dbg !88 ; [#uses=1 type=i32] [debug line = 34:12]
  store i32 %98, i32* %value, align 4, !dbg !88   ; [debug line = 34:12]
  %99 = load i32* %value, align 4, !dbg !89       ; [#uses=1 type=i32] [debug line = 35:6]
  %100 = load i32* %i, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 35:6]
  %101 = mul nsw i32 %100, 100, !dbg !89          ; [#uses=1 type=i32] [debug line = 35:6]
  %102 = load i32* %j, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 35:6]
  %103 = add nsw i32 %101, %102, !dbg !89         ; [#uses=1 type=i32] [debug line = 35:6]
  %104 = sext i32 %103 to i64, !dbg !89           ; [#uses=1 type=i64] [debug line = 35:6]
  %105 = load i32** %2, align 8, !dbg !89         ; [#uses=1 type=i32*] [debug line = 35:6]
  %106 = getelementptr inbounds i32* %105, i64 %104, !dbg !89 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %99, i32* %106, align 4, !dbg !89     ; [debug line = 35:6]
  %107 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i32 0, !dbg !90 ; [#uses=1 type=i32*] [debug line = 37:12]
  %108 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !90 ; [#uses=1 type=i32*] [debug line = 37:12]
  %109 = call i32 @convolution(i32* %107, i32* %108), !dbg !90 ; [#uses=1 type=i32] [debug line = 37:12]
  store i32 %109, i32* %value, align 4, !dbg !90  ; [debug line = 37:12]
  %110 = load i32* %value, align 4, !dbg !91      ; [#uses=1 type=i32] [debug line = 38:6]
  %111 = load i32* %i, align 4, !dbg !91          ; [#uses=1 type=i32] [debug line = 38:6]
  %112 = mul nsw i32 %111, 100, !dbg !91          ; [#uses=1 type=i32] [debug line = 38:6]
  %113 = load i32* %j, align 4, !dbg !91          ; [#uses=1 type=i32] [debug line = 38:6]
  %114 = add nsw i32 %112, %113, !dbg !91         ; [#uses=1 type=i32] [debug line = 38:6]
  %115 = sext i32 %114 to i64, !dbg !91           ; [#uses=1 type=i64] [debug line = 38:6]
  %116 = load i32** %3, align 8, !dbg !91         ; [#uses=1 type=i32*] [debug line = 38:6]
  %117 = getelementptr inbounds i32* %116, i64 %115, !dbg !91 ; [#uses=1 type=i32*] [debug line = 38:6]
  store i32 %110, i32* %117, align 4, !dbg !91    ; [debug line = 38:6]
  br label %118

; <label>:118                                     ; preds = %95, %44
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !92 ; [debug line = 40:5]
  br label %119, !dbg !92                         ; [debug line = 40:5]

; <label>:119                                     ; preds = %118
  %120 = load i32* %j, align 4, !dbg !93          ; [#uses=1 type=i32] [debug line = 18:31]
  %121 = add nsw i32 %120, 1, !dbg !93            ; [#uses=1 type=i32] [debug line = 18:31]
  store i32 %121, i32* %j, align 4, !dbg !93      ; [debug line = 18:31]
  br label %35, !dbg !93                          ; [debug line = 18:31]

; <label>:122                                     ; preds = %35
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !94 ; [debug line = 40:5]
  br label %123, !dbg !94                         ; [debug line = 40:5]

; <label>:123                                     ; preds = %122
  %124 = load i32* %i, align 4, !dbg !95          ; [#uses=1 type=i32] [debug line = 16:31]
  %125 = add nsw i32 %124, 1, !dbg !95            ; [#uses=1 type=i32] [debug line = 16:31]
  store i32 %125, i32* %i, align 4, !dbg !95      ; [debug line = 16:31]
  br label %30, !dbg !95                          ; [debug line = 16:31]

; <label>:126                                     ; preds = %30
  ret void, !dbg !96                              ; [debug line = 42:1]
}

; [#uses=16]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=2]
define internal i32 @convolution(i32* %operatr, i32* %block) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %value = alloca i32, align 4                    ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32* %operatr, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !97), !dbg !98 ; [debug line = 45:21] [debug variable = operatr]
  store i32* %block, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !99), !dbg !100 ; [debug line = 45:36] [debug variable = block]
  %3 = load i32** %1, align 8, !dbg !101          ; [#uses=1 type=i32*] [debug line = 46:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %3, i32 9) nounwind, !dbg !101 ; [debug line = 46:2]
  %4 = load i32** %2, align 8, !dbg !103          ; [#uses=1 type=i32*] [debug line = 46:36]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 9) nounwind, !dbg !103 ; [debug line = 46:36]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !104), !dbg !105 ; [debug line = 47:9] [debug variable = value]
  store i32 0, i32* %value, align 4, !dbg !106    ; [debug line = 47:16]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !107), !dbg !108 ; [debug line = 48:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !109), !dbg !110 ; [debug line = 48:8] [debug variable = j]
  br label %5, !dbg !111                          ; [debug line = 48:9]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !112        ; [debug line = 49:24]
  br label %6, !dbg !112                          ; [debug line = 49:24]

; <label>:6                                       ; preds = %38, %5
  %7 = load i32* %i, align 4, !dbg !112           ; [#uses=1 type=i32] [debug line = 49:24]
  %8 = icmp slt i32 %7, 3, !dbg !112              ; [#uses=1 type=i1] [debug line = 49:24]
  br i1 %8, label %9, label %41, !dbg !112        ; [debug line = 49:24]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 50:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 50:1]
  br label %10, !dbg !114                         ; [debug line = 50:1]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %j, align 4, !dbg !116        ; [debug line = 50:24]
  br label %11, !dbg !116                         ; [debug line = 50:24]

; <label>:11                                      ; preds = %34, %10
  %12 = load i32* %j, align 4, !dbg !116          ; [#uses=1 type=i32] [debug line = 50:24]
  %13 = icmp slt i32 %12, 3, !dbg !116            ; [#uses=1 type=i1] [debug line = 50:24]
  br i1 %13, label %14, label %37, !dbg !116      ; [debug line = 50:24]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !118 ; [debug line = 51:11]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !118 ; [debug line = 51:11]
  %15 = load i32* %value, align 4, !dbg !118      ; [#uses=1 type=i32] [debug line = 51:11]
  %16 = load i32* %i, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 51:11]
  %17 = mul nsw i32 %16, 3, !dbg !118             ; [#uses=1 type=i32] [debug line = 51:11]
  %18 = load i32* %j, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 51:11]
  %19 = add nsw i32 %17, %18, !dbg !118           ; [#uses=1 type=i32] [debug line = 51:11]
  %20 = sext i32 %19 to i64, !dbg !118            ; [#uses=1 type=i64] [debug line = 51:11]
  %21 = load i32** %1, align 8, !dbg !118         ; [#uses=1 type=i32*] [debug line = 51:11]
  %22 = getelementptr inbounds i32* %21, i64 %20, !dbg !118 ; [#uses=1 type=i32*] [debug line = 51:11]
  %23 = load i32* %22, align 4, !dbg !118         ; [#uses=1 type=i32] [debug line = 51:11]
  %24 = load i32* %i, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 51:11]
  %25 = mul nsw i32 %24, 3, !dbg !118             ; [#uses=1 type=i32] [debug line = 51:11]
  %26 = load i32* %j, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 51:11]
  %27 = add nsw i32 %25, %26, !dbg !118           ; [#uses=1 type=i32] [debug line = 51:11]
  %28 = sext i32 %27 to i64, !dbg !118            ; [#uses=1 type=i64] [debug line = 51:11]
  %29 = load i32** %2, align 8, !dbg !118         ; [#uses=1 type=i32*] [debug line = 51:11]
  %30 = getelementptr inbounds i32* %29, i64 %28, !dbg !118 ; [#uses=1 type=i32*] [debug line = 51:11]
  %31 = load i32* %30, align 4, !dbg !118         ; [#uses=1 type=i32] [debug line = 51:11]
  %32 = mul nsw i32 %23, %31, !dbg !118           ; [#uses=1 type=i32] [debug line = 51:11]
  %33 = add nsw i32 %15, %32, !dbg !118           ; [#uses=1 type=i32] [debug line = 51:11]
  store i32 %33, i32* %value, align 4, !dbg !118  ; [debug line = 51:11]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 51:50]
  br label %34, !dbg !120                         ; [debug line = 51:50]

; <label>:34                                      ; preds = %14
  %35 = load i32* %j, align 4, !dbg !121          ; [#uses=1 type=i32] [debug line = 50:32]
  %36 = add nsw i32 %35, 1, !dbg !121             ; [#uses=1 type=i32] [debug line = 50:32]
  store i32 %36, i32* %j, align 4, !dbg !121      ; [debug line = 50:32]
  br label %11, !dbg !121                         ; [debug line = 50:32]

; <label>:37                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 51:50]
  br label %38, !dbg !122                         ; [debug line = 51:50]

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 49:32]
  %40 = add nsw i32 %39, 1, !dbg !123             ; [#uses=1 type=i32] [debug line = 49:32]
  store i32 %40, i32* %i, align 4, !dbg !123      ; [debug line = 49:32]
  br label %6, !dbg !123                          ; [debug line = 49:32]

; <label>:41                                      ; preds = %6
  %42 = load i32* %value, align 4, !dbg !124      ; [#uses=1 type=i32] [debug line = 52:5]
  ret i32 %42, !dbg !124                          ; [debug line = 52:5]
}

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
!39 = metadata !{i32 786688, metadata !36, metadata !"sob_x", metadata !6, i32 7, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 7, i32 6, metadata !36, null}
!44 = metadata !{i32 7, i32 39, metadata !36, null}
!45 = metadata !{i32 786688, metadata !36, metadata !"sob_y", metadata !6, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 8, i32 9, metadata !36, null}
!47 = metadata !{i32 8, i32 42, metadata !36, null}
!48 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 10, i32 7, metadata !36, null}
!50 = metadata !{i32 786688, metadata !36, metadata !"j", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 10, i32 9, metadata !36, null}
!52 = metadata !{i32 786688, metadata !36, metadata !"m", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 10, i32 11, metadata !36, null}
!54 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 10, i32 13, metadata !36, null}
!56 = metadata !{i32 786688, metadata !36, metadata !"block", metadata !6, i32 11, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 11, i32 7, metadata !36, null}
!58 = metadata !{i32 786688, metadata !36, metadata !"value", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 13, i32 8, metadata !36, null}
!60 = metadata !{i32 13, i32 13, metadata !36, null}
!61 = metadata !{i32 16, i32 21, metadata !62, null}
!62 = metadata !{i32 786443, metadata !36, i32 16, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 18, i32 1, metadata !64, null}
!64 = metadata !{i32 786443, metadata !62, i32 18, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 18, i32 21, metadata !66, null}
!66 = metadata !{i32 786443, metadata !64, i32 18, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 19, i32 6, metadata !68, null}
!68 = metadata !{i32 786443, metadata !66, i32 19, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 20, i32 7, metadata !68, null}
!70 = metadata !{i32 22, i32 12, metadata !71, null}
!71 = metadata !{i32 786443, metadata !68, i32 21, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 23, i32 6, metadata !71, null}
!73 = metadata !{i32 24, i32 4, metadata !71, null}
!74 = metadata !{i32 26, i32 4, metadata !75, null}
!75 = metadata !{i32 786443, metadata !68, i32 26, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 28, i32 21, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 28, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 31, i32 1, metadata !79, null}
!79 = metadata !{i32 786443, metadata !77, i32 31, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 31, i32 21, metadata !81, null}
!81 = metadata !{i32 786443, metadata !79, i32 31, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 33, i32 7, metadata !83, null}
!83 = metadata !{i32 786443, metadata !81, i32 33, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 33, i32 40, metadata !83, null}
!85 = metadata !{i32 31, i32 29, metadata !81, null}
!86 = metadata !{i32 33, i32 40, metadata !81, null}
!87 = metadata !{i32 28, i32 29, metadata !77, null}
!88 = metadata !{i32 34, i32 12, metadata !75, null}
!89 = metadata !{i32 35, i32 6, metadata !75, null}
!90 = metadata !{i32 37, i32 12, metadata !75, null}
!91 = metadata !{i32 38, i32 6, metadata !75, null}
!92 = metadata !{i32 40, i32 5, metadata !68, null}
!93 = metadata !{i32 18, i32 31, metadata !66, null}
!94 = metadata !{i32 40, i32 5, metadata !66, null}
!95 = metadata !{i32 16, i32 31, metadata !62, null}
!96 = metadata !{i32 42, i32 1, metadata !36, null}
!97 = metadata !{i32 786689, metadata !13, metadata !"operatr", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 45, i32 21, metadata !13, null}
!99 = metadata !{i32 786689, metadata !13, metadata !"block", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 45, i32 36, metadata !13, null}
!101 = metadata !{i32 46, i32 2, metadata !102, null}
!102 = metadata !{i32 786443, metadata !13, i32 46, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 46, i32 36, metadata !102, null}
!104 = metadata !{i32 786688, metadata !102, metadata !"value", metadata !6, i32 47, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 47, i32 9, metadata !102, null}
!106 = metadata !{i32 47, i32 16, metadata !102, null}
!107 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 48, i32 6, metadata !102, null}
!109 = metadata !{i32 786688, metadata !102, metadata !"j", metadata !6, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 48, i32 8, metadata !102, null}
!111 = metadata !{i32 48, i32 9, metadata !102, null}
!112 = metadata !{i32 49, i32 24, metadata !113, null}
!113 = metadata !{i32 786443, metadata !102, i32 49, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 50, i32 1, metadata !115, null}
!115 = metadata !{i32 786443, metadata !113, i32 50, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 50, i32 24, metadata !117, null}
!117 = metadata !{i32 786443, metadata !115, i32 50, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 51, i32 11, metadata !119, null}
!119 = metadata !{i32 786443, metadata !117, i32 51, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 51, i32 50, metadata !119, null}
!121 = metadata !{i32 50, i32 32, metadata !117, null}
!122 = metadata !{i32 51, i32 50, metadata !117, null}
!123 = metadata !{i32 49, i32 32, metadata !113, null}
!124 = metadata !{i32 52, i32 5, metadata !102, null}
