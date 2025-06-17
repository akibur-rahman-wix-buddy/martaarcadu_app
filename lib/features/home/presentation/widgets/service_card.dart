import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/home/presentation/model/service_item.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ServiceCard extends StatelessWidget {
  final ServiceItem service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final days = service.timeLeft.inDays;
    final hours = service.timeLeft.inHours % 24;
    final minutes = service.timeLeft.inMinutes % 60;

    return GestureDetector(
      onTap: () {
        NavigationService.navigateTo(Routes.requestDetailsScreen);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: const Color(0xFFF0F0F0)),
          boxShadow: [
            BoxShadow(
              color: const Color(0x1A000000),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.cF6F6F6,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Image.asset(
                    Assets.icons.homeScreenCleaningIcon.path,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                UIHelper.horizontalSpace(8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service.title,
                        style: TextFontStyle.textStylec14c3D3D3DManropeW600,
                      ),
                      UIHelper.verticalSpace(2.h),
                      Text(
                        service.category,
                        style: TextFontStyle.textStylec12c3B82F6ManropeW500
                            .copyWith(
                          color: AppColors.c888888,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 23.h,
                  width: 55.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: AppColors.cDCFCE7,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Text(
                    service.status,
                    style: TextFontStyle.textStylec10c15803DManropeW600,
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(16.h),

            /// Responses & Budget Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${service.responses} Seller response",
                  style: TextFontStyle.textStylec12c393939ManropeW500.copyWith(
                    color: AppColors.c4897FF,
                  ),
                ),
                Text(
                  "Budget: \$${service.budget.toStringAsFixed(0)}",
                  style: TextFontStyle.textStylec14c3D3D3DManropeW600,
                ),
              ],
            ),

            UIHelper.verticalSpace(16.h),

            /// Time Left Label
            Text(
              "Time left to close",
              style: TextFontStyle.textStylec14c3D3D3DManropeW600.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            UIHelper.verticalSpace(8.h),

            /// Time Display
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTimeUnit("${days.toString().padLeft(2, '0')}", "Days"),
                Container(
                  height: 20.h,
                  width: 1,
                  color: AppColors.c9D9D9D,
                ),
                _buildTimeUnit("${hours.toString().padLeft(2, '0')}", "Hours"),
                Container(
                  height: 20.h,
                  width: 1,
                  color: AppColors.c9D9D9D,
                ),
                _buildTimeUnit(
                    "${minutes.toString().padLeft(2, '0')}", "Minutes"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeUnit(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: AppColors.c292D32,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            color: AppColors.c888888,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
