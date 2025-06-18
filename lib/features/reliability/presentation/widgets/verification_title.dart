import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class VerificationTitle extends StatelessWidget {
  final Widget icon; // Changed from IconData to Widget
  final String title;
  final String status;
  final String description;
  final Color statusColor;
  final Color statusBgColor;
  final Color coinTextColor;
  final Color coinBgColor;
  final Color? tileBgColor;
  final Color? iconBgColor;
  final String? coinText;

  const VerificationTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.status,
    required this.description,
    required this.statusColor,
    required this.statusBgColor,
    required this.coinTextColor,
    required this.coinBgColor,
    this.tileBgColor,
    this.iconBgColor,
    this.coinText = "+30 Wizzy Coin",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: tileBgColor ?? AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.cF3F4F6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon Circle
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              color: iconBgColor ?? AppColors.cF3F4F6,
              shape: BoxShape.circle,
            ),
            child: Center(child: icon), // Use the widget directly
          ),

          UIHelper.horizontalSpace(12.w),

          // Right Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title + Status
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextFontStyle.textStylec14c3D3D3DManropeW600.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: statusBgColor,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ],
                ),

                UIHelper.verticalSpace(6.h),

                // Description
                Text(
                  description,
                  style: TextFontStyle.textStylec12c393939ManropeW500.copyWith(
                    color: AppColors.c4B5563,
                    height: 1.4,
                  ),
                ),

                UIHelper.verticalSpace(10.h),

                // Coin Tag
                if (coinText != null)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: coinBgColor,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Text(
                      coinText!,
                      style: TextStyle(
                        color: coinTextColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}