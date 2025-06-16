import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/request_sucess/presentation/widgets/info_row.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class RequestSuccessfullyScreen extends StatelessWidget {
  const RequestSuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.verticalSpace(26.h),

                /// ✅ Double Circle Checkmark
                Center(
                  child: Container(
                    height: 130.h,
                    width: 130.w,
                    decoration: const BoxDecoration(
                      color: AppColors.cF0FDF4,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        height: 66.h,
                        width: 66.w,
                        decoration: const BoxDecoration(
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
                ),

                UIHelper.verticalSpace(20.h),

                /// Title
                Text(
                  'Request Posted Successfully!',
                  style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
                    color: AppColors.c000000,
                  ),
                ),

                UIHelper.verticalSpace(12.h),

                /// Subtitle
                Text(
                  'Your request is now live. Sellers will start responding soon.',
                  style: TextFontStyle.textStylec14cC7C7C7ManropeW400.copyWith(
                    color: AppColors.c000000,
                  ),
                  textAlign: TextAlign.center,
                ),

                UIHelper.verticalSpace(24.h),

                /// Summary Info Box
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    border: Border.all(color: AppColors.cF4F4F4),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: UIHelper.kDefaulutPadding(),
                    vertical: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Professional House Cleaning service',
                        style: TextFontStyle.textStylec16c292D32ManropeW600
                            .copyWith(
                          color: AppColors.c000000,
                        ),
                      ),
                      UIHelper.verticalSpace(10.h),
                      InfoRow(label: 'Category', value: 'House Cleaning'),
                      InfoRow(label: 'Budget', value: '\$500'),
                      InfoRow(
                          label: 'Response Time',
                          value: '30 Days, 2 Hours, 3 Minutes'),
                      InfoRow(
                          label: 'Location',
                          value: '123 Main Street, New York'),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    border: Border.all(color: AppColors.cF4F4F4),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: UIHelper.kDefaulutPadding(),
                    vertical: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextFontStyle.textStylec14c868686ManropeW500
                            .copyWith(),
                      ),
                      UIHelper.verticalSpace(6.h),
                      Text(
                        'Need a thorough house cleaning service for a 2-bedroom apartment. '
                        'Must include deep cleaning of kitchen and bathrooms. All cleaning supplies should be provided by the service provider.',
                        style: TextFontStyle.textStylec12c393939ManropeW500
                            .copyWith(
                          color: AppColors.c1F1F1F,
                        ),
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(36.h),
                CommonButton(
                  text: 'Go to Home',
                  onPressed: () {},
                ),
                UIHelper.verticalSpace(16.h),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Post Another Request',
                    style:
                        TextFontStyle.textStylec14c313131ManropeW600.copyWith(
                      color: AppColors.c4897FF,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                UIHelper.verticalSpace(16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
