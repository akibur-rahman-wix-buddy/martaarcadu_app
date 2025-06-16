import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class PostRequestScreen extends StatelessWidget {
  const PostRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text(
          'Post a Request',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c00121A,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(20.h),

                /// What you need
                const CommonTextFormField(
                  label: 'What you need',
                  hintText: 'Enter your need',
                ),
                UIHelper.verticalSpace(14.h),

                /// Description
                const CommonTextFormField(
                  label: 'Description',
                  hintText: 'Describe what you need...',
                  maxLines: 4,
                ),
                UIHelper.verticalSpace(14.h),

                /// Budget with Dollar Icon
                CommonTextFormField(
                  label: 'Your Budget',
                  hintText: 'Enter your ideal price (e.g., 20)',
                  keyboardType: TextInputType.number,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Image.asset(
                      Assets.icons.dollarIcon.path,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ),
                UIHelper.verticalSpace(14.h),

                /// Response Time Label
                Text(
                  'Response Time',
                  style:
                      TextFontStyle.textStylec14c313131ManropeW600.copyWith(),
                ),
                UIHelper.verticalSpace(8.h),

                /// Response Time Fields (Days, Hours, Minutes)
                Row(
                  children: [
                    Expanded(
                      child: const CommonTextFormField(
                        label: '',
                        hintText: '1 Days',
                      ),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    Expanded(
                      child: const CommonTextFormField(
                        label: '',
                        hintText: '1 Hours',
                      ),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    Expanded(
                      child: const CommonTextFormField(
                        label: '',
                        hintText: '1 Minutes',
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(32.h),

                /// Location with Icon
                CommonTextFormField(
                  label: 'Your Location',
                  hintText: 'Enter your location',
                  readOnly: true,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Image.asset(
                      Assets.icons.locationIcon.path,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  onTap: () {},
                ),
                UIHelper.verticalSpace(16.5.h),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(Icons.my_location,
                          size: 16.sp, color: AppColors.c4897FF),
                      UIHelper.horizontalSpace(4.w),
                      Text('Use Current Location',
                          style: TextFontStyle.textStylec12c393939ManropeW500
                              .copyWith(
                            color: AppColors.c4897FF,
                          )),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3.54.r),
                  child: Image.asset(
                    Assets.images.postRequestScreenImage.path,
                    height: 120.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                UIHelper.verticalSpace(40.h),
                CommonButton(
                  text: 'Publish Request',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
