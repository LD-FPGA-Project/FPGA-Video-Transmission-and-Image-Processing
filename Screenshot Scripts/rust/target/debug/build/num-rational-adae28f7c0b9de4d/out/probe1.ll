; ModuleID = 'probe1.71cb626e88d129ad-cgu.0'
source_filename = "probe1.71cb626e88d129ad-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::option::Option<usize>" = type { i64, [1 x i64] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::option::Option<&[core::fmt::rt::Placeholder]>" }
%"core::option::Option<&[core::fmt::rt::Placeholder]>" = type { ptr, [1 x i64] }
%"core::alloc::layout::Layout" = type { i64, i64 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>" = type { i64, [1 x i64] }
%"core::option::Option<&str>" = type { ptr, [1 x i64] }
%"core::result::Result<alloc::raw_vec::RawVec<u8>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::ptr::metadata::PtrComponents<[u8]>" = type { ptr, i64 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>" = type { ptr, [1 x i64] }
%"alloc::collections::TryReserveError" = type { %"alloc::collections::TryReserveErrorKind" }
%"alloc::collections::TryReserveErrorKind" = type { i64, [1 x i64] }
%"core::result::Result<alloc::raw_vec::RawVec<u8>, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::fmt::rt::Argument<'_>" = type { ptr, ptr }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }

@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize" }>, align 1
@alloc_8df0580a595a87d56789d20c7318e185 = private unnamed_addr constant <{ [166 x i8] }> <{ [166 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap" }>, align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_041983ee8170efdaaf95ba67fd072d26 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_94fb26355a808843258ab09e18ff03a5 = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc_577dcf56616b6c276f5bcde89ddb59fa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_94fb26355a808843258ab09e18ff03a5, [16 x i8] c"Q\00\00\00\00\00\00\00b\06\00\00\0D\00\00\00" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_7f42ecd96e03b492ea75f79822b8fd1b = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/fmt/mod.rs" }>, align 1
@alloc_22eff721177dee27ef58a72d6d7df768 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7f42ecd96e03b492ea75f79822b8fd1b, [16 x i8] c"K\00\00\00\00\00\00\00U\01\00\00\0D\00\00\00" }>, align 8
@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_a7511a2547528862181fb0276bf65655 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/alloc/layout.rs" }>, align 1
@alloc_dd9b7553745f559f75879d3c990ed18f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a7511a2547528862181fb0276bf65655, [16 x i8] c"P\00\00\00\00\00\00\00\C1\01\00\00)\00\00\00" }>, align 8
@str.0 = internal unnamed_addr constant [25 x i8] c"attempt to divide by zero"
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_b99730e73100e73a81f4fbfe74b3821d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer }>, align 8
@alloc_53973d2fe29b4adba8bb7390b5678745 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8

; core::intrinsics::is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core10intrinsics17is_nonoverlapping7runtime17h129dd1d1c5a3a9deE(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %diff = alloca i64, align 8
  %_9 = alloca %"core::option::Option<usize>", align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_15.0 = extractvalue { i64, i1 } %1, 0
  %_15.1 = extractvalue { i64, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1, !range !2, !noundef !3
  %_12 = trunc i8 %4 to i1
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_15.0, ptr %5, align 8
  store i64 1, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %6, align 8, !noundef !3
  %_22 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h765f3648d339fa95E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #14
  unreachable

bb5:                                              ; preds = %bb3
  %7 = sub i64 %src_usize, %dst_usize
  store i64 %7, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %8 = sub i64 %dst_usize, %src_usize
  store i64 %8, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i64, ptr %diff, align 8, !noundef !3
  %_0 = icmp uge i64 %_11, %size1
  ret i1 %_0
}

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h512770670c7625f5E(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke core::intrinsics::is_aligned_and_not_null
  %_6 = invoke zeroext i1 @_ZN4core10intrinsics23is_aligned_and_not_null17h071650bdcce8586cE(ptr %src, i64 %align)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %bb4, %bb2, %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h1836202834f564f7E() #15
  unreachable

bb1:                                              ; preds = %start
  br i1 %_6, label %bb2, label %bb7

bb7:                                              ; preds = %bb6, %bb3, %bb1
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h765f3648d339fa95E(ptr align 1 @alloc_8df0580a595a87d56789d20c7318e185, i64 166) #14
  unreachable

bb2:                                              ; preds = %bb1
; invoke core::intrinsics::is_aligned_and_not_null
  %_7 = invoke zeroext i1 @_ZN4core10intrinsics23is_aligned_and_not_null17h071650bdcce8586cE(ptr %dst, i64 %align)
          to label %bb3 unwind label %terminate

bb3:                                              ; preds = %bb2
  br i1 %_7, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; invoke core::intrinsics::is_nonoverlapping::runtime
  %_9 = invoke zeroext i1 @_ZN4core10intrinsics17is_nonoverlapping7runtime17h129dd1d1c5a3a9deE(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb8 unwind label %terminate

bb8:                                              ; preds = %bb4
  br i1 %_9, label %bb5, label %bb6

bb6:                                              ; preds = %bb8
  br label %bb7

bb5:                                              ; preds = %bb8
  ret void
}

; core::intrinsics::is_aligned_and_not_null
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core10intrinsics23is_aligned_and_not_null17h071650bdcce8586cE(ptr %ptr, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_6 = alloca %"core::fmt::Arguments<'_>", align 8
  %_0 = alloca i8, align 1
  %_4 = ptrtoint ptr %ptr to i64
  %1 = icmp eq i64 %_4, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, ptr %_0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %2 = call i64 @llvm.ctpop.i64(i64 %align)
  store i64 %2, ptr %0, align 8
  %_9 = load i64, ptr %0, align 8, !noundef !3
  %_8 = trunc i64 %_9 to i32
  %3 = icmp eq i32 %_8, 1
  br i1 %3, label %bb4, label %bb5

bb3:                                              ; preds = %bb4, %bb1
  %4 = load i8, ptr %_0, align 1, !range !2, !noundef !3
  %5 = trunc i8 %4 to i1
  ret i1 %5

bb4:                                              ; preds = %bb2
  %_13 = sub i64 %align, 1
  %_12 = and i64 %_4, %_13
  %6 = icmp eq i64 %_12, 0
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %_0, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_6, align 8
  %8 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 1, ptr %8, align 8
  %9 = load ptr, ptr @0, align 8, !align !4, !noundef !3
  %10 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %11 = getelementptr inbounds i8, ptr %_6, i64 32
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 %10, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %_6, i64 16
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 8
  store i64 0, ptr %14, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h98bbf7bdf4994454E(ptr align 8 %_6, ptr align 8 @alloc_577dcf56616b6c276f5bcde89ddb59fa) #16
  unreachable
}

; core::intrinsics::unlikely
; Function Attrs: nounwind uwtable
define internal zeroext i1 @_ZN4core10intrinsics8unlikely17h01326e7a8a8980faE(i1 zeroext %b) unnamed_addr #2 {
start:
  ret i1 %b
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h537429eb451ae0fdE(ptr sret([48 x i8]) align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  br i1 %_3, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_7 = add i64 %args.1, 1
  %_6 = icmp ugt i64 %pieces.1, %_7
  br i1 %_6, label %bb2, label %bb4

bb3:                                              ; preds = %bb2, %start
  store ptr @alloc_af99043bc04c419363a7f04d23183506, ptr %_9, align 8
  %0 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 1, ptr %0, align 8
  %1 = load ptr, ptr @0, align 8, !align !4, !noundef !3
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %3 = getelementptr inbounds i8, ptr %_9, i64 32
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 16
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 0, ptr %6, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h98bbf7bdf4994454E(ptr align 8 %_9, ptr align 8 @alloc_22eff721177dee27ef58a72d6d7df768) #16
  unreachable

bb4:                                              ; preds = %bb1
  store ptr %pieces.0, ptr %_0, align 8
  %7 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %pieces.1, ptr %7, align 8
  %8 = load ptr, ptr @0, align 8, !align !4, !noundef !3
  %9 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 32
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 %9, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %args.0, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  store i64 %args.1, ptr %13, align 8
  ret void

bb2:                                              ; preds = %bb1
  br label %bb3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hfd504c4a2a694250E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %_2 = alloca { { ptr, i64 } }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8, !nonnull !3, !align !5, !noundef !3
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %5 = load i64, ptr %4, align 8, !noundef !3
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd8411f0234a9310aE"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %3, i64 %5)
  ret void
}

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17hd78bb6aeb70b823fE(ptr %addr, i64 %align) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke core::intrinsics::is_aligned_and_not_null
  %_3 = invoke zeroext i1 @_ZN4core10intrinsics23is_aligned_and_not_null17h071650bdcce8586cE(ptr %addr, i64 %align)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h1836202834f564f7E() #15
  unreachable

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h765f3648d339fa95E(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i64 110) #14
  unreachable

bb2:                                              ; preds = %bb1
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d9b2e213adbd8e3E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5bc658b2e253f932E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5bc658b2e253f932E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32, [1 x i32] }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dbaa8eb843f9d70E"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h9c3a7c653b5d2dcbE"(ptr align 8 %_1) #17
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h9c3a7c653b5d2dcbE"(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17he9ef3195c438193cE() #15
  unreachable

bb1:                                              ; preds = %bb3
  %8 = load ptr, ptr %0, align 8, !noundef !3
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8, !noundef !3
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h9c3a7c653b5d2dcbE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80473ebff92d2f20E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr %ptr) unnamed_addr #1 {
start:
  %_4 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_4, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h765f3648d339fa95E(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i64 93) #14
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17hf44fbeb2596719a5E(i64 %element_size, i64 %align, i64 %n) unnamed_addr #0 {
start:
  %_18 = alloca i64, align 8
  %_13 = alloca i64, align 8
  %_9 = alloca %"core::alloc::layout::Layout", align 8
  %_0 = alloca %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", align 8
  %0 = icmp eq i64 %element_size, 0
  br i1 %0, label %bb5, label %bb1

bb5:                                              ; preds = %bb4, %start
  %array_size = mul nuw i64 %element_size, %n
  store i64 %align, ptr %_18, align 8
  %_19 = load i64, ptr %_18, align 8, !range !6, !noundef !3
  %_20 = icmp uge i64 %_19, 1
  %_21 = icmp ule i64 %_19, -9223372036854775808
  %_22 = and i1 %_20, %_21
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %array_size, ptr %1, align 8
  store i64 %_19, ptr %_9, align 8
  %2 = load i64, ptr %_9, align 8, !range !6, !noundef !3
  %3 = getelementptr inbounds i8, ptr %_9, i64 8
  %4 = load i64, ptr %3, align 8, !noundef !3
  store i64 %2, ptr %_0, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %4, ptr %5, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i64 %align, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8, !range !6, !noundef !3
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  %_11 = sub i64 %_14, 1
  %_6 = sub i64 9223372036854775807, %_11
  %_7 = icmp eq i64 %element_size, 0
  %6 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %6, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = udiv i64 %_6, %element_size
  %_4 = icmp ugt i64 %n, %_5
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hc59c8a709a9b37aeE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_dd9b7553745f559f75879d3c990ed18f) #16
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb3:                                              ; preds = %bb2
  %7 = load i64, ptr @0, align 8, !range !7, !noundef !3
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store i64 %7, ptr %_0, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %10 = load i64, ptr %_0, align 8, !range !7, !noundef !3
  %11 = getelementptr inbounds i8, ptr %_0, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = insertvalue { i64, i64 } poison, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; core::alloc::layout::Layout::dangling
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN4core5alloc6layout6Layout8dangling17h1353079d31814228E(ptr align 8 %self) unnamed_addr #0 {
start:
  %_5 = alloca i64, align 8
  %_0 = alloca ptr, align 8
  %self1 = load i64, ptr %self, align 8, !range !6, !noundef !3
  store i64 %self1, ptr %_5, align 8
  %_6 = load i64, ptr %_5, align 8, !range !6, !noundef !3
  %_7 = icmp uge i64 %_6, 1
  %_8 = icmp ule i64 %_6, -9223372036854775808
  %_9 = and i1 %_7, %_8
  %ptr = getelementptr i8, ptr null, i64 %_6
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr %ptr) #18
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr %ptr, ptr %_0, align 8
  %0 = load ptr, ptr %_0, align 8, !nonnull !3, !noundef !3
  ret ptr %0
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hbfeac36ed27acc78E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1, ptr align 8 %default) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %2 = alloca { ptr, i32, [1 x i32] }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_7 = alloca { { ptr, i64 } }, align 8
  %self = alloca %"core::option::Option<&str>", align 8
  store ptr %0, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %1, ptr %3, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  %4 = load ptr, ptr %self, align 8, !noundef !3
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq i64 %5, 0
  %_4 = select i1 %6, i64 0, i64 1
  %7 = icmp eq i64 %_4, 0
  br i1 %7, label %bb2, label %bb3

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h0ed067bcfb99950dE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %default)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !5, !noundef !3
  %8 = getelementptr inbounds i8, ptr %self, i64 8
  %t.1 = load i64, ptr %8, align 8, !noundef !3
  store i8 0, ptr %_9, align 1
  store ptr %t.0, ptr %_7, align 8
  %9 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %t.1, ptr %9, align 8
  %10 = load ptr, ptr %_7, align 8, !nonnull !3, !align !5, !noundef !3
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %12 = load i64, ptr %11, align 8, !noundef !3
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17hfd504c4a2a694250E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12)
          to label %bb4 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %13 = load i8, ptr %_9, align 1, !range !2, !noundef !3
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb10, label %bb7

cleanup:                                          ; preds = %bb3, %bb2
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %2, align 8
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %17, ptr %18, align 8
  br label %bb11

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb9, %bb4, %bb5
  ret void

bb4:                                              ; preds = %bb3
  %19 = load i8, ptr %_10, align 1, !range !2, !noundef !3
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb9, label %bb6

bb9:                                              ; preds = %bb4
  br label %bb6

bb7:                                              ; preds = %bb10, %bb11
  %21 = load i8, ptr %_10, align 1, !range !2, !noundef !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb12, label %bb8

bb10:                                             ; preds = %bb11
  br label %bb7

bb8:                                              ; preds = %bb12, %bb7
  %23 = load ptr, ptr %2, align 8, !noundef !3
  %24 = getelementptr inbounds i8, ptr %2, i64 8
  %25 = load i32, ptr %24, align 8, !noundef !3
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb7
  br label %bb8

bb1:                                              ; No predecessors!
  unreachable
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hafdfe5896d5e2493E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %_12 = alloca %"core::result::Result<alloc::raw_vec::RawVec<u8>, alloc::collections::TryReserveError>", align 8
  %v = alloca %"alloc::vec::Vec<u8>", align 8
; call alloc::raw_vec::RawVec<T,A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17hac7ccad2de83fc8fE"(ptr sret([24 x i8]) align 8 %_12, i64 %s.1, i1 zeroext false)
; call alloc::raw_vec::handle_reserve
  %0 = call { i64, ptr } @_ZN5alloc7raw_vec14handle_reserve17h23d37ce006ba7fabE(ptr align 8 %_12)
  %_11.0 = extractvalue { i64, ptr } %0, 0
  %_11.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_11.0, ptr %v, align 8
  %1 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_11.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  %self = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  br label %bb3

bb3:                                              ; preds = %start
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h512770670c7625f5E(ptr %s.0, ptr %self, i64 1, i64 1, i64 %s.1) #18
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %self, ptr align 1 %s.0, i64 %4, i1 false)
  %5 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  ret void
}

; alloc::fmt::format
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3fmt6format17hc0375709374c869fE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %args) unnamed_addr #0 {
start:
  %_4 = alloca ptr, align 8
  %_2 = alloca %"core::option::Option<&str>", align 8
  %_6.0 = load ptr, ptr %args, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds i8, ptr %args, i64 8
  %_6.1 = load i64, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds i8, ptr %args, i64 16
  %_7.0 = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %_7.1 = load i64, ptr %2, align 8, !noundef !3
  %3 = icmp eq i64 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i64 %_7.1, 0
  br i1 %4, label %bb7, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i64 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb7:                                              ; preds = %bb4
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %_2, align 8
  %6 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 0, ptr %6, align 8
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @0, align 8, !align !5, !noundef !3
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %7, ptr %_2, align 8
  %9 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb8, %bb7
  store ptr %args, ptr %_4, align 8
  %10 = load ptr, ptr %_2, align 8, !align !5, !noundef !3
  %11 = getelementptr inbounds i8, ptr %_2, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %_4, align 8, !nonnull !3, !align !4, !noundef !3
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hbfeac36ed27acc78E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12, ptr align 8 %13)
  ret void

bb6:                                              ; preds = %bb5
  %14 = icmp eq i64 %_7.1, 0
  br i1 %14, label %bb8, label %bb3

bb8:                                              ; preds = %bb6
  %s = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %15 = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %_13.0 = load ptr, ptr %15, align 8, !nonnull !3, !align !5, !noundef !3
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  %_13.1 = load i64, ptr %16, align 8, !noundef !3
  store ptr %_13.0, ptr %_2, align 8
  %17 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %_13.1, ptr %17, align 8
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h0ed067bcfb99950dE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_1, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17hb2f7e8bea7badd53E(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_2)
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd8411f0234a9310aE"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hafdfe5896d5e2493E"(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %self.0, i64 %self.1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; alloc::alloc::alloc
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN5alloc5alloc5alloc17hf639a92bdaf135f1E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %2 = alloca i8, align 1
  %_13 = alloca i64, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %3, align 8
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17hd78bb6aeb70b823fE(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #18
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1, !noundef !3
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %_5 = load i64, ptr %5, align 8, !noundef !3
  %self = load i64, ptr %layout, align 8, !range !6, !noundef !3
  store i64 %self, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8, !range !6, !noundef !3
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  %_0 = call ptr @__rust_alloc(i64 %_5, i64 %_14) #18
  ret ptr %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5355e44f19a265c8E(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_52 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 8
  %_51 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_39 = alloca ptr, align 8
  %_34 = alloca i64, align 8
  %_23 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 8
  %_22 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_17 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8
  %self3 = alloca ptr, align 8
  %self2 = alloca ptr, align 8
  %_12 = alloca ptr, align 8
  %layout1 = alloca %"core::alloc::layout::Layout", align 8
  %raw_ptr = alloca ptr, align 8
  %_6 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 8
  %_0 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %size = load i64, ptr %3, align 8, !noundef !3
  %4 = icmp eq i64 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
; call core::alloc::layout::Layout::dangling
  %data = call ptr @_ZN4core5alloc6layout6Layout8dangling17h1353079d31814228E(ptr align 8 %layout)
  store ptr %data, ptr %_23, align 8
  %5 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 0, ptr %5, align 8
  %6 = load ptr, ptr %_23, align 8, !noundef !3
  %7 = getelementptr inbounds i8, ptr %_23, i64 8
  %8 = load i64, ptr %7, align 8, !noundef !3
  store ptr %6, ptr %_22, align 8
  %9 = getelementptr inbounds i8, ptr %_22, i64 8
  store i64 %8, ptr %9, align 8
  %ptr.0 = load ptr, ptr %_22, align 8, !noundef !3
  %10 = getelementptr inbounds i8, ptr %_22, i64 8
  %ptr.1 = load i64, ptr %10, align 8, !noundef !3
  br label %bb9

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb4, label %bb5

bb9:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr %ptr.0) #18
  br label %bb11

bb11:                                             ; preds = %bb9
  store ptr %ptr.0, ptr %_6, align 8
  %11 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %ptr.1, ptr %11, align 8
  %12 = load ptr, ptr %_6, align 8, !nonnull !3, !noundef !3
  %13 = getelementptr inbounds i8, ptr %_6, i64 8
  %14 = load i64, ptr %13, align 8, !noundef !3
  store ptr %12, ptr %_0, align 8
  %15 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %14, ptr %15, align 8
  br label %bb8

bb8:                                              ; preds = %bb19, %bb13, %bb11
  %16 = load ptr, ptr %_0, align 8, !noundef !3
  %17 = getelementptr inbounds i8, ptr %_0, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = insertvalue { ptr, i64 } poison, ptr %16, 0
  %20 = insertvalue { ptr, i64 } %19, i64 %18, 1
  ret { ptr, i64 } %20

bb5:                                              ; preds = %bb1
  %_11.0 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %21 = getelementptr inbounds i8, ptr %layout, i64 8
  %_11.1 = load i64, ptr %21, align 8, !noundef !3
; call alloc::alloc::alloc
  %22 = call ptr @_ZN5alloc5alloc5alloc17hf639a92bdaf135f1E(i64 %_11.0, i64 %_11.1)
  store ptr %22, ptr %raw_ptr, align 8
  br label %bb7

bb4:                                              ; preds = %bb1
  %23 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %24 = getelementptr inbounds i8, ptr %layout, i64 8
  %25 = load i64, ptr %24, align 8, !noundef !3
  store i64 %23, ptr %layout1, align 8
  %26 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds i8, ptr %layout1, i64 8
  %_29 = load i64, ptr %27, align 8, !noundef !3
  %self4 = load i64, ptr %layout1, align 8, !range !6, !noundef !3
  store i64 %self4, ptr %_34, align 8
  %_35 = load i64, ptr %_34, align 8, !range !6, !noundef !3
  %_36 = icmp uge i64 %_35, 1
  %_37 = icmp ule i64 %_35, -9223372036854775808
  %_38 = and i1 %_36, %_37
  %28 = call ptr @__rust_alloc_zeroed(i64 %_29, i64 %_35) #18
  store ptr %28, ptr %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb5
  %ptr = load ptr, ptr %raw_ptr, align 8, !noundef !3
  %_40 = ptrtoint ptr %ptr to i64
  %29 = icmp eq i64 %_40, 0
  br i1 %29, label %bb13, label %bb14

bb13:                                             ; preds = %bb7
  store ptr null, ptr %self3, align 8
  store ptr null, ptr %self2, align 8
  %30 = load ptr, ptr @0, align 8, !noundef !3
  %31 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %30, ptr %_0, align 8
  %32 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %31, ptr %32, align 8
  br label %bb8

bb14:                                             ; preds = %bb7
  br label %bb15

bb15:                                             ; preds = %bb14
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr %ptr) #18
  br label %bb16

bb16:                                             ; preds = %bb15
  store ptr %ptr, ptr %_39, align 8
  %33 = load ptr, ptr %_39, align 8, !nonnull !3, !noundef !3
  store ptr %33, ptr %self3, align 8
  %v = load ptr, ptr %self3, align 8, !nonnull !3, !noundef !3
  store ptr %v, ptr %self2, align 8
  %v5 = load ptr, ptr %self2, align 8, !nonnull !3, !noundef !3
  store ptr %v5, ptr %_12, align 8
  %ptr6 = load ptr, ptr %_12, align 8, !nonnull !3, !noundef !3
  store ptr %ptr6, ptr %_52, align 8
  %34 = getelementptr inbounds i8, ptr %_52, i64 8
  store i64 %size, ptr %34, align 8
  %35 = load ptr, ptr %_52, align 8, !noundef !3
  %36 = getelementptr inbounds i8, ptr %_52, i64 8
  %37 = load i64, ptr %36, align 8, !noundef !3
  store ptr %35, ptr %_51, align 8
  %38 = getelementptr inbounds i8, ptr %_51, i64 8
  store i64 %37, ptr %38, align 8
  %ptr.07 = load ptr, ptr %_51, align 8, !noundef !3
  %39 = getelementptr inbounds i8, ptr %_51, i64 8
  %ptr.18 = load i64, ptr %39, align 8, !noundef !3
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr %ptr.07) #18
  br label %bb19

bb19:                                             ; preds = %bb17
  store ptr %ptr.07, ptr %_17, align 8
  %40 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %ptr.18, ptr %40, align 8
  %41 = load ptr, ptr %_17, align 8, !nonnull !3, !noundef !3
  %42 = getelementptr inbounds i8, ptr %_17, i64 8
  %43 = load i64, ptr %42, align 8, !noundef !3
  store ptr %41, ptr %_0, align 8
  %44 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %43, ptr %44, align 8
  br label %bb8
}

; alloc::raw_vec::handle_reserve
; Function Attrs: inlinehint uwtable
define { i64, ptr } @_ZN5alloc7raw_vec14handle_reserve17h23d37ce006ba7fabE(ptr align 8 %result) unnamed_addr #0 {
start:
  %e = alloca %"alloc::collections::TryReserveError", align 8
  %_10 = alloca %"alloc::collections::TryReserveErrorKind", align 8
  %_2 = alloca %"core::result::Result<alloc::raw_vec::RawVec<u8>, alloc::collections::TryReserveErrorKind>", align 8
  %_7 = load i64, ptr %result, align 8, !range !8, !noundef !3
  %0 = icmp eq i64 %_7, 0
  br i1 %0, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %result, i64 8
  %t.0 = load i64, ptr %1, align 8, !range !9, !noundef !3
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %t.1 = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %3 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %t.0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %t.1, ptr %4, align 8
  store i64 0, ptr %_2, align 8
  br label %bb2

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %result, i64 8
  %e.0 = load i64, ptr %5, align 8, !range !7, !noundef !3
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %e.1 = load i64, ptr %6, align 8
  store i64 %e.0, ptr %e, align 8
  %7 = getelementptr inbounds i8, ptr %e, i64 8
  store i64 %e.1, ptr %7, align 8
  %8 = load i64, ptr %e, align 8, !range !7, !noundef !3
  %9 = icmp eq i64 %8, 0
  %_14 = select i1 %9, i64 0, i64 1
  %10 = icmp eq i64 %_14, 0
  br i1 %10, label %bb6, label %bb5

bb2:                                              ; preds = %bb5, %bb4
  %11 = getelementptr inbounds i8, ptr %_2, i64 8
  %res.0 = load i64, ptr %11, align 8, !range !9, !noundef !3
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %res.1 = load ptr, ptr %12, align 8, !nonnull !3, !noundef !3
  %13 = insertvalue { i64, ptr } poison, i64 %res.0, 0
  %14 = insertvalue { i64, ptr } %13, ptr %res.1, 1
  ret { i64, ptr } %14

bb6:                                              ; preds = %bb3
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17hca84ee27eee447d1E() #16
  unreachable

bb5:                                              ; preds = %bb3
  %__self_1 = getelementptr inbounds i8, ptr %e, i64 16
  %_17.0 = load i64, ptr %e, align 8, !range !6, !noundef !3
  %15 = getelementptr inbounds i8, ptr %e, i64 8
  %_17.1 = load i64, ptr %15, align 8, !noundef !3
  store i64 %_17.0, ptr %_10, align 8
  %16 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %_17.1, ptr %16, align 8
  %17 = load i64, ptr %_10, align 8, !range !7, !noundef !3
  %18 = getelementptr inbounds i8, ptr %_10, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %17, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store i64 %19, ptr %21, align 8
  store i64 1, ptr %_2, align 8
  %_3 = load i64, ptr %_2, align 8, !range !8, !noundef !3
  %22 = icmp eq i64 %_3, 0
  br i1 %22, label %bb2, label %bb7

bb7:                                              ; preds = %bb5
  %23 = getelementptr inbounds i8, ptr %_2, i64 8
  %layout.0 = load i64, ptr %23, align 8, !range !6, !noundef !3
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %layout.1 = load i64, ptr %24, align 8, !noundef !3
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h2a00f3202443143aE(i64 %layout.0, i64 %layout.1) #16
  unreachable

bb1:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h487cf0f5d2c97732E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #3 {
start:
  %self1 = alloca ptr, align 8
  %_9 = alloca { ptr, %"core::alloc::layout::Layout" }, align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = load i64, ptr %self, align 8, !noundef !3
  %0 = icmp eq i64 %_3, 0
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %rhs = load i64, ptr %self, align 8, !noundef !3
  %size = mul nuw i64 1, %rhs
  %1 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %size, ptr %1, align 8
  store i64 1, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %self2 = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  store ptr %self2, ptr %self1, align 8
  %3 = load ptr, ptr %self1, align 8, !nonnull !3, !noundef !3
  store ptr %3, ptr %_9, align 8
  %4 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !3
  %7 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %6, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_9, i64 24, i1 false)
  br label %bb5

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %9, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  ret void
}

; alloc::raw_vec::RawVec<T,A>::try_allocate_in
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17hac7ccad2de83fc8fE"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity, i1 zeroext %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32, [1 x i32] }, align 8
  %_29 = alloca i8, align 1
  %_27 = alloca i64, align 8
  %pointer = alloca ptr, align 8
  %_25 = alloca ptr, align 8
  %_24 = alloca %"alloc::raw_vec::RawVec<u8>", align 8
  %self = alloca %"alloc::collections::TryReserveErrorKind", align 8
  %_21 = alloca %"alloc::collections::TryReserveError", align 8
  %result = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 8
  %_8 = alloca %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %2 = zext i1 %0 to i8
  store i8 %2, ptr %init, align 1
  store i8 1, ptr %_29, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = icmp eq i64 %capacity, 0
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_29, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %4 = invoke { i64, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hd77de7a824572154E"()
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb1
; invoke core::alloc::layout::Layout::array::inner
  %5 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17hf44fbeb2596719a5E(i64 1, i64 1, i64 %capacity)
          to label %bb21 unwind label %cleanup

bb20:                                             ; preds = %cleanup
  %6 = load i8, ptr %_29, align 1, !range !2, !noundef !3
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb19, label %bb18

cleanup:                                          ; preds = %bb2, %bb8, %bb9, %bb4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb20

bb21:                                             ; preds = %bb4
  %12 = extractvalue { i64, i64 } %5, 0
  %13 = extractvalue { i64, i64 } %5, 1
  store i64 %12, ptr %_8, align 8
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %13, ptr %14, align 8
  %15 = load i64, ptr %_8, align 8, !range !7, !noundef !3
  %16 = icmp eq i64 %15, 0
  %_9 = select i1 %16, i64 1, i64 0
  %17 = icmp eq i64 %_9, 0
  br i1 %17, label %bb7, label %bb6

bb7:                                              ; preds = %bb21
  %layout.0 = load i64, ptr %_8, align 8, !range !6, !noundef !3
  %18 = getelementptr inbounds i8, ptr %_8, i64 8
  %layout.1 = load i64, ptr %18, align 8, !noundef !3
  store i64 %layout.0, ptr %layout, align 8
  %19 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %layout.1, ptr %19, align 8
  %20 = getelementptr inbounds i8, ptr %layout, i64 8
  %alloc_size = load i64, ptr %20, align 8, !noundef !3
  %21 = load i8, ptr %init, align 1, !range !2, !noundef !3
  %22 = trunc i8 %21 to i1
  %_14 = zext i1 %22 to i64
  %23 = icmp eq i64 %_14, 0
  br i1 %23, label %bb9, label %bb8

bb6:                                              ; preds = %bb21
  %24 = load i64, ptr @0, align 8, !range !7, !noundef !3
  %25 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %26 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %24, ptr %26, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  store i64 %25, ptr %27, align 8
  store i64 1, ptr %_0, align 8
  br label %bb16

bb9:                                              ; preds = %bb7
  %_16.0 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %28 = getelementptr inbounds i8, ptr %layout, i64 8
  %_16.1 = load i64, ptr %28, align 8, !noundef !3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %29 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h386af2a43b06dbedE"(ptr align 1 %alloc, i64 %_16.0, i64 %_16.1)
          to label %bb10 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_18.0 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %30 = getelementptr inbounds i8, ptr %layout, i64 8
  %_18.1 = load i64, ptr %30, align 8, !noundef !3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %31 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9c6ddfe5672830aeE"(ptr align 1 %alloc, i64 %_18.0, i64 %_18.1)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %32 = extractvalue { ptr, i64 } %29, 0
  %33 = extractvalue { ptr, i64 } %29, 1
  store ptr %32, ptr %result, align 8
  %34 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %33, ptr %34, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb10
  %35 = load ptr, ptr %result, align 8, !noundef !3
  %36 = ptrtoint ptr %35 to i64
  %37 = icmp eq i64 %36, 0
  %_19 = select i1 %37, i64 1, i64 0
  %38 = icmp eq i64 %_19, 0
  br i1 %38, label %bb14, label %bb13

bb11:                                             ; preds = %bb8
  %39 = extractvalue { ptr, i64 } %31, 0
  %40 = extractvalue { ptr, i64 } %31, 1
  store ptr %39, ptr %result, align 8
  %41 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %40, ptr %41, align 8
  br label %bb12

bb14:                                             ; preds = %bb12
  %ptr.0 = load ptr, ptr %result, align 8, !nonnull !3, !noundef !3
  %42 = getelementptr inbounds i8, ptr %result, i64 8
  %ptr.1 = load i64, ptr %42, align 8, !noundef !3
  store ptr %ptr.0, ptr %pointer, align 8
  %43 = load ptr, ptr %pointer, align 8, !nonnull !3, !noundef !3
  store ptr %43, ptr %_25, align 8
  store i64 %capacity, ptr %_27, align 8
  %44 = load ptr, ptr %_25, align 8, !nonnull !3, !noundef !3
  %45 = getelementptr inbounds i8, ptr %_24, i64 8
  store ptr %44, ptr %45, align 8
  %46 = load i64, ptr %_27, align 8, !range !9, !noundef !3
  store i64 %46, ptr %_24, align 8
  %47 = load i64, ptr %_24, align 8, !range !9, !noundef !3
  %48 = getelementptr inbounds i8, ptr %_24, i64 8
  %49 = load ptr, ptr %48, align 8, !nonnull !3, !noundef !3
  %50 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %47, ptr %50, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 8
  store ptr %49, ptr %51, align 8
  store i64 0, ptr %_0, align 8
  br label %bb15

bb13:                                             ; preds = %bb12
  %_23.0 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %52 = getelementptr inbounds i8, ptr %layout, i64 8
  %_23.1 = load i64, ptr %52, align 8, !noundef !3
  store i64 %_23.0, ptr %self, align 8
  %53 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %_23.1, ptr %53, align 8
  %54 = load i64, ptr %self, align 8, !range !7, !noundef !3
  %55 = getelementptr inbounds i8, ptr %self, i64 8
  %56 = load i64, ptr %55, align 8
  store i64 %54, ptr %_21, align 8
  %57 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %56, ptr %57, align 8
  %58 = load i64, ptr %_21, align 8, !range !7, !noundef !3
  %59 = getelementptr inbounds i8, ptr %_21, i64 8
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %58, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 8
  store i64 %60, ptr %62, align 8
  store i64 1, ptr %_0, align 8
  br label %bb16

bb15:                                             ; preds = %bb3, %bb14
  br label %bb17

bb16:                                             ; preds = %bb6, %bb13
  br label %bb17

bb17:                                             ; preds = %bb15, %bb16
  ret void

bb5:                                              ; No predecessors!
  unreachable

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i64, ptr } %4, 0
  %_5.1 = extractvalue { i64, ptr } %4, 1
  %63 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_5.0, ptr %63, align 8
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  store ptr %_5.1, ptr %64, align 8
  store i64 0, ptr %_0, align 8
  br label %bb15

bb18:                                             ; preds = %bb19, %bb20
  %65 = load ptr, ptr %1, align 8, !noundef !3
  %66 = getelementptr inbounds i8, ptr %1, i64 8
  %67 = load i32, ptr %66, align 8, !noundef !3
  %68 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %69 = insertvalue { ptr, i32 } %68, i32 %67, 1
  resume { ptr, i32 } %69

bb19:                                             ; preds = %bb20
  br label %bb18
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hd77de7a824572154E"() unnamed_addr #3 {
start:
  %_3 = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  %_0 = alloca %"alloc::raw_vec::RawVec<u8>", align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbdf07f46e3171006E"(ptr getelementptr (i8, ptr null, i64 1)) #18
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr getelementptr (i8, ptr null, i64 1), ptr %_3, align 8
  %0 = load ptr, ptr %_3, align 8, !nonnull !3, !noundef !3
  store ptr %0, ptr %_2, align 8
  %1 = load ptr, ptr %_2, align 8, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %1, ptr %2, align 8
  store i64 0, ptr %_0, align 8
  %3 = load i64, ptr %_0, align 8, !range !9, !noundef !3
  %4 = getelementptr inbounds i8, ptr %_0, i64 8
  %5 = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %6 = insertvalue { i64, ptr } poison, i64 %3, 0
  %7 = insertvalue { i64, ptr } %6, ptr %5, 1
  ret { i64, ptr } %7
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7cb348fe73443f4eE"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_14 = alloca i64, align 8
  %layout1 = alloca %"core::alloc::layout::Layout", align 8
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %_4 = load i64, ptr %3, align 8, !noundef !3
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = load i64, ptr %layout, align 8, !range !6, !noundef !3
  %6 = getelementptr inbounds i8, ptr %layout, i64 8
  %7 = load i64, ptr %6, align 8, !noundef !3
  store i64 %5, ptr %layout1, align 8
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %7, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %layout1, i64 8
  %_9 = load i64, ptr %9, align 8, !noundef !3
  %self2 = load i64, ptr %layout1, align 8, !range !6, !noundef !3
  store i64 %self2, ptr %_14, align 8
  %_15 = load i64, ptr %_14, align 8, !range !6, !noundef !3
  %_16 = icmp uge i64 %_15, 1
  %_17 = icmp ule i64 %_15, -9223372036854775808
  %_18 = and i1 %_16, %_17
  call void @__rust_dealloc(ptr %ptr, i64 %_9, i64 %_15) #18
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9c6ddfe5672830aeE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5355e44f19a265c8E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h386af2a43b06dbedE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5355e44f19a265c8E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dbaa8eb843f9d70E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_10 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 8
  %_9 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !3
  store ptr %self1, ptr %_10, align 8
  %2 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %len, ptr %2, align 8
  %3 = load ptr, ptr %_10, align 8, !noundef !3
  %4 = getelementptr inbounds i8, ptr %_10, i64 8
  %5 = load i64, ptr %4, align 8, !noundef !3
  store ptr %3, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %5, ptr %6, align 8
  %_2.0 = load ptr, ptr %_9, align 8, !noundef !3
  %7 = getelementptr inbounds i8, ptr %_9, i64 8
  %_2.1 = load i64, ptr %7, align 8, !noundef !3
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80473ebff92d2f20E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h487cf0f5d2c97732E"(ptr sret([24 x i8]) align 8 %_2, ptr align 8 %self)
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  %1 = load i64, ptr %0, align 8, !range !7, !noundef !3
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8, !nonnull !3, !noundef !3
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %layout.0 = load i64, ptr %4, align 8, !range !6, !noundef !3
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %layout.1 = load i64, ptr %5, align 8, !noundef !3
  %_7 = getelementptr inbounds i8, ptr %self, i64 16
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7cb348fe73443f4eE"(ptr align 1 %_7, ptr %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void

bb5:                                              ; No predecessors!
  unreachable
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h094a230b4cbe32afE() unnamed_addr #3 {
start:
  %_0.i = alloca %"core::fmt::rt::Argument<'_>", align 8
  %_7 = alloca [1 x %"core::fmt::rt::Argument<'_>"], align 8
  %_3 = alloca %"core::fmt::Arguments<'_>", align 8
  %res = alloca %"alloc::string::String", align 8
  %_1 = alloca %"alloc::string::String", align 8
  store ptr @alloc_53973d2fe29b4adba8bb7390b5678745, ptr %_0.i, align 8
  %0 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h9a3ce70d43cd7be3E", ptr %0, align 8
  %1 = load ptr, ptr %_0.i, align 8, !nonnull !3, !align !5, !noundef !3
  %2 = getelementptr inbounds i8, ptr %_0.i, i64 8
  %3 = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %4 = insertvalue { ptr, ptr } poison, ptr %1, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %3, 1
  %_8.0 = extractvalue { ptr, ptr } %5, 0
  %_8.1 = extractvalue { ptr, ptr } %5, 1
  %6 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_7, i64 0, i64 0
  store ptr %_8.0, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %_8.1, ptr %7, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h537429eb451ae0fdE(ptr sret([48 x i8]) align 8 %_3, ptr align 8 @alloc_b99730e73100e73a81f4fbfe74b3821d, i64 1, ptr align 8 %_7, i64 1)
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17hc0375709374c869fE(ptr sret([24 x i8]) align 8 %res, ptr align 8 %_3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %res, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4d9b2e213adbd8e3E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #5

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h765f3648d339fa95E(ptr align 1, i64) unnamed_addr #6

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; core::panicking::panic_cannot_unwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h1836202834f564f7E() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h98bbf7bdf4994454E(ptr align 8, ptr align 8) unnamed_addr #7

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h9a3ce70d43cd7be3E"(ptr align 8, ptr align 8) unnamed_addr #3

; core::panicking::panic_in_cleanup
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17he9ef3195c438193cE() unnamed_addr #6

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17hc59c8a709a9b37aeE(ptr align 1, i64, ptr align 8) unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; alloc::fmt::format::format_inner
; Function Attrs: uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hb2f7e8bea7badd53E(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #9

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #10

; alloc::raw_vec::capacity_overflow
; Function Attrs: noinline noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17hca84ee27eee447d1E() unnamed_addr #11

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h2a00f3202443143aE(i64, i64) unnamed_addr #12

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #13

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #7 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #10 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #11 = { noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #12 = { cold noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #13 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.78.0 (9b00956e5 2024-04-29)"}
!2 = !{i8 0, i8 2}
!3 = !{}
!4 = !{i64 8}
!5 = !{i64 1}
!6 = !{i64 1, i64 -9223372036854775807}
!7 = !{i64 0, i64 -9223372036854775807}
!8 = !{i64 0, i64 2}
!9 = !{i64 0, i64 -9223372036854775808}
