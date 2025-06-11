// import 'package:analyticsdepart_app/constants/text_font_style.dart';
// import 'package:analyticsdepart_app/gen/assets.gen.dart';
// import 'package:analyticsdepart_app/gen/colors.gen.dart';
// import 'package:analyticsdepart_app/helpers/navigation_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final TextStyle? titleStyle;
//   final List<Widget>? actions;
//   final Color? backgroundColor;
//   final Color? iconThemeColor;
//   final VoidCallback? onBackButtonPressed;
//   final Widget? leading;

//   @override
//   final Size preferredSize;

//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.actions,
//     this.titleStyle,
//     this.backgroundColor,
//     this.iconThemeColor,
//     this.onBackButtonPressed,
//     this.leading,
//   }) : preferredSize = const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: leading ??
//           InkWell(
//             onTap: () {
//               if (onBackButtonPressed != null) {
//                 onBackButtonPressed!();
//               } else {
//                 // Default behavior if no callback is provided
//                 if (NavigationService.goBack) {
//                   NavigationService.goBack;
//                 }
//               }
//             },
//             child: Padding(
//               padding: EdgeInsets.only(left: 16.sp),
//               child: CircleAvatar(
//                 backgroundColor: AppColors.cF5F5F5,
//                 radius: 32.r,
//                 child: Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 12.w),
//                     child: Icon(
//                       Icons.arrow_back_ios,
//                       color: AppColors.c000000,
//                       size: 24.sp,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//       centerTitle: true,
//       title: Text(
//         title ?? '',
//         style: titleStyle ?? TextFontStyle.textStylec14c202020Inter600,
//       ),
//       backgroundColor: backgroundColor ?? AppColors.cFFFFFF,
//       elevation: 0,
//       iconTheme: IconThemeData(
//         color: iconThemeColor ?? AppColors.cF5F5F5,
//       ),
//       actions: actions ?? <Widget>[],
//     );
//   }
// }
