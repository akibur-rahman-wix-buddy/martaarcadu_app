import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          color: AppColors.cF4F4F4,
          borderRadius: BorderRadius.circular(10.r),
          shape: BoxShape.rectangle,
        ),
        child: Icon(icon, size: 16.sp, color: AppColors.c191919),
      ),
    );
  }
}
