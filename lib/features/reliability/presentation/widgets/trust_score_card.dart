import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class TrustScoreCard extends StatelessWidget {
  const TrustScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
      decoration: BoxDecoration(
        color: AppColors.c4897FF, // Match blue background
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // White circle with percentage
              Container(
                width: 60.w,
                height: 60.w,
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '50%',
                  style: TextFontStyle.textStylec14c313131ManropeW600.copyWith(
                    color: AppColors.c4897FF,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              UIHelper.horizontalSpace(12.w),
              // Trust Score and description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trust Score',
                      style:
                          TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                    ),
                    UIHelper.verticalSpace(4.h),
                    Text(
                      '2 of 4 Completed',
                      style:
                          TextFontStyle.textStylec14cE4E4E4ManropeW400.copyWith(
                        color: AppColors.cFFFFFF.withAlpha((0.8 * 255).toInt()),
                      ),
                    ),
                  ],
                ),
              ),
              // Coin count
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '60',
                    style:
                        TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    'Wizzy Coin',
                    style:
                        TextFontStyle.textStylec14cE4E4E4ManropeW400.copyWith(
                      color: AppColors.cFFFFFF.withAlpha((0.8 * 255).toInt()),
                    ),
                  ),
                ],
              ),
            ],
          ),
          UIHelper.verticalSpace(16.h),
          Row(
            children: [
              // Yellow star circle
              Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '⭐',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
              UIHelper.horizontalSpace(8.w),
              Expanded(
                child: Text(
                  'Complete All Verification to Earn 120 Wizzy Coins.',
                  style: TextFontStyle.textStylec12c9D9D9DManropeW400.copyWith(
                    color: AppColors.cFFFFFF,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
