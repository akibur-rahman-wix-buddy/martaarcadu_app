
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:martaarcadu_app/common_widgets/common_button.dart';
// import 'package:martaarcadu_app/common_widgets/custom_container.dart';
// import 'package:martaarcadu_app/constants/text_font_style.dart';
// import 'package:martaarcadu_app/gen/assets.gen.dart';
// import 'package:martaarcadu_app/gen/colors.gen.dart';
// import 'package:martaarcadu_app/helpers/ui_helpers.dart';

// class CommonDialog {
//   static Future<void> bookingConfirmationMessage(BuildContext context) async {
//     showDialog(
//         barrierColor: AppColors.allPrimaryColor.withAlpha((0.8 * 255).toInt()),
//         context: context,
//         builder: (context) {
//           Future.delayed(const Duration(seconds: 3), () {
//             // if (context.mounted) {
//             //   Navigator.of(context).pop();
//             // }

//             // NavigationService.goBack; // Close the dialog
//             // Go back to the previous screen
//           });
//           return AlertDialog(
//             surfaceTintColor: AppColors.allPrimaryColor,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.r)),
//             content: Stack(children: [
//               const AspectRatio(
//                   aspectRatio: .85,
//                   child: SizedBox(
//                     width: double.infinity,
//                   )),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: InkWell(
//                       onTap: () => Get.back(),
//                       child: CustomContainer(
//                         padding: EdgeInsets.zero,
//                         border: Border.all(color: AppColors.c000000),
//                         color: AppColors.cFFFFFF,
//                         borderRadius: 50.r,
//                         width: 24.w,
//                         height: 24.h,
//                         child: Center(
//                           child: Icon(Icons.close_outlined,
//                               size: 16.sp, color: AppColors.c5CB85C),
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "Booking Request Sent!",
//                     style: TextFontStyle.textStylec20cFFFFFFInterW700,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                         style: TextFontStyle.textStylec26c071731Poppins600,
//                         children: [
//                           const TextSpan(
//                             text: "Wade Warren",
//                           ),
//                           TextSpan(
//                             text: " will confirm your booking request soon.",
//                             style: TextFontStyle.textStylec26c071731Poppins600,
//                           ),
//                         ],
//                       )),
//                   UIHelper.verticalSpace(13.h),
//                   Image.asset(
//                     Assets.images.aboutUsScreenImage1.path,
//                     height: 215.h,
//                     width: 221.w,
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                 ],
//               ),
//             ]),
//           );
//         });
//   }

//   static Future<void> rentConfirmationMessage(BuildContext context) async {
//     showDialog(
//         barrierColor: AppColors.allPrimaryColor.withAlpha((0.8 * 255).toInt()),
//         context: context,
//         builder: (context) {
//           Future.delayed(const Duration(seconds: 3), () {
//             // if (context.mounted) {
//             //   Navigator.of(context).pop();
//             // }

//             // NavigationService.goBack; // Close the dialog
//             // Go back to the previous screen
//           });
//           return AlertDialog(
//             surfaceTintColor: AppColors.allPrimaryColor,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.r)),
//             content: Stack(children: [
//               const AspectRatio(
//                   aspectRatio: .85,
//                   child: SizedBox(
//                     width: double.infinity,
//                   )),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: InkWell(
//                       onTap: () => Get.back(),
//                       child: CustomContainer(
//                         padding: EdgeInsets.zero,
//                         border: Border.all(color: AppColors.c000000),
//                         color: AppColors.cFFFFFF,
//                         borderRadius: 50.r,
//                         width: 24.w,
//                         height: 24.h,
//                         child: Center(
//                           child: Icon(Icons.close_outlined,
//                               size: 16.sp, color: AppColors.c000000),
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "Rent Request Sent!",
//                     style: TextFontStyle.textStylec20cFFFFFFInterW700,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "You will get notification when the request will accepted.",
//                     style: TextFontStyle.textStylec14c69B360InterW400,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Image.asset(
//                     Assets.images.aboutUsScreenImage1.path,
//                     height: 215.h,
//                     width: 221.w,
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                 ],
//               ),
//             ]),
//           );
//         });
//   }

//   static Future<void> paymentSuccessMessage(BuildContext context) async {
//     showDialog(
//         barrierColor: AppColors.allPrimaryColor.withAlpha((0.8 * 255).toInt()),
//         context: context,
//         builder: (context) {
//           Future.delayed(const Duration(seconds: 3), () {});
//           return AlertDialog(
//             surfaceTintColor: AppColors.allPrimaryColor,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.r)),
//             content: Stack(children: [
//               const AspectRatio(
//                   aspectRatio: .85,
//                   child: SizedBox(
//                     width: double.infinity,
//                   )),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: InkWell(
//                       onTap: () => Get.back(),
//                       child: CustomContainer(
//                         padding: EdgeInsets.zero,
//                         border: Border.all(color: AppColors.c000000),
//                         color: AppColors.cFFFFFF,
//                         borderRadius: 50.r,
//                         width: 24.w,
//                         height: 24.h,
//                         child: Center(
//                           child: Icon(Icons.close_outlined,
//                               size: 16.sp, color: AppColors.c000000),
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "Rent Request Sent!",
//                     style: TextFontStyle.textStylec20cFFFFFFInterW700,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "This project payment was successfull.",
//                     textAlign: TextAlign.center,
//                     style: TextFontStyle.textStylec16cBDBDBDInterW400,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Image.asset(
//                     Assets.images.homeScreenBannerImage2.path,
//                     height: 215.h,
//                     width: 221.w,
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                   CommonButton(
//                     isBackgroundColorActive: true,
//                     text: "Download Reciept",
//                     customChild: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             Assets.icons.deleteCartScreenIcon.path,
//                             height: 16.h,
//                             width: 16.w,
//                           ),
//                           UIHelper.horizontalSpace(8.w),
//                           Text(
//                             "Download Reciept",
//                             style: TextFontStyle.textStylec14cFFFFFFInterW400,
//                           )
//                         ]),
//                     onPressed: () {
//                       Get.back();
//                     },
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                   CommonButton(
//                     isBackgroundColorActive: false,
//                     text: "Cencel",
//                     onPressed: () {
//                       Get.back();
//                     },
//                   ),
//                 ],
//               ),
//             ]),
//           );
//         });
//   }

//   static Future<void> projectCompletedMessage(BuildContext context) async {
//     showDialog(
//         barrierColor: AppColors.allPrimaryColor.withAlpha((0.8 * 255).toInt()),
//         context: context,
//         builder: (context) {
//           Future.delayed(const Duration(seconds: 3), () {
//             // if (context.mounted) {
//             //   Navigator.of(context).pop();
//             // }

//             // NavigationService.goBack; // Close the dialog
//             // Go back to the previous screen
//           });
//           return AlertDialog(
//             surfaceTintColor: AppColors.allPrimaryColor,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.r)),
//             content: Stack(children: [
//               const AspectRatio(
//                   aspectRatio: .85,
//                   child: SizedBox(
//                     width: double.infinity,
//                   )),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: InkWell(
//                       onTap: () => Get.back(),
//                       child: CustomContainer(
//                         padding: EdgeInsets.zero,
//                         border: Border.all(color: AppColors.c000000),
//                         color: AppColors.cFFFFFF,
//                         borderRadius: 50.r,
//                         width: 24.w,
//                         height: 24.h,
//                         child: Center(
//                           child: Icon(Icons.close_outlined,
//                               size: 16.sp, color: AppColors.c000000),
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   Text(
//                     "Project Completed!",
//                     style: TextFontStyle.textStylec20cFFFFFFInterW700,
//                   ),
//                   UIHelper.verticalSpace(13.h),
//                   RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                         style: TextFontStyle.textStylec20cFFFFFFInterW700,
//                         children: [
//                           TextSpan(
//                             text: "Your rating will be visible to ",
//                             style: TextFontStyle.textStylec16cBDBDBDInterW400,
//                           ),
//                           const TextSpan(
//                             text: "Wade Warren",
//                           ),
//                           TextSpan(
//                             text: " will confirm your booking request soon.",
//                             style: TextFontStyle.textStylec16cBDBDBDInterW400,
//                           ),
//                         ],
//                       )),
//                   UIHelper.verticalSpace(13.h),
//                   Image.asset(
//                     Assets.images.onboardingImage1.path,
//                     height: 215.h,
//                     width: 221.w,
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                 ],
//               ),
//             ]),
//           );
//         });
//   }

//   static void showLogoutBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       barrierColor:
//           const Color.fromARGB(255, 46, 13, 24).withAlpha((0.75 * 255).toInt()),
//       context: context,
//       backgroundColor: AppColors.cFFFFFF,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.all(20.w),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'Logout',
//                 style: TextFontStyle.textStylec20cFFFFFFInterW700.copyWith(
//                   fontSize: 24.sp,
//                   color: AppColors.c000000,
//                 ),
//               ),
//               UIHelper.verticalSpace(20.h),
//               const Divider(
//                 thickness: 1,
//               ),
//               UIHelper.verticalSpace(20.h),
//               Center(
//                 child: Text(
//                   'Are you sure you want to\nlogout?',
//                   textAlign: TextAlign.center,
//                   style: TextFontStyle.textStylec16cBDBDBDInterW400.copyWith(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 20.sp,
//                       color: AppColors.c141B34,
//                       height: 1.5.h),
//                 ),
//               ),
//               UIHelper.verticalSpace(24.h),
//               Row(
//                 children: [
//                   Expanded(
//                     child: OutlinedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       style: OutlinedButton.styleFrom(
//                         minimumSize: Size(166.w, 38.h),
//                         side:
//                             const BorderSide(color: AppColors.allPrimaryColor),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.r),
//                         ),
//                         padding: EdgeInsets.symmetric(vertical: 12.h),
//                       ),
//                       child: Text(
//                         'Cancel',
//                         style:
//                             TextFontStyle.textStylec12c757575InterW400.copyWith(
//                           fontSize: 14.sp,
//                           color: AppColors.allPrimaryColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.horizontalSpace(12.w),
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () async {
//                         // Navigator.pop(context);
//                         // await postLogOutRX.logOut();
//                         // Get.offAll(LoginScreen());
//                       },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(166.w, 38.h),
//                         backgroundColor: AppColors.allPrimaryColor,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.r),
//                         ),
//                         padding: EdgeInsets.symmetric(vertical: 12.h),
//                       ),
//                       child: Text(
//                         'Yes, Logout',
//                         style:
//                             TextFontStyle.textStylec20cFFFFFFInterW700.copyWith(
//                           backgroundColor: AppColors.allPrimaryColor,
//                           fontSize: 14.sp,
//                           color: AppColors.cFFFFFF,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               UIHelper.verticalSpace(50.h)
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
