import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isOutlined;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final TextStyle? textStyle;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isOutlined = false,
    this.backgroundColor = AppColors.c3B82F6,
    this.textColor = AppColors.cFFFFFF,
    this.padding = const EdgeInsets.symmetric(vertical: 14),
    this.borderRadius = 6,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leadingIcon != null) ...[
          leadingIcon!,
          SizedBox(width: 8.w),
        ],
        Text(
          text,
          style: textStyle ??
              TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                color: textColor,
              ),
        ),
        if (trailingIcon != null) ...[
          UIHelper.horizontalSpace(10.w),
          trailingIcon!,
        ],
      ],
    );

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius.r),
    );

    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: isOutlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.cEFF7FF,
                foregroundColor: AppColors.c4897FF,
                shape: shape,
                padding: padding,
              ),
              child: child,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: shape,
                padding: padding,
              ),
              child: child,
            ),
    );
  }
}
