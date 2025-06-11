
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../constants/text_font_style.dart';

// class CustomTextFormField extends StatefulWidget {
//   final TextInputType? keybordType;
//   final double? height;
//   final double? width; // Default keyboard type
//   final String? hintText;
//   final Color? hintTextColor;
//   final Color? textColor;
//   final Color? fillcolor;
//   final TextEditingController controller;
//   final Widget? suffixWidget;
//   final bool isSufixIcon;
//   final bool isEnabled;
//   final bool isObsecure;
//   final int maxLines;
//   final Color? borderColor;
//   final BorderRadius? radius;
//   final String? Function(String?)? validator;
//   final String? Function(String?)? onChanged;
//   final AutovalidateMode? autovalidateMode;

//   const CustomTextFormField({
//     required this.controller,
//     this.height,
//     this.width,
//     required this.hintText,
//     this.hintTextColor,
//     this.suffixWidget,
//     this.isSufixIcon = false,
//     this.isEnabled = true,
//     this.isObsecure = false,
//     this.validator,
//     this.radius,
//     this.borderColor,
//     this.maxLines = 1,
//     this.fillcolor, // Validator parameter
//     this.keybordType,
//     super.key,
//     this.textColor,
//     this.onChanged,
//     this.autovalidateMode,
//   });

//   @override
//   State<CustomTextFormField> createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   bool _obscureText = false; // Co
//   bool hasError = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints(minHeight: 48.h),
//       // height: widget.height ?? 50.h,
//       width: widget.width ?? double.infinity,
//       child: TextFormField(
//         onChanged: (value) {
//           // widget.onChanged!(value);
//           final error = widget.validator!(value);
//           if (error == null) {
//             setState(() => hasError = false);
//           } else {
//             setState(() => hasError = true);
//           }
//           return;
//         },
//         textAlignVertical: TextAlignVertical.center,

//         keyboardType: widget.keybordType,
//         style: TextFontStyle.textStylec12c757575InterW400.copyWith(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w500,
//             color: widget.textColor ??
//                 (hasError ? Colors.red : AppColors.c000000)),
//         readOnly: !widget.isEnabled,
//         autovalidateMode:
//             widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
//         // maxLines: widget.maxLines,
//         maxLines: widget.maxLines,
//         controller: widget.controller,
//         obscureText: widget.isObsecure
//             ? _obscureText
//             : false, // Toggle password visibility
//         validator: widget.validator, // Apply validator
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(
//               vertical: ((widget.height ?? 50.h) - 20.sp) / 2,
//               horizontal: 16.w),
//           // labelText: label,
//           labelStyle: const TextStyle(color: Colors.white70),

//           errorStyle:
//               const TextStyle(color: Colors.redAccent, fontSize: 12, height: 1),
//           fillColor: widget.fillcolor ?? AppColors.cF5F5F5,
//           filled: true,
//           // contentPadding: EdgeInsets.all(20.sp),
//           hintText: _obscureText ? "xxxxxxx" : widget.hintText,
//           hintStyle: TextFontStyle.textStylec16cBDBDBDInterW400.copyWith(
//             color: widget.hintTextColor ?? AppColors.c838383,
//           ),
//           suffixIcon:
//               widget.isObsecure // Show eye icon if it's a password field
//                   ? IconButton(
//                       icon: Icon(
//                         _obscureText
//                             ? Icons.visibility_off_outlined
//                             : Icons.visibility_outlined,
//                         color: const Color.fromARGB(255, 137, 136, 136),
//                         // size: 22.sp,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscureText = !_obscureText;
//                         });
//                       },
//                     )
//                   : (widget.isSufixIcon ? widget.suffixWidget : null),
//           border: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(32.r)),
//             borderSide: BorderSide(
//                 color: widget.borderColor ??
//                     const Color.fromARGB(105, 141, 141, 144),
//                 width: 1.w),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(32.r)),
//             borderSide: BorderSide(
//                 color: widget.borderColor ??
//                     const Color.fromARGB(105, 141, 141, 144),
//                 width: 1.w), // Replace with your custom color
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(32.r)),
//             borderSide: BorderSide(
//                 color: widget.borderColor ??
//                     const Color.fromARGB(105, 141, 141, 144),
//                 width: 1.w), // Replace with your custom color
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(12.r)),
//             borderSide: BorderSide(
//                 color: widget.borderColor ??
//                     const Color.fromARGB(105, 141, 141, 144),
//                 width: 1.w), // Replace with your custom color
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(12.r)),
//             borderSide: BorderSide(color: Colors.red, width: 1.w),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius:
//                 widget.radius ?? BorderRadius.all(Radius.circular(12.r)),
//             borderSide: BorderSide(color: Colors.red, width: 1.w),
//           ),
//         ),
//       ),
//     );
//   }
// }
// //home,account,order,favorite,search&
