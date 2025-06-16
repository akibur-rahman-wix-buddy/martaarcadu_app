import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: AppColors.c3B82F6,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Stack(
        children: [
          Positioned(
             top: 0,
            right: 0,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(Assets.icons.helpIcon.path,
              width: 80.w,
              height: 43.h,
              ),
              ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Need help?',
              style: TextFontStyle.textStylec24c00121AManropeW600.copyWith(
                color: AppColors.cFFFFFF,
                fontSize: 22.sp,
              ),
              ),
              UIHelper.verticalSpace(4.h),
              Text('Connect with seller by posting your service or product.',
              style: TextFontStyle.textStylec12c9D9D9DManropeW400.copyWith(
                color: AppColors.cFFFFFF,
                fontSize: 12.sp,
              ),
              ),
              UIHelper.verticalSpace(32.h),
              SizedBox(
                width: double.infinity,
                height: 44.h,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 14.sp, color: AppColors.c3B82F6),
                  label: Text(
                    'Post a Service',
                    style: TextFontStyle.textStylec12c3B82F6ManropeW500.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.cFFFFFF,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}
