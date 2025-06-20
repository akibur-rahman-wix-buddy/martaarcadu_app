import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class NotificationToggleTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const NotificationToggleTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: AppColors.c4B5563),
            UIHelper.horizontalSpace(10.w),
            Text(label, style: TextFontStyle.textStylec14c4B5563ManropeW500),
          ],
        ),
        Container(
          height: 24.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.cE5E7EB,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Switch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.allPrimaryColor,
            inactiveTrackColor: AppColors.cE5E7EB,
          ),
        ),
      ],
    );
  }
}
