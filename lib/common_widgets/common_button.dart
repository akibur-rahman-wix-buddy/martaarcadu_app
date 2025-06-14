import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsetsGeometry padding;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.c3B82F6, // Default button color
    this.textColor = AppColors.cFFFFFF, // Default text color
    this.padding = const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.allPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
          padding: padding,
        ),
        child: Text(text,
            style: TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
              color: AppColors.cFFFFFF,
            )),
      ),
    );
  }
}
