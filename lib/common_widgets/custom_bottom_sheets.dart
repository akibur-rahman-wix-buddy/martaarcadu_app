// import 'package:analyticsdepart_app/constants/text_font_style.dart';
// import 'package:analyticsdepart_app/gen/colors.gen.dart';
// import 'package:analyticsdepart_app/helpers/all_routes.dart';
// import 'package:analyticsdepart_app/helpers/navigation_service.dart';
// import 'package:analyticsdepart_app/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomBottomSheets {
//   static Future logoutButtons(BuildContext context) {
//     return showModalBottomSheet(
//       // ignore: deprecated_member_use
//       barrierColor: AppColors.allPrimaryColor.withOpacity(0.75),
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
//                 style: TextFontStyle.textStylec20cFFFFFFInterW700,
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
//                   style: TextFontStyle.textStylec20cFFFFFFInterW700,
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
//                             TextFontStyle.textStylec14c007AFFInterW400.copyWith(
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                   UIHelper.horizontalSpace(12.w),
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () async {
//                         NavigationService.navigateToReplacement(
//                             Routes.homeScreen);
//                         //   await postLogOutRX.logOut()
//                         //     .waitingForFutureWithoutBg()
//                         //     .then((_) {
//                         //   NavigationService.navigateTo(Routes.logInScreen);
//                         //   appData.write(kKeyIsLoggedIn, false);
//                         // });
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
//                         style: TextFontStyle.textStylec14c007AFFInterW400,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               UIHelper.verticalSpace(100.h)
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
