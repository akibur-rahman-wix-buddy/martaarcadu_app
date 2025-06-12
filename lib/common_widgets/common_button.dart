// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../constants/text_font_style.dart';
// import '../gen/colors.gen.dart';

// // ignore: must_be_immutable
// class CommonButton extends StatelessWidget {
//   final String? text;
//   final TextStyle? textStyle;
//   final VoidCallback? onPressed;
//   final Color? color;
//   final Color? borderColorCustom;
//   final EdgeInsetsGeometry? padding;
//   Widget? customChild;
//   final double? height;
//   final double? width;
//   final double? minWidth;
//   final double? borderRadius;
//   final bool obscureText;
//   final BorderRadius? customBorderRadius;
//   final bool? isBackgroundColorActive;
//   final EdgeInsetsGeometry? margin;

//   CommonButton({
//     super.key,
//     this.text = '',
//     this.textStyle,
//     this.color,
//     this.customChild,
//     this.onPressed,
//     this.borderColorCustom,
//     this.height,
//     this.width,
//     this.minWidth,
//     this.borderRadius,
//     this.obscureText = false,
//     this.padding,
//     this.customBorderRadius,
//     this.isBackgroundColorActive = true,
//     this.margin,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         margin: margin ?? const EdgeInsets.all(0),
//         padding: padding ?? EdgeInsets.all(10.sp),
//         width: width ?? double.infinity,
//         height: height ?? 55.h,
//         decoration: BoxDecoration(
//           color: color ??
//               (isBackgroundColorActive!
//                   ? AppColors.allPrimaryColor
//                   : AppColors.cFFFFFF),
//           border: Border.all(
//             width: 1.sp,
//             color: borderColorCustom ?? AppColors.allPrimaryColor,
//           ),
//           borderRadius:
//               customBorderRadius ?? BorderRadius.circular(borderRadius ?? 32.r),
//         ),
//         alignment: Alignment.center,
//         child: customChild ??
//             Text(
//               text!,
//               style: textStyle ??
//                   TextFontStyle.textStylec16cFFFFFFInterW600.copyWith(
//                     color: isBackgroundColorActive!
//                         ? AppColors.cFFFFFF
//                         : AppColors.allPrimaryColor,
//                   ),
//             ),
//       ),
//     );
//   }
// }
