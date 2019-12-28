; ModuleID = 'F:/0yan/fpga/HLS/Sobel_HLS/edge_prj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str2 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str4 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str5 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]

; [#uses=0]
define void @edge_det(i32* %video, i32* %sob_x1, i32* %sob_y1, i32* %sob_xy1) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=5 type=i32**]
  %3 = alloca i32*, align 8                       ; [#uses=5 type=i32**]
  %4 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %sob_x = alloca [9 x i32], align 16             ; [#uses=2 type=[9 x i32]*]
  %sob_y = alloca [9 x i32], align 16             ; [#uses=2 type=[9 x i32]*]
  %i = alloca i32, align 4                        ; [#uses=14 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=14 type=i32*]
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
  store i32* %sob_xy1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !35), !dbg !36 ; [debug line = 4:78] [debug variable = sob_xy1]
  %5 = load i32** %2, align 8, !dbg !37           ; [#uses=1 type=i32*] [debug line = 5:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %5, i32 10000) nounwind, !dbg !37 ; [debug line = 5:2]
  %6 = load i32** %3, align 8, !dbg !39           ; [#uses=1 type=i32*] [debug line = 5:41]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %6, i32 10000) nounwind, !dbg !39 ; [debug line = 5:41]
  %7 = load i32** %1, align 8, !dbg !40           ; [#uses=1 type=i32*] [debug line = 5:80]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %7, i32 10000) nounwind, !dbg !40 ; [debug line = 5:80]
  %8 = load i32** %4, align 8, !dbg !41           ; [#uses=1 type=i32*] [debug line = 5:118]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %8, i32 10000) nounwind, !dbg !41 ; [debug line = 5:118]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_x}, metadata !42), !dbg !46 ; [debug line = 7:6] [debug variable = sob_x]
  %9 = bitcast [9 x i32]* %sob_x to i8*, !dbg !47 ; [#uses=2 type=i8*] [debug line = 7:39]
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 36, i32 16, i1 false), !dbg !47 ; [debug line = 7:39]
  %10 = bitcast i8* %9 to [9 x i32]*, !dbg !47    ; [#uses=9 type=[9 x i32]*] [debug line = 7:39]
  %11 = getelementptr [9 x i32]* %10, i32 0, i32 0, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -1, i32* %11, !dbg !47                ; [debug line = 7:39]
  %12 = getelementptr [9 x i32]* %10, i32 0, i32 1, !dbg !47 ; [#uses=0 type=i32*] [debug line = 7:39]
  %13 = getelementptr [9 x i32]* %10, i32 0, i32 2, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 1, i32* %13, !dbg !47                 ; [debug line = 7:39]
  %14 = getelementptr [9 x i32]* %10, i32 0, i32 3, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -2, i32* %14, !dbg !47                ; [debug line = 7:39]
  %15 = getelementptr [9 x i32]* %10, i32 0, i32 4, !dbg !47 ; [#uses=0 type=i32*] [debug line = 7:39]
  %16 = getelementptr [9 x i32]* %10, i32 0, i32 5, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 2, i32* %16, !dbg !47                 ; [debug line = 7:39]
  %17 = getelementptr [9 x i32]* %10, i32 0, i32 6, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 -1, i32* %17, !dbg !47                ; [debug line = 7:39]
  %18 = getelementptr [9 x i32]* %10, i32 0, i32 7, !dbg !47 ; [#uses=0 type=i32*] [debug line = 7:39]
  %19 = getelementptr [9 x i32]* %10, i32 0, i32 8, !dbg !47 ; [#uses=1 type=i32*] [debug line = 7:39]
  store i32 1, i32* %19, !dbg !47                 ; [debug line = 7:39]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_y}, metadata !48), !dbg !49 ; [debug line = 8:9] [debug variable = sob_y]
  %20 = bitcast [9 x i32]* %sob_y to i8*, !dbg !50 ; [#uses=2 type=i8*] [debug line = 8:42]
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 36, i32 16, i1 false), !dbg !50 ; [debug line = 8:42]
  %21 = bitcast i8* %20 to [9 x i32]*, !dbg !50   ; [#uses=9 type=[9 x i32]*] [debug line = 8:42]
  %22 = getelementptr [9 x i32]* %21, i32 0, i32 0, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -1, i32* %22, !dbg !50                ; [debug line = 8:42]
  %23 = getelementptr [9 x i32]* %21, i32 0, i32 1, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -2, i32* %23, !dbg !50                ; [debug line = 8:42]
  %24 = getelementptr [9 x i32]* %21, i32 0, i32 2, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 -1, i32* %24, !dbg !50                ; [debug line = 8:42]
  %25 = getelementptr [9 x i32]* %21, i32 0, i32 3, !dbg !50 ; [#uses=0 type=i32*] [debug line = 8:42]
  %26 = getelementptr [9 x i32]* %21, i32 0, i32 4, !dbg !50 ; [#uses=0 type=i32*] [debug line = 8:42]
  %27 = getelementptr [9 x i32]* %21, i32 0, i32 5, !dbg !50 ; [#uses=0 type=i32*] [debug line = 8:42]
  %28 = getelementptr [9 x i32]* %21, i32 0, i32 6, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 1, i32* %28, !dbg !50                 ; [debug line = 8:42]
  %29 = getelementptr [9 x i32]* %21, i32 0, i32 7, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 2, i32* %29, !dbg !50                 ; [debug line = 8:42]
  %30 = getelementptr [9 x i32]* %21, i32 0, i32 8, !dbg !50 ; [#uses=1 type=i32*] [debug line = 8:42]
  store i32 1, i32* %30, !dbg !50                 ; [debug line = 8:42]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !51), !dbg !52 ; [debug line = 10:7] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !53), !dbg !54 ; [debug line = 10:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !55), !dbg !56 ; [debug line = 10:11] [debug variable = m]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !57), !dbg !58 ; [debug line = 10:13] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !59), !dbg !60 ; [debug line = 11:7] [debug variable = block]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !61), !dbg !62 ; [debug line = 13:8] [debug variable = value]
  br label %31, !dbg !63                          ; [debug line = 13:13]

; <label>:31                                      ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !64         ; [debug line = 16:21]
  br label %32, !dbg !64                          ; [debug line = 16:21]

; <label>:32                                      ; preds = %159, %31
  %33 = load i32* %i, align 4, !dbg !64           ; [#uses=1 type=i32] [debug line = 16:21]
  %34 = icmp slt i32 %33, 100, !dbg !64           ; [#uses=1 type=i1] [debug line = 16:21]
  br i1 %34, label %35, label %162, !dbg !64      ; [debug line = 16:21]

; <label>:35                                      ; preds = %32
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 18:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 18:1]
  br label %36, !dbg !66                          ; [debug line = 18:1]

; <label>:36                                      ; preds = %35
  store i32 0, i32* %j, align 4, !dbg !68         ; [debug line = 18:21]
  br label %37, !dbg !68                          ; [debug line = 18:21]

; <label>:37                                      ; preds = %155, %36
  %38 = load i32* %j, align 4, !dbg !68           ; [#uses=1 type=i32] [debug line = 18:21]
  %39 = icmp slt i32 %38, 100, !dbg !68           ; [#uses=1 type=i1] [debug line = 18:21]
  br i1 %39, label %40, label %158, !dbg !68      ; [debug line = 18:21]

; <label>:40                                      ; preds = %37
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 19:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 19:6]
  %41 = load i32* %i, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 20:7]
  %42 = icmp eq i32 %41, 99, !dbg !72             ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %42, label %52, label %43, !dbg !72       ; [debug line = 20:7]

; <label>:43                                      ; preds = %40
  %44 = load i32* %j, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 20:7]
  %45 = icmp eq i32 %44, 99, !dbg !72             ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %45, label %52, label %46, !dbg !72       ; [debug line = 20:7]

; <label>:46                                      ; preds = %43
  %47 = load i32* %i, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 20:7]
  %48 = icmp eq i32 %47, 1, !dbg !72              ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %48, label %52, label %49, !dbg !72       ; [debug line = 20:7]

; <label>:49                                      ; preds = %46
  %50 = load i32* %j, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 20:7]
  %51 = icmp eq i32 %50, 1, !dbg !72              ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %51, label %52, label %67, !dbg !72       ; [debug line = 20:7]

; <label>:52                                      ; preds = %49, %46, %43, %40
  %53 = load i32* %i, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 22:12]
  %54 = mul nsw i32 %53, 100, !dbg !73            ; [#uses=1 type=i32] [debug line = 22:12]
  %55 = load i32* %j, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 22:12]
  %56 = add nsw i32 %54, %55, !dbg !73            ; [#uses=1 type=i32] [debug line = 22:12]
  %57 = sext i32 %56 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 22:12]
  %58 = load i32** %2, align 8, !dbg !73          ; [#uses=1 type=i32*] [debug line = 22:12]
  %59 = getelementptr inbounds i32* %58, i64 %57, !dbg !73 ; [#uses=1 type=i32*] [debug line = 22:12]
  store i32 0, i32* %59, align 4, !dbg !73        ; [debug line = 22:12]
  %60 = load i32* %i, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 23:6]
  %61 = mul nsw i32 %60, 100, !dbg !75            ; [#uses=1 type=i32] [debug line = 23:6]
  %62 = load i32* %j, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 23:6]
  %63 = add nsw i32 %61, %62, !dbg !75            ; [#uses=1 type=i32] [debug line = 23:6]
  %64 = sext i32 %63 to i64, !dbg !75             ; [#uses=1 type=i64] [debug line = 23:6]
  %65 = load i32** %3, align 8, !dbg !75          ; [#uses=1 type=i32*] [debug line = 23:6]
  %66 = getelementptr inbounds i32* %65, i64 %64, !dbg !75 ; [#uses=1 type=i32*] [debug line = 23:6]
  store i32 0, i32* %66, align 4, !dbg !75        ; [debug line = 23:6]
  br label %154, !dbg !76                         ; [debug line = 24:4]

; <label>:67                                      ; preds = %49
  br label %68, !dbg !77                          ; [debug line = 26:4]

; <label>:68                                      ; preds = %67
  store i32 0, i32* %m, align 4, !dbg !79         ; [debug line = 28:21]
  br label %69, !dbg !79                          ; [debug line = 28:21]

; <label>:69                                      ; preds = %102, %68
  %70 = load i32* %m, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 28:21]
  %71 = icmp slt i32 %70, 3, !dbg !79             ; [#uses=1 type=i1] [debug line = 28:21]
  br i1 %71, label %72, label %105, !dbg !79      ; [debug line = 28:21]

; <label>:72                                      ; preds = %69
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 29:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 29:1]
  br label %73, !dbg !81                          ; [debug line = 29:1]

; <label>:73                                      ; preds = %72
  store i32 0, i32* %n, align 4, !dbg !83         ; [debug line = 29:21]
  br label %74, !dbg !83                          ; [debug line = 29:21]

; <label>:74                                      ; preds = %98, %73
  %75 = load i32* %n, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 29:21]
  %76 = icmp slt i32 %75, 3, !dbg !83             ; [#uses=1 type=i1] [debug line = 29:21]
  br i1 %76, label %77, label %101, !dbg !83      ; [debug line = 29:21]

; <label>:77                                      ; preds = %74
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !85 ; [debug line = 30:5]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !85 ; [debug line = 30:5]
  %78 = load i32* %i, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %79 = load i32* %m, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %80 = add nsw i32 %78, %79, !dbg !85            ; [#uses=1 type=i32] [debug line = 30:5]
  %81 = sub nsw i32 %80, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 30:5]
  %82 = mul nsw i32 %81, 100, !dbg !85            ; [#uses=1 type=i32] [debug line = 30:5]
  %83 = load i32* %j, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %84 = add nsw i32 %82, %83, !dbg !85            ; [#uses=1 type=i32] [debug line = 30:5]
  %85 = load i32* %n, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %86 = add nsw i32 %84, %85, !dbg !85            ; [#uses=1 type=i32] [debug line = 30:5]
  %87 = sub nsw i32 %86, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 30:5]
  %88 = sext i32 %87 to i64, !dbg !85             ; [#uses=1 type=i64] [debug line = 30:5]
  %89 = load i32** %1, align 8, !dbg !85          ; [#uses=1 type=i32*] [debug line = 30:5]
  %90 = getelementptr inbounds i32* %89, i64 %88, !dbg !85 ; [#uses=1 type=i32*] [debug line = 30:5]
  %91 = load i32* %90, align 4, !dbg !85          ; [#uses=1 type=i32] [debug line = 30:5]
  %92 = load i32* %m, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %93 = mul nsw i32 %92, 3, !dbg !85              ; [#uses=1 type=i32] [debug line = 30:5]
  %94 = load i32* %n, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 30:5]
  %95 = add nsw i32 %93, %94, !dbg !85            ; [#uses=1 type=i32] [debug line = 30:5]
  %96 = sext i32 %95 to i64, !dbg !85             ; [#uses=1 type=i64] [debug line = 30:5]
  %97 = getelementptr inbounds [9 x i32]* %block, i32 0, i64 %96, !dbg !85 ; [#uses=1 type=i32*] [debug line = 30:5]
  store i32 %91, i32* %97, align 4, !dbg !85      ; [debug line = 30:5]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 30:42]
  br label %98, !dbg !87                          ; [debug line = 30:42]

; <label>:98                                      ; preds = %77
  %99 = load i32* %n, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 29:29]
  %100 = add nsw i32 %99, 1, !dbg !88             ; [#uses=1 type=i32] [debug line = 29:29]
  store i32 %100, i32* %n, align 4, !dbg !88      ; [debug line = 29:29]
  br label %74, !dbg !88                          ; [debug line = 29:29]

; <label>:101                                     ; preds = %74
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !89 ; [debug line = 30:42]
  br label %102, !dbg !89                         ; [debug line = 30:42]

; <label>:102                                     ; preds = %101
  %103 = load i32* %m, align 4, !dbg !90          ; [#uses=1 type=i32] [debug line = 28:29]
  %104 = add nsw i32 %103, 1, !dbg !90            ; [#uses=1 type=i32] [debug line = 28:29]
  store i32 %104, i32* %m, align 4, !dbg !90      ; [debug line = 28:29]
  br label %69, !dbg !90                          ; [debug line = 28:29]

; <label>:105                                     ; preds = %69
  %106 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i32 0, !dbg !91 ; [#uses=1 type=i32*] [debug line = 31:12]
  %107 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !91 ; [#uses=1 type=i32*] [debug line = 31:12]
  %108 = call i32 @convolution(i32* %106, i32* %107), !dbg !91 ; [#uses=1 type=i32] [debug line = 31:12]
  store i32 %108, i32* %value, align 4, !dbg !91  ; [debug line = 31:12]
  %109 = load i32* %value, align 4, !dbg !92      ; [#uses=1 type=i32] [debug line = 32:6]
  %110 = load i32* %i, align 4, !dbg !92          ; [#uses=1 type=i32] [debug line = 32:6]
  %111 = mul nsw i32 %110, 100, !dbg !92          ; [#uses=1 type=i32] [debug line = 32:6]
  %112 = load i32* %j, align 4, !dbg !92          ; [#uses=1 type=i32] [debug line = 32:6]
  %113 = add nsw i32 %111, %112, !dbg !92         ; [#uses=1 type=i32] [debug line = 32:6]
  %114 = sext i32 %113 to i64, !dbg !92           ; [#uses=1 type=i64] [debug line = 32:6]
  %115 = load i32** %2, align 8, !dbg !92         ; [#uses=1 type=i32*] [debug line = 32:6]
  %116 = getelementptr inbounds i32* %115, i64 %114, !dbg !92 ; [#uses=1 type=i32*] [debug line = 32:6]
  store i32 %109, i32* %116, align 4, !dbg !92    ; [debug line = 32:6]
  %117 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i32 0, !dbg !93 ; [#uses=1 type=i32*] [debug line = 34:12]
  %118 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !93 ; [#uses=1 type=i32*] [debug line = 34:12]
  %119 = call i32 @convolution(i32* %117, i32* %118), !dbg !93 ; [#uses=1 type=i32] [debug line = 34:12]
  store i32 %119, i32* %value, align 4, !dbg !93  ; [debug line = 34:12]
  %120 = load i32* %value, align 4, !dbg !94      ; [#uses=1 type=i32] [debug line = 35:6]
  %121 = load i32* %i, align 4, !dbg !94          ; [#uses=1 type=i32] [debug line = 35:6]
  %122 = mul nsw i32 %121, 100, !dbg !94          ; [#uses=1 type=i32] [debug line = 35:6]
  %123 = load i32* %j, align 4, !dbg !94          ; [#uses=1 type=i32] [debug line = 35:6]
  %124 = add nsw i32 %122, %123, !dbg !94         ; [#uses=1 type=i32] [debug line = 35:6]
  %125 = sext i32 %124 to i64, !dbg !94           ; [#uses=1 type=i64] [debug line = 35:6]
  %126 = load i32** %3, align 8, !dbg !94         ; [#uses=1 type=i32*] [debug line = 35:6]
  %127 = getelementptr inbounds i32* %126, i64 %125, !dbg !94 ; [#uses=1 type=i32*] [debug line = 35:6]
  store i32 %120, i32* %127, align 4, !dbg !94    ; [debug line = 35:6]
  %128 = load i32* %i, align 4, !dbg !95          ; [#uses=1 type=i32] [debug line = 36:26]
  %129 = mul nsw i32 %128, 100, !dbg !95          ; [#uses=1 type=i32] [debug line = 36:26]
  %130 = load i32* %j, align 4, !dbg !95          ; [#uses=1 type=i32] [debug line = 36:26]
  %131 = add nsw i32 %129, %130, !dbg !95         ; [#uses=1 type=i32] [debug line = 36:26]
  %132 = sext i32 %131 to i64, !dbg !95           ; [#uses=1 type=i64] [debug line = 36:26]
  %133 = load i32** %3, align 8, !dbg !95         ; [#uses=1 type=i32*] [debug line = 36:26]
  %134 = getelementptr inbounds i32* %133, i64 %132, !dbg !95 ; [#uses=1 type=i32*] [debug line = 36:26]
  %135 = load i32* %134, align 4, !dbg !95        ; [#uses=1 type=i32] [debug line = 36:26]
  %136 = call i32 bitcast (i32 (...)* @abs to i32 (i32)*)(i32 %135), !dbg !95 ; [#uses=1 type=i32] [debug line = 36:26]
  %137 = load i32* %i, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %138 = mul nsw i32 %137, 100, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %139 = load i32* %j, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %140 = add nsw i32 %138, %139, !dbg !96         ; [#uses=1 type=i32] [debug line = 36:50]
  %141 = sext i32 %140 to i64, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:50]
  %142 = load i32** %2, align 8, !dbg !96         ; [#uses=1 type=i32*] [debug line = 36:50]
  %143 = getelementptr inbounds i32* %142, i64 %141, !dbg !96 ; [#uses=1 type=i32*] [debug line = 36:50]
  %144 = load i32* %143, align 4, !dbg !96        ; [#uses=1 type=i32] [debug line = 36:50]
  %145 = call i32 bitcast (i32 (...)* @abs to i32 (i32)*)(i32 %144), !dbg !96 ; [#uses=1 type=i32] [debug line = 36:50]
  %146 = add nsw i32 %136, %145, !dbg !96         ; [#uses=1 type=i32] [debug line = 36:50]
  %147 = load i32* %i, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %148 = mul nsw i32 %147, 100, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %149 = load i32* %j, align 4, !dbg !96          ; [#uses=1 type=i32] [debug line = 36:50]
  %150 = add nsw i32 %148, %149, !dbg !96         ; [#uses=1 type=i32] [debug line = 36:50]
  %151 = sext i32 %150 to i64, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:50]
  %152 = load i32** %4, align 8, !dbg !96         ; [#uses=1 type=i32*] [debug line = 36:50]
  %153 = getelementptr inbounds i32* %152, i64 %151, !dbg !96 ; [#uses=1 type=i32*] [debug line = 36:50]
  store i32 %146, i32* %153, align 4, !dbg !96    ; [debug line = 36:50]
  br label %154

; <label>:154                                     ; preds = %105, %52
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !97 ; [debug line = 38:5]
  br label %155, !dbg !97                         ; [debug line = 38:5]

; <label>:155                                     ; preds = %154
  %156 = load i32* %j, align 4, !dbg !98          ; [#uses=1 type=i32] [debug line = 18:31]
  %157 = add nsw i32 %156, 1, !dbg !98            ; [#uses=1 type=i32] [debug line = 18:31]
  store i32 %157, i32* %j, align 4, !dbg !98      ; [debug line = 18:31]
  br label %37, !dbg !98                          ; [debug line = 18:31]

; <label>:158                                     ; preds = %37
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 38:5]
  br label %159, !dbg !99                         ; [debug line = 38:5]

; <label>:159                                     ; preds = %158
  %160 = load i32* %i, align 4, !dbg !100         ; [#uses=1 type=i32] [debug line = 16:31]
  %161 = add nsw i32 %160, 1, !dbg !100           ; [#uses=1 type=i32] [debug line = 16:31]
  store i32 %161, i32* %i, align 4, !dbg !100     ; [debug line = 16:31]
  br label %32, !dbg !100                         ; [debug line = 16:31]

; <label>:162                                     ; preds = %32
  ret void, !dbg !101                             ; [debug line = 40:1]
}

; [#uses=17]
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !102), !dbg !103 ; [debug line = 43:21] [debug variable = operatr]
  store i32* %block, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !104), !dbg !105 ; [debug line = 43:36] [debug variable = block]
  %3 = load i32** %1, align 8, !dbg !106          ; [#uses=1 type=i32*] [debug line = 44:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %3, i32 9) nounwind, !dbg !106 ; [debug line = 44:2]
  %4 = load i32** %2, align 8, !dbg !108          ; [#uses=1 type=i32*] [debug line = 44:36]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 9) nounwind, !dbg !108 ; [debug line = 44:36]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !109), !dbg !110 ; [debug line = 45:9] [debug variable = value]
  store i32 0, i32* %value, align 4, !dbg !111    ; [debug line = 45:16]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !112), !dbg !113 ; [debug line = 46:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !114), !dbg !115 ; [debug line = 46:8] [debug variable = j]
  br label %5, !dbg !116                          ; [debug line = 46:9]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !117        ; [debug line = 47:24]
  br label %6, !dbg !117                          ; [debug line = 47:24]

; <label>:6                                       ; preds = %38, %5
  %7 = load i32* %i, align 4, !dbg !117           ; [#uses=1 type=i32] [debug line = 47:24]
  %8 = icmp slt i32 %7, 3, !dbg !117              ; [#uses=1 type=i1] [debug line = 47:24]
  br i1 %8, label %9, label %41, !dbg !117        ; [debug line = 47:24]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !119 ; [debug line = 48:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !119 ; [debug line = 48:1]
  br label %10, !dbg !119                         ; [debug line = 48:1]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %j, align 4, !dbg !121        ; [debug line = 48:24]
  br label %11, !dbg !121                         ; [debug line = 48:24]

; <label>:11                                      ; preds = %34, %10
  %12 = load i32* %j, align 4, !dbg !121          ; [#uses=1 type=i32] [debug line = 48:24]
  %13 = icmp slt i32 %12, 3, !dbg !121            ; [#uses=1 type=i1] [debug line = 48:24]
  br i1 %13, label %14, label %37, !dbg !121      ; [debug line = 48:24]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 49:11]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 49:11]
  %15 = load i32* %value, align 4, !dbg !123      ; [#uses=1 type=i32] [debug line = 49:11]
  %16 = load i32* %i, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 49:11]
  %17 = mul nsw i32 %16, 3, !dbg !123             ; [#uses=1 type=i32] [debug line = 49:11]
  %18 = load i32* %j, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 49:11]
  %19 = add nsw i32 %17, %18, !dbg !123           ; [#uses=1 type=i32] [debug line = 49:11]
  %20 = sext i32 %19 to i64, !dbg !123            ; [#uses=1 type=i64] [debug line = 49:11]
  %21 = load i32** %1, align 8, !dbg !123         ; [#uses=1 type=i32*] [debug line = 49:11]
  %22 = getelementptr inbounds i32* %21, i64 %20, !dbg !123 ; [#uses=1 type=i32*] [debug line = 49:11]
  %23 = load i32* %22, align 4, !dbg !123         ; [#uses=1 type=i32] [debug line = 49:11]
  %24 = load i32* %i, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 49:11]
  %25 = mul nsw i32 %24, 3, !dbg !123             ; [#uses=1 type=i32] [debug line = 49:11]
  %26 = load i32* %j, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 49:11]
  %27 = add nsw i32 %25, %26, !dbg !123           ; [#uses=1 type=i32] [debug line = 49:11]
  %28 = sext i32 %27 to i64, !dbg !123            ; [#uses=1 type=i64] [debug line = 49:11]
  %29 = load i32** %2, align 8, !dbg !123         ; [#uses=1 type=i32*] [debug line = 49:11]
  %30 = getelementptr inbounds i32* %29, i64 %28, !dbg !123 ; [#uses=1 type=i32*] [debug line = 49:11]
  %31 = load i32* %30, align 4, !dbg !123         ; [#uses=1 type=i32] [debug line = 49:11]
  %32 = mul nsw i32 %23, %31, !dbg !123           ; [#uses=1 type=i32] [debug line = 49:11]
  %33 = add nsw i32 %15, %32, !dbg !123           ; [#uses=1 type=i32] [debug line = 49:11]
  store i32 %33, i32* %value, align 4, !dbg !123  ; [debug line = 49:11]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 49:50]
  br label %34, !dbg !125                         ; [debug line = 49:50]

; <label>:34                                      ; preds = %14
  %35 = load i32* %j, align 4, !dbg !126          ; [#uses=1 type=i32] [debug line = 48:32]
  %36 = add nsw i32 %35, 1, !dbg !126             ; [#uses=1 type=i32] [debug line = 48:32]
  store i32 %36, i32* %j, align 4, !dbg !126      ; [debug line = 48:32]
  br label %11, !dbg !126                         ; [debug line = 48:32]

; <label>:37                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 49:50]
  br label %38, !dbg !127                         ; [debug line = 49:50]

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4, !dbg !128          ; [#uses=1 type=i32] [debug line = 47:32]
  %40 = add nsw i32 %39, 1, !dbg !128             ; [#uses=1 type=i32] [debug line = 47:32]
  store i32 %40, i32* %i, align 4, !dbg !128      ; [debug line = 47:32]
  br label %6, !dbg !128                          ; [debug line = 47:32]

; <label>:41                                      ; preds = %6
  %42 = load i32* %value, align 4, !dbg !129      ; [#uses=1 type=i32] [debug line = 50:5]
  ret i32 %42, !dbg !129                          ; [debug line = 50:5]
}

; [#uses=1]
declare i32 @abs(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/Sobel_HLS/edge_prj/solution1/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS\5CSobel_HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"edge_det", metadata !"edge_det", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*, i32*)* @edge_det, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"edge_prj/main.c", metadata !"F:\5C0yan\5Cfpga\5CHLS\5CSobel_HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @convolution, null, null, metadata !11, i32 44} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !9, metadata !9}
!16 = metadata !{void (i32*, i32*, i32*, i32*)* @edge_det, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"video", metadata !"sob_x1", metadata !"sob_y1", metadata !"sob_xy1"}
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
!35 = metadata !{i32 786689, metadata !5, metadata !"sob_xy1", metadata !6, i32 67108868, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 4, i32 78, metadata !5, null}
!37 = metadata !{i32 5, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 5, i32 41, metadata !38, null}
!40 = metadata !{i32 5, i32 80, metadata !38, null}
!41 = metadata !{i32 5, i32 118, metadata !38, null}
!42 = metadata !{i32 786688, metadata !38, metadata !"sob_x", metadata !6, i32 7, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!46 = metadata !{i32 7, i32 6, metadata !38, null}
!47 = metadata !{i32 7, i32 39, metadata !38, null}
!48 = metadata !{i32 786688, metadata !38, metadata !"sob_y", metadata !6, i32 8, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 8, i32 9, metadata !38, null}
!50 = metadata !{i32 8, i32 42, metadata !38, null}
!51 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 10, i32 7, metadata !38, null}
!53 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 10, i32 9, metadata !38, null}
!55 = metadata !{i32 786688, metadata !38, metadata !"m", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 10, i32 11, metadata !38, null}
!57 = metadata !{i32 786688, metadata !38, metadata !"n", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 10, i32 13, metadata !38, null}
!59 = metadata !{i32 786688, metadata !38, metadata !"block", metadata !6, i32 11, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 11, i32 7, metadata !38, null}
!61 = metadata !{i32 786688, metadata !38, metadata !"value", metadata !6, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 13, i32 8, metadata !38, null}
!63 = metadata !{i32 13, i32 13, metadata !38, null}
!64 = metadata !{i32 16, i32 21, metadata !65, null}
!65 = metadata !{i32 786443, metadata !38, i32 16, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 18, i32 1, metadata !67, null}
!67 = metadata !{i32 786443, metadata !65, i32 18, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 18, i32 21, metadata !69, null}
!69 = metadata !{i32 786443, metadata !67, i32 18, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 19, i32 6, metadata !71, null}
!71 = metadata !{i32 786443, metadata !69, i32 19, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 20, i32 7, metadata !71, null}
!73 = metadata !{i32 22, i32 12, metadata !74, null}
!74 = metadata !{i32 786443, metadata !71, i32 21, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 23, i32 6, metadata !74, null}
!76 = metadata !{i32 24, i32 4, metadata !74, null}
!77 = metadata !{i32 26, i32 4, metadata !78, null}
!78 = metadata !{i32 786443, metadata !71, i32 26, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 28, i32 21, metadata !80, null}
!80 = metadata !{i32 786443, metadata !78, i32 28, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 29, i32 1, metadata !82, null}
!82 = metadata !{i32 786443, metadata !80, i32 29, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 29, i32 21, metadata !84, null}
!84 = metadata !{i32 786443, metadata !82, i32 29, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 30, i32 5, metadata !86, null}
!86 = metadata !{i32 786443, metadata !84, i32 30, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 30, i32 42, metadata !86, null}
!88 = metadata !{i32 29, i32 29, metadata !84, null}
!89 = metadata !{i32 30, i32 42, metadata !84, null}
!90 = metadata !{i32 28, i32 29, metadata !80, null}
!91 = metadata !{i32 31, i32 12, metadata !78, null}
!92 = metadata !{i32 32, i32 6, metadata !78, null}
!93 = metadata !{i32 34, i32 12, metadata !78, null}
!94 = metadata !{i32 35, i32 6, metadata !78, null}
!95 = metadata !{i32 36, i32 26, metadata !78, null}
!96 = metadata !{i32 36, i32 50, metadata !78, null}
!97 = metadata !{i32 38, i32 5, metadata !71, null}
!98 = metadata !{i32 18, i32 31, metadata !69, null}
!99 = metadata !{i32 38, i32 5, metadata !69, null}
!100 = metadata !{i32 16, i32 31, metadata !65, null}
!101 = metadata !{i32 40, i32 1, metadata !38, null}
!102 = metadata !{i32 786689, metadata !13, metadata !"operatr", metadata !6, i32 16777259, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 43, i32 21, metadata !13, null}
!104 = metadata !{i32 786689, metadata !13, metadata !"block", metadata !6, i32 33554475, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 43, i32 36, metadata !13, null}
!106 = metadata !{i32 44, i32 2, metadata !107, null}
!107 = metadata !{i32 786443, metadata !13, i32 44, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 44, i32 36, metadata !107, null}
!109 = metadata !{i32 786688, metadata !107, metadata !"value", metadata !6, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 45, i32 9, metadata !107, null}
!111 = metadata !{i32 45, i32 16, metadata !107, null}
!112 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !6, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 46, i32 6, metadata !107, null}
!114 = metadata !{i32 786688, metadata !107, metadata !"j", metadata !6, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 46, i32 8, metadata !107, null}
!116 = metadata !{i32 46, i32 9, metadata !107, null}
!117 = metadata !{i32 47, i32 24, metadata !118, null}
!118 = metadata !{i32 786443, metadata !107, i32 47, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 48, i32 1, metadata !120, null}
!120 = metadata !{i32 786443, metadata !118, i32 48, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 48, i32 24, metadata !122, null}
!122 = metadata !{i32 786443, metadata !120, i32 48, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 49, i32 11, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 49, i32 11, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 49, i32 50, metadata !124, null}
!126 = metadata !{i32 48, i32 32, metadata !122, null}
!127 = metadata !{i32 49, i32 50, metadata !122, null}
!128 = metadata !{i32 47, i32 32, metadata !118, null}
!129 = metadata !{i32 50, i32 5, metadata !107, null}
