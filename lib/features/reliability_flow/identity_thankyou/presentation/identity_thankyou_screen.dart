import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';

class IdentityThankyouScreen extends StatelessWidget {
  const IdentityThankyouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
              Container(
                height: 130.h,
                width: 130.w,
                decoration: BoxDecoration(
                  color: AppColors.cF0FDF4, 
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    height: 66.h,
                    width: 66.w,
                    decoration: BoxDecoration(
                      color: AppColors.c34C759, 
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 32,
                      color: AppColors.cFFFFFF, 
                    ),
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h), 
           
              Text(
                'Thank you!',
                style: TextFontStyle.textStylec20c4897FFManropeW600.copyWith(
                  color: AppColors.c000000,
                  fontSize: 24.sp,
                ),
              ),
              UIHelper.verticalSpace(
                  12.h), 
             
              Text(
                'Your identity details have been submitted. Our team will review them shortly. You\'ll be notified once verified.',
                textAlign: TextAlign.center, 
                style: TextFontStyle.textStylec14c141414ManropeW500.copyWith(
                  color: AppColors.c323232,
                  fontSize: 14.sp, 
                  height: 1.5, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
