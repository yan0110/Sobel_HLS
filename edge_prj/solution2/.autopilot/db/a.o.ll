; ModuleID = 'F:/0yan/fpga/HLS/edge_prj/solution2/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [16 x i8] c"edge_det_label1\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [16 x i8] c"edge_det_label2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"edge_det_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str4 = private unnamed_addr constant [16 x i8] c"edge_det_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str5 = private unnamed_addr constant [19 x i8] c"convolution_label5\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str6 = private unnamed_addr constant [19 x i8] c"convolution_label6\00", align 1 ; [#uses=1 type=[19 x i8]*]

; [#uses=0]
define void @edge_det(i32* %video, i32* %sob_x1, i32* %sob_y1) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %3 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %sob_x = alloca [9 x i32], align 16             ; [#uses=10 type=[9 x i32]*]
  %sob_y = alloca [9 x i32], align 16             ; [#uses=10 type=[9 x i32]*]
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
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_x}, metadata !39), !dbg !43 ; [debug line = 7:8] [debug variable = sob_x]
  %7 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 0, !dbg !44 ; [#uses=1 type=i32*] [debug line = 9:8]
  store i32 -1, i32* %7, align 4, !dbg !44        ; [debug line = 9:8]
  %8 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 1, !dbg !45 ; [#uses=1 type=i32*] [debug line = 10:5]
  store i32 0, i32* %8, align 4, !dbg !45         ; [debug line = 10:5]
  %9 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 2, !dbg !46 ; [#uses=1 type=i32*] [debug line = 11:5]
  store i32 1, i32* %9, align 4, !dbg !46         ; [debug line = 11:5]
  %10 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 3, !dbg !47 ; [#uses=1 type=i32*] [debug line = 12:5]
  store i32 -2, i32* %10, align 4, !dbg !47       ; [debug line = 12:5]
  %11 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 4, !dbg !48 ; [#uses=1 type=i32*] [debug line = 13:5]
  store i32 0, i32* %11, align 4, !dbg !48        ; [debug line = 13:5]
  %12 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 5, !dbg !49 ; [#uses=1 type=i32*] [debug line = 14:5]
  store i32 2, i32* %12, align 4, !dbg !49        ; [debug line = 14:5]
  %13 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 6, !dbg !50 ; [#uses=1 type=i32*] [debug line = 15:5]
  store i32 -1, i32* %13, align 4, !dbg !50       ; [debug line = 15:5]
  %14 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 7, !dbg !51 ; [#uses=1 type=i32*] [debug line = 16:5]
  store i32 0, i32* %14, align 4, !dbg !51        ; [debug line = 16:5]
  %15 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i64 8, !dbg !52 ; [#uses=1 type=i32*] [debug line = 17:5]
  store i32 1, i32* %15, align 4, !dbg !52        ; [debug line = 17:5]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %sob_y}, metadata !53), !dbg !54 ; [debug line = 20:7] [debug variable = sob_y]
  %16 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 0, !dbg !55 ; [#uses=1 type=i32*] [debug line = 22:8]
  store i32 -1, i32* %16, align 4, !dbg !55       ; [debug line = 22:8]
  %17 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 1, !dbg !56 ; [#uses=1 type=i32*] [debug line = 23:5]
  store i32 -2, i32* %17, align 4, !dbg !56       ; [debug line = 23:5]
  %18 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 2, !dbg !57 ; [#uses=1 type=i32*] [debug line = 24:5]
  store i32 1, i32* %18, align 4, !dbg !57        ; [debug line = 24:5]
  %19 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 3, !dbg !58 ; [#uses=1 type=i32*] [debug line = 25:5]
  store i32 0, i32* %19, align 4, !dbg !58        ; [debug line = 25:5]
  %20 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 4, !dbg !59 ; [#uses=1 type=i32*] [debug line = 26:5]
  store i32 0, i32* %20, align 4, !dbg !59        ; [debug line = 26:5]
  %21 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 5, !dbg !60 ; [#uses=1 type=i32*] [debug line = 27:5]
  store i32 0, i32* %21, align 4, !dbg !60        ; [debug line = 27:5]
  %22 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 6, !dbg !61 ; [#uses=1 type=i32*] [debug line = 28:5]
  store i32 1, i32* %22, align 4, !dbg !61        ; [debug line = 28:5]
  %23 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 7, !dbg !62 ; [#uses=1 type=i32*] [debug line = 29:5]
  store i32 2, i32* %23, align 4, !dbg !62        ; [debug line = 29:5]
  %24 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i64 8, !dbg !63 ; [#uses=1 type=i32*] [debug line = 30:5]
  store i32 1, i32* %24, align 4, !dbg !63        ; [debug line = 30:5]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !64), !dbg !65 ; [debug line = 31:7] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !66), !dbg !67 ; [debug line = 31:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !68), !dbg !69 ; [debug line = 31:11] [debug variable = m]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !70), !dbg !71 ; [debug line = 31:13] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %block}, metadata !72), !dbg !73 ; [debug line = 32:7] [debug variable = block]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !74), !dbg !75 ; [debug line = 34:8] [debug variable = value]
  br label %25, !dbg !76                          ; [debug line = 34:13]

; <label>:25                                      ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !77         ; [debug line = 37:21]
  br label %26, !dbg !77                          ; [debug line = 37:21]

; <label>:26                                      ; preds = %119, %25
  %27 = load i32* %i, align 4, !dbg !77           ; [#uses=1 type=i32] [debug line = 37:21]
  %28 = icmp slt i32 %27, 100, !dbg !77           ; [#uses=1 type=i1] [debug line = 37:21]
  br i1 %28, label %29, label %122, !dbg !77      ; [debug line = 37:21]

; <label>:29                                      ; preds = %26
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 39:2]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 39:2]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 40:1]
  br label %30, !dbg !81                          ; [debug line = 40:1]

; <label>:30                                      ; preds = %29
  store i32 0, i32* %j, align 4, !dbg !82         ; [debug line = 39:21]
  br label %31, !dbg !82                          ; [debug line = 39:21]

; <label>:31                                      ; preds = %115, %30
  %32 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 39:21]
  %33 = icmp slt i32 %32, 100, !dbg !82           ; [#uses=1 type=i1] [debug line = 39:21]
  br i1 %33, label %34, label %118, !dbg !82      ; [debug line = 39:21]

; <label>:34                                      ; preds = %31
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 40:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 40:6]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 41:1]
  %35 = load i32* %i, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 41:7]
  %36 = icmp sgt i32 %35, 97, !dbg !87            ; [#uses=1 type=i1] [debug line = 41:7]
  br i1 %36, label %40, label %37, !dbg !87       ; [debug line = 41:7]

; <label>:37                                      ; preds = %34
  %38 = load i32* %j, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 41:7]
  %39 = icmp sgt i32 %38, 97, !dbg !87            ; [#uses=1 type=i1] [debug line = 41:7]
  br i1 %39, label %40, label %55, !dbg !87       ; [debug line = 41:7]

; <label>:40                                      ; preds = %37, %34
  %41 = load i32* %i, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 43:12]
  %42 = mul nsw i32 %41, 100, !dbg !88            ; [#uses=1 type=i32] [debug line = 43:12]
  %43 = load i32* %j, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 43:12]
  %44 = add nsw i32 %42, %43, !dbg !88            ; [#uses=1 type=i32] [debug line = 43:12]
  %45 = sext i32 %44 to i64, !dbg !88             ; [#uses=1 type=i64] [debug line = 43:12]
  %46 = load i32** %2, align 8, !dbg !88          ; [#uses=1 type=i32*] [debug line = 43:12]
  %47 = getelementptr inbounds i32* %46, i64 %45, !dbg !88 ; [#uses=1 type=i32*] [debug line = 43:12]
  store i32 0, i32* %47, align 4, !dbg !88        ; [debug line = 43:12]
  %48 = load i32* %i, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 44:6]
  %49 = mul nsw i32 %48, 100, !dbg !90            ; [#uses=1 type=i32] [debug line = 44:6]
  %50 = load i32* %j, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 44:6]
  %51 = add nsw i32 %49, %50, !dbg !90            ; [#uses=1 type=i32] [debug line = 44:6]
  %52 = sext i32 %51 to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 44:6]
  %53 = load i32** %3, align 8, !dbg !90          ; [#uses=1 type=i32*] [debug line = 44:6]
  %54 = getelementptr inbounds i32* %53, i64 %52, !dbg !90 ; [#uses=1 type=i32*] [debug line = 44:6]
  store i32 0, i32* %54, align 4, !dbg !90        ; [debug line = 44:6]
  br label %114, !dbg !91                         ; [debug line = 45:4]

; <label>:55                                      ; preds = %37
  br label %56, !dbg !92                          ; [debug line = 47:4]

; <label>:56                                      ; preds = %55
  store i32 0, i32* %m, align 4, !dbg !94         ; [debug line = 49:21]
  br label %57, !dbg !94                          ; [debug line = 49:21]

; <label>:57                                      ; preds = %88, %56
  %58 = load i32* %m, align 4, !dbg !94           ; [#uses=1 type=i32] [debug line = 49:21]
  %59 = icmp slt i32 %58, 3, !dbg !94             ; [#uses=1 type=i1] [debug line = 49:21]
  br i1 %59, label %60, label %91, !dbg !94       ; [debug line = 49:21]

; <label>:60                                      ; preds = %57
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !96 ; [debug line = 52:2]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !96 ; [debug line = 52:2]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !98 ; [debug line = 53:1]
  br label %61, !dbg !98                          ; [debug line = 53:1]

; <label>:61                                      ; preds = %60
  store i32 0, i32* %n, align 4, !dbg !99         ; [debug line = 52:21]
  br label %62, !dbg !99                          ; [debug line = 52:21]

; <label>:62                                      ; preds = %84, %61
  %63 = load i32* %n, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 52:21]
  %64 = icmp slt i32 %63, 3, !dbg !99             ; [#uses=1 type=i1] [debug line = 52:21]
  br i1 %64, label %65, label %87, !dbg !99       ; [debug line = 52:21]

; <label>:65                                      ; preds = %62
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 54:2]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 54:2]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 55:1]
  %66 = load i32* %i, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %67 = load i32* %m, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %68 = add nsw i32 %66, %67, !dbg !104           ; [#uses=1 type=i32] [debug line = 54:1]
  %69 = mul nsw i32 %68, 100, !dbg !104           ; [#uses=1 type=i32] [debug line = 54:1]
  %70 = load i32* %j, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %71 = add nsw i32 %69, %70, !dbg !104           ; [#uses=1 type=i32] [debug line = 54:1]
  %72 = load i32* %n, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %73 = add nsw i32 %71, %72, !dbg !104           ; [#uses=1 type=i32] [debug line = 54:1]
  %74 = sext i32 %73 to i64, !dbg !104            ; [#uses=1 type=i64] [debug line = 54:1]
  %75 = load i32** %1, align 8, !dbg !104         ; [#uses=1 type=i32*] [debug line = 54:1]
  %76 = getelementptr inbounds i32* %75, i64 %74, !dbg !104 ; [#uses=1 type=i32*] [debug line = 54:1]
  %77 = load i32* %76, align 4, !dbg !104         ; [#uses=1 type=i32] [debug line = 54:1]
  %78 = load i32* %m, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %79 = mul nsw i32 %78, 3, !dbg !104             ; [#uses=1 type=i32] [debug line = 54:1]
  %80 = load i32* %n, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 54:1]
  %81 = add nsw i32 %79, %80, !dbg !104           ; [#uses=1 type=i32] [debug line = 54:1]
  %82 = sext i32 %81 to i64, !dbg !104            ; [#uses=1 type=i64] [debug line = 54:1]
  %83 = getelementptr inbounds [9 x i32]* %block, i32 0, i64 %82, !dbg !104 ; [#uses=1 type=i32*] [debug line = 54:1]
  store i32 %77, i32* %83, align 4, !dbg !104     ; [debug line = 54:1]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !105 ; [debug line = 54:34]
  br label %84, !dbg !105                         ; [debug line = 54:34]

; <label>:84                                      ; preds = %65
  %85 = load i32* %n, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 52:29]
  %86 = add nsw i32 %85, 1, !dbg !106             ; [#uses=1 type=i32] [debug line = 52:29]
  store i32 %86, i32* %n, align 4, !dbg !106      ; [debug line = 52:29]
  br label %62, !dbg !106                         ; [debug line = 52:29]

; <label>:87                                      ; preds = %62
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !107 ; [debug line = 54:34]
  br label %88, !dbg !107                         ; [debug line = 54:34]

; <label>:88                                      ; preds = %87
  %89 = load i32* %m, align 4, !dbg !108          ; [#uses=1 type=i32] [debug line = 49:29]
  %90 = add nsw i32 %89, 1, !dbg !108             ; [#uses=1 type=i32] [debug line = 49:29]
  store i32 %90, i32* %m, align 4, !dbg !108      ; [debug line = 49:29]
  br label %57, !dbg !108                         ; [debug line = 49:29]

; <label>:91                                      ; preds = %57
  %92 = getelementptr inbounds [9 x i32]* %sob_x, i32 0, i32 0, !dbg !109 ; [#uses=1 type=i32*] [debug line = 55:12]
  %93 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !109 ; [#uses=1 type=i32*] [debug line = 55:12]
  %94 = call i32 @convolution(i32* %92, i32* %93), !dbg !109 ; [#uses=1 type=i32] [debug line = 55:12]
  store i32 %94, i32* %value, align 4, !dbg !109  ; [debug line = 55:12]
  %95 = load i32* %value, align 4, !dbg !110      ; [#uses=1 type=i32] [debug line = 56:6]
  %96 = load i32* %i, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 56:6]
  %97 = mul nsw i32 %96, 100, !dbg !110           ; [#uses=1 type=i32] [debug line = 56:6]
  %98 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 56:6]
  %99 = add nsw i32 %97, %98, !dbg !110           ; [#uses=1 type=i32] [debug line = 56:6]
  %100 = sext i32 %99 to i64, !dbg !110           ; [#uses=1 type=i64] [debug line = 56:6]
  %101 = load i32** %2, align 8, !dbg !110        ; [#uses=1 type=i32*] [debug line = 56:6]
  %102 = getelementptr inbounds i32* %101, i64 %100, !dbg !110 ; [#uses=1 type=i32*] [debug line = 56:6]
  store i32 %95, i32* %102, align 4, !dbg !110    ; [debug line = 56:6]
  %103 = getelementptr inbounds [9 x i32]* %sob_y, i32 0, i32 0, !dbg !111 ; [#uses=1 type=i32*] [debug line = 58:12]
  %104 = getelementptr inbounds [9 x i32]* %block, i32 0, i32 0, !dbg !111 ; [#uses=1 type=i32*] [debug line = 58:12]
  %105 = call i32 @convolution(i32* %103, i32* %104), !dbg !111 ; [#uses=1 type=i32] [debug line = 58:12]
  store i32 %105, i32* %value, align 4, !dbg !111 ; [debug line = 58:12]
  %106 = load i32* %value, align 4, !dbg !112     ; [#uses=1 type=i32] [debug line = 59:6]
  %107 = load i32* %i, align 4, !dbg !112         ; [#uses=1 type=i32] [debug line = 59:6]
  %108 = mul nsw i32 %107, 100, !dbg !112         ; [#uses=1 type=i32] [debug line = 59:6]
  %109 = load i32* %j, align 4, !dbg !112         ; [#uses=1 type=i32] [debug line = 59:6]
  %110 = add nsw i32 %108, %109, !dbg !112        ; [#uses=1 type=i32] [debug line = 59:6]
  %111 = sext i32 %110 to i64, !dbg !112          ; [#uses=1 type=i64] [debug line = 59:6]
  %112 = load i32** %3, align 8, !dbg !112        ; [#uses=1 type=i32*] [debug line = 59:6]
  %113 = getelementptr inbounds i32* %112, i64 %111, !dbg !112 ; [#uses=1 type=i32*] [debug line = 59:6]
  store i32 %106, i32* %113, align 4, !dbg !112   ; [debug line = 59:6]
  br label %114

; <label>:114                                     ; preds = %91, %40
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 61:5]
  br label %115, !dbg !113                        ; [debug line = 61:5]

; <label>:115                                     ; preds = %114
  %116 = load i32* %j, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 39:31]
  %117 = add nsw i32 %116, 1, !dbg !114           ; [#uses=1 type=i32] [debug line = 39:31]
  store i32 %117, i32* %j, align 4, !dbg !114     ; [debug line = 39:31]
  br label %31, !dbg !114                         ; [debug line = 39:31]

; <label>:118                                     ; preds = %31
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !115 ; [debug line = 61:5]
  br label %119, !dbg !115                        ; [debug line = 61:5]

; <label>:119                                     ; preds = %118
  %120 = load i32* %i, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 37:31]
  %121 = add nsw i32 %120, 1, !dbg !116           ; [#uses=1 type=i32] [debug line = 37:31]
  store i32 %121, i32* %i, align 4, !dbg !116     ; [debug line = 37:31]
  br label %26, !dbg !116                         ; [debug line = 37:31]

; <label>:122                                     ; preds = %26
  ret void, !dbg !117                             ; [debug line = 63:1]
}

; [#uses=16]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=2]
define internal i32 @convolution(i32* %operatr, i32* %block) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %value = alloca i32, align 4                    ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=4 type=i32*]
  store i32* %operatr, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !118), !dbg !119 ; [debug line = 66:21] [debug variable = operatr]
  store i32* %block, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !120), !dbg !121 ; [debug line = 66:36] [debug variable = block]
  %3 = load i32** %1, align 8, !dbg !122          ; [#uses=1 type=i32*] [debug line = 67:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %3, i32 9) nounwind, !dbg !122 ; [debug line = 67:2]
  %4 = load i32** %2, align 8, !dbg !124          ; [#uses=1 type=i32*] [debug line = 67:36]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i32*, i32)*)(i32* %4, i32 9) nounwind, !dbg !124 ; [debug line = 67:36]
  call void @llvm.dbg.declare(metadata !{i32* %value}, metadata !125), !dbg !126 ; [debug line = 68:9] [debug variable = value]
  store i32 0, i32* %value, align 4, !dbg !127    ; [debug line = 68:16]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !128), !dbg !129 ; [debug line = 69:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !130), !dbg !131 ; [debug line = 69:8] [debug variable = j]
  br label %5, !dbg !132                          ; [debug line = 69:9]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !133        ; [debug line = 73:24]
  br label %6, !dbg !133                          ; [debug line = 73:24]

; <label>:6                                       ; preds = %36, %5
  %7 = load i32* %i, align 4, !dbg !133           ; [#uses=1 type=i32] [debug line = 73:24]
  %8 = icmp slt i32 %7, 3, !dbg !133              ; [#uses=1 type=i1] [debug line = 73:24]
  br i1 %8, label %9, label %39, !dbg !133        ; [debug line = 73:24]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 76:2]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 76:2]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 77:1]
  br label %10, !dbg !137                         ; [debug line = 77:1]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %j, align 4, !dbg !138        ; [debug line = 76:24]
  br label %11, !dbg !138                         ; [debug line = 76:24]

; <label>:11                                      ; preds = %32, %10
  %12 = load i32* %j, align 4, !dbg !138          ; [#uses=1 type=i32] [debug line = 76:24]
  %13 = icmp slt i32 %12, 3, !dbg !138            ; [#uses=1 type=i1] [debug line = 76:24]
  br i1 %13, label %14, label %35, !dbg !138      ; [debug line = 76:24]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 77:2]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 77:2]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 78:1]
  %15 = load i32* %value, align 4, !dbg !143      ; [#uses=1 type=i32] [debug line = 77:1]
  %16 = load i32* %i, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 77:1]
  %17 = mul nsw i32 %16, 3, !dbg !143             ; [#uses=1 type=i32] [debug line = 77:1]
  %18 = add nsw i32 %17, 1, !dbg !143             ; [#uses=1 type=i32] [debug line = 77:1]
  %19 = sext i32 %18 to i64, !dbg !143            ; [#uses=1 type=i64] [debug line = 77:1]
  %20 = load i32** %1, align 8, !dbg !143         ; [#uses=1 type=i32*] [debug line = 77:1]
  %21 = getelementptr inbounds i32* %20, i64 %19, !dbg !143 ; [#uses=1 type=i32*] [debug line = 77:1]
  %22 = load i32* %21, align 4, !dbg !143         ; [#uses=1 type=i32] [debug line = 77:1]
  %23 = load i32* %i, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 77:1]
  %24 = mul nsw i32 %23, 3, !dbg !143             ; [#uses=1 type=i32] [debug line = 77:1]
  %25 = add nsw i32 %24, 1, !dbg !143             ; [#uses=1 type=i32] [debug line = 77:1]
  %26 = sext i32 %25 to i64, !dbg !143            ; [#uses=1 type=i64] [debug line = 77:1]
  %27 = load i32** %2, align 8, !dbg !143         ; [#uses=1 type=i32*] [debug line = 77:1]
  %28 = getelementptr inbounds i32* %27, i64 %26, !dbg !143 ; [#uses=1 type=i32*] [debug line = 77:1]
  %29 = load i32* %28, align 4, !dbg !143         ; [#uses=1 type=i32] [debug line = 77:1]
  %30 = mul nsw i32 %22, %29, !dbg !143           ; [#uses=1 type=i32] [debug line = 77:1]
  %31 = add nsw i32 %15, %30, !dbg !143           ; [#uses=1 type=i32] [debug line = 77:1]
  store i32 %31, i32* %value, align 4, !dbg !143  ; [debug line = 77:1]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !144 ; [debug line = 77:40]
  br label %32, !dbg !144                         ; [debug line = 77:40]

; <label>:32                                      ; preds = %14
  %33 = load i32* %j, align 4, !dbg !145          ; [#uses=1 type=i32] [debug line = 76:32]
  %34 = add nsw i32 %33, 1, !dbg !145             ; [#uses=1 type=i32] [debug line = 76:32]
  store i32 %34, i32* %j, align 4, !dbg !145      ; [debug line = 76:32]
  br label %11, !dbg !145                         ; [debug line = 76:32]

; <label>:35                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 77:40]
  br label %36, !dbg !146                         ; [debug line = 77:40]

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !147          ; [#uses=1 type=i32] [debug line = 73:32]
  %38 = add nsw i32 %37, 1, !dbg !147             ; [#uses=1 type=i32] [debug line = 73:32]
  store i32 %38, i32* %i, align 4, !dbg !147      ; [debug line = 73:32]
  br label %6, !dbg !147                          ; [debug line = 73:32]

; <label>:39                                      ; preds = %6
  %40 = load i32* %value, align 4, !dbg !148      ; [#uses=1 type=i32] [debug line = 80:5]
  ret i32 %40, !dbg !148                          ; [debug line = 80:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"F:/0yan/fpga/HLS/edge_prj/solution2/.autopilot/db/main.pragma.2.c", metadata !"F:\5C0yan\5Cfpga\5CHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
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
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution", metadata !"convolution", metadata !"", metadata !6, i32 66, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @convolution, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
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
!43 = metadata !{i32 7, i32 8, metadata !36, null}
!44 = metadata !{i32 9, i32 8, metadata !36, null}
!45 = metadata !{i32 10, i32 5, metadata !36, null}
!46 = metadata !{i32 11, i32 5, metadata !36, null}
!47 = metadata !{i32 12, i32 5, metadata !36, null}
!48 = metadata !{i32 13, i32 5, metadata !36, null}
!49 = metadata !{i32 14, i32 5, metadata !36, null}
!50 = metadata !{i32 15, i32 5, metadata !36, null}
!51 = metadata !{i32 16, i32 5, metadata !36, null}
!52 = metadata !{i32 17, i32 5, metadata !36, null}
!53 = metadata !{i32 786688, metadata !36, metadata !"sob_y", metadata !6, i32 20, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 20, i32 7, metadata !36, null}
!55 = metadata !{i32 22, i32 8, metadata !36, null}
!56 = metadata !{i32 23, i32 5, metadata !36, null}
!57 = metadata !{i32 24, i32 5, metadata !36, null}
!58 = metadata !{i32 25, i32 5, metadata !36, null}
!59 = metadata !{i32 26, i32 5, metadata !36, null}
!60 = metadata !{i32 27, i32 5, metadata !36, null}
!61 = metadata !{i32 28, i32 5, metadata !36, null}
!62 = metadata !{i32 29, i32 5, metadata !36, null}
!63 = metadata !{i32 30, i32 5, metadata !36, null}
!64 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 31, i32 7, metadata !36, null}
!66 = metadata !{i32 786688, metadata !36, metadata !"j", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 31, i32 9, metadata !36, null}
!68 = metadata !{i32 786688, metadata !36, metadata !"m", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 31, i32 11, metadata !36, null}
!70 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 31, i32 13, metadata !36, null}
!72 = metadata !{i32 786688, metadata !36, metadata !"block", metadata !6, i32 32, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 32, i32 7, metadata !36, null}
!74 = metadata !{i32 786688, metadata !36, metadata !"value", metadata !6, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 34, i32 8, metadata !36, null}
!76 = metadata !{i32 34, i32 13, metadata !36, null}
!77 = metadata !{i32 37, i32 21, metadata !78, null}
!78 = metadata !{i32 786443, metadata !36, i32 37, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 39, i32 2, metadata !80, null}
!80 = metadata !{i32 786443, metadata !78, i32 39, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 40, i32 1, metadata !80, null}
!82 = metadata !{i32 39, i32 21, metadata !83, null}
!83 = metadata !{i32 786443, metadata !80, i32 39, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 40, i32 6, metadata !85, null}
!85 = metadata !{i32 786443, metadata !83, i32 40, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 41, i32 1, metadata !85, null}
!87 = metadata !{i32 41, i32 7, metadata !85, null}
!88 = metadata !{i32 43, i32 12, metadata !89, null}
!89 = metadata !{i32 786443, metadata !85, i32 42, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 44, i32 6, metadata !89, null}
!91 = metadata !{i32 45, i32 4, metadata !89, null}
!92 = metadata !{i32 47, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !85, i32 47, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 49, i32 21, metadata !95, null}
!95 = metadata !{i32 786443, metadata !93, i32 49, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 52, i32 2, metadata !97, null}
!97 = metadata !{i32 786443, metadata !95, i32 52, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 53, i32 1, metadata !97, null}
!99 = metadata !{i32 52, i32 21, metadata !100, null}
!100 = metadata !{i32 786443, metadata !97, i32 52, i32 17, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 54, i32 2, metadata !102, null}
!102 = metadata !{i32 786443, metadata !100, i32 54, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 55, i32 1, metadata !102, null}
!104 = metadata !{i32 54, i32 1, metadata !102, null}
!105 = metadata !{i32 54, i32 34, metadata !102, null}
!106 = metadata !{i32 52, i32 29, metadata !100, null}
!107 = metadata !{i32 54, i32 34, metadata !100, null}
!108 = metadata !{i32 49, i32 29, metadata !95, null}
!109 = metadata !{i32 55, i32 12, metadata !93, null}
!110 = metadata !{i32 56, i32 6, metadata !93, null}
!111 = metadata !{i32 58, i32 12, metadata !93, null}
!112 = metadata !{i32 59, i32 6, metadata !93, null}
!113 = metadata !{i32 61, i32 5, metadata !85, null}
!114 = metadata !{i32 39, i32 31, metadata !83, null}
!115 = metadata !{i32 61, i32 5, metadata !83, null}
!116 = metadata !{i32 37, i32 31, metadata !78, null}
!117 = metadata !{i32 63, i32 1, metadata !36, null}
!118 = metadata !{i32 786689, metadata !13, metadata !"operatr", metadata !6, i32 16777282, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 66, i32 21, metadata !13, null}
!120 = metadata !{i32 786689, metadata !13, metadata !"block", metadata !6, i32 33554498, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 66, i32 36, metadata !13, null}
!122 = metadata !{i32 67, i32 2, metadata !123, null}
!123 = metadata !{i32 786443, metadata !13, i32 67, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 67, i32 36, metadata !123, null}
!125 = metadata !{i32 786688, metadata !123, metadata !"value", metadata !6, i32 68, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 68, i32 9, metadata !123, null}
!127 = metadata !{i32 68, i32 16, metadata !123, null}
!128 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !6, i32 69, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 69, i32 6, metadata !123, null}
!130 = metadata !{i32 786688, metadata !123, metadata !"j", metadata !6, i32 69, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 69, i32 8, metadata !123, null}
!132 = metadata !{i32 69, i32 9, metadata !123, null}
!133 = metadata !{i32 73, i32 24, metadata !134, null}
!134 = metadata !{i32 786443, metadata !123, i32 73, i32 20, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 76, i32 2, metadata !136, null}
!136 = metadata !{i32 786443, metadata !134, i32 76, i32 1, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 77, i32 1, metadata !136, null}
!138 = metadata !{i32 76, i32 24, metadata !139, null}
!139 = metadata !{i32 786443, metadata !136, i32 76, i32 20, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 77, i32 2, metadata !141, null}
!141 = metadata !{i32 786443, metadata !139, i32 77, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 78, i32 1, metadata !141, null}
!143 = metadata !{i32 77, i32 1, metadata !141, null}
!144 = metadata !{i32 77, i32 40, metadata !141, null}
!145 = metadata !{i32 76, i32 32, metadata !139, null}
!146 = metadata !{i32 77, i32 40, metadata !139, null}
!147 = metadata !{i32 73, i32 32, metadata !134, null}
!148 = metadata !{i32 80, i32 5, metadata !123, null}
