// import 'package:analyticsdepart_app/constants/text_font_style.dart';
// import 'package:analyticsdepart_app/gen/assets.gen.dart';
// import 'package:analyticsdepart_app/gen/colors.gen.dart';
// import 'package:analyticsdepart_app/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// ValueNotifier<int> selectedIndex = ValueNotifier(2);

// class CustomDrawer extends StatefulWidget {
//   const CustomDrawer({super.key});

//   @override
//   State<CustomDrawer> createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: AppColors.allPrimaryColor,
//       child: DrawerHeader(
//           padding: EdgeInsets.only(left: 47.w, top: 52.h),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ///back Icon
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   height: 24.h,
//                   width: 24.w,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                           color: AppColors.allPrimaryColor, width: 1.w)),
//                   child: Image.asset(
//                     Assets.icons.backButtonIosIcon.path,
//                     height: 24.h,
//                     width: 24.w,
//                   ),
//                 ),
//               ),
//               UIHelper.verticalSpace(32.h),
//               //Profile Picture
//               Column(
//                 children: [
//                   Image.asset(
//                     Assets.images.myProfileScreenImage.path,
//                     height: 60.h,
//                     width: 60.w,
//                   ),
//                   UIHelper.verticalSpace(6.5.h),
//                   Text("John Doe",
//                       style: TextFontStyle.textStylec18c0072CEInterW700,
//                       overflow: TextOverflow.ellipsis)
//                 ],
//               ),

//               UIHelper.verticalSpace(40.h),

//               drawerOptions(Assets.icons.personIcon.path, "My Profile", () {
//                 // NavigationService.navigateTo(Routes.profileScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.personIcon.path, "Location", () {
//                 // NavigationService.navigateTo(Routes.locationScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.personIcon.path, "Payment", () {
//                 // NavigationService.navigateTo(Routes.paymentMethodScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.personIcon.path, "Bookings", () {
//                 // NavigationService.navigateTo(Routes.bookingsScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.personIcon.path, "Messanges", () {
//                 // NavigationService.navigateTo(Routes.messagesScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.helpProfileIcon.path, "Review", () {
//                 // NavigationService.navigateTo(Routes.reviewsScreen);
//               }),
//               UIHelper.verticalSpace(32.h),
//               drawerOptions(Assets.icons.logoutProfileIcon.path, "Logout", () {
//                 // CustomBottomSheets.logoutButtons(context);
//               })
//             ],
//           )),
//     );
//   }

//   Widget drawerOptions(
//     String icon,
//     String name,
//     VoidCallback? onTap, [
//     double height = 18,
//     double width = 18,
//   ]) {
//     return InkWell(
//       onTap: () {
//         Navigator.pop(context); // Close the drawer
//         if (onTap != null) {
//           onTap(); // Then run your custom action
//         }
//       },
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             icon,
//             height: height.h,
//             width: width.w,
//             color: AppColors.allPrimaryColor,
//           ),
//           UIHelper.horizontalSpace(14.w),
//           Text(
//             name,
//             style: TextFontStyle.textStylec16cBDBDBDInterW400,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget drawerOptions2(
//     String icon,
//     String name,
//     VoidCallback? onTap, [
//     double height = 18,
//     double width = 18,
//   ]) {
//     return Builder(
//       // use Builder to get context if this widget is not in a BuildContext directly
//       builder: (context) => InkWell(
//         onTap: () {
//           Navigator.pop(context); // Close the drawer
//           if (onTap != null) {
//             onTap(); // Then run your custom action
//           }
//         },
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               icon,
//               height: height.h,
//               width: width.w,
//               color: AppColors.allPrimaryColor,
//             ),
//             UIHelper.horizontalSpace(14.w),
//             Text(
//               name,
//               style: TextFontStyle.textStylec14c212121InterW400,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
