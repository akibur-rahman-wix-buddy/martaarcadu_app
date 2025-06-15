import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class CommonTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final bool isPassword;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final int? maxLines;
  final int? maxLength;

  const CommonTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.isPassword = false,
    this.controller,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextFontStyle.textStylec14c313131ManropeW600),
        UIHelper.verticalSpace(8.h),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textAlign: TextAlign.left,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: obscureText ? 1 : maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextFontStyle.textStylec14c868686ManropeW500,
            contentPadding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 16.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: AppColors.cE4E4E4),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: AppColors.cE4E4E4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: AppColors.cE4E4E4),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
