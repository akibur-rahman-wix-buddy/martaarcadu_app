import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/request_sucess/presentation/widgets/info_row.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class RequestDetailsScreen extends StatelessWidget {
  const RequestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          )
        ],
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
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: UIHelper.kDefaulutPadding(),
                  vertical: 12.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  border: Border.all(
                    color: AppColors.cF4F4F4,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Professional House Cleaning Service',
                            style: TextFontStyle.textStylec16c292D32ManropeW600
                                .copyWith(color: AppColors.c2F2F2F),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: AppColors.cDCFCE7,
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: Text(
                            'Active',
                            style: TextFontStyle.textStylec12c393939ManropeW500
                                .copyWith(color: AppColors.c15803D),
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(16.h),
                    Row(
                      children: [
                        Expanded(
                          child: _buildLabelValue(
                            label: "Category",
                            value: "House Cleaning",
                          ),
                        ),
                        Expanded(
                          child: _buildLabelValue(
                            label: "Budget",
                            value: "\$500",
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(16.h),
                    Row(
                      children: [
                        Expanded(
                          child: _buildLabelValue(
                            label: "Response Time",
                            value: "12 min, 2 hr, 0 day",
                          ),
                        ),
                        Expanded(
                          child: _buildLabelValue(
                            label: "Location",
                            value: "123 Main Street, New Y..",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(12.h),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: UIHelper.kDefaulutPadding(), vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  border: Border.all(color: AppColors.cF4F4F4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextFontStyle.textStylec16c292D32ManropeW600
                          .copyWith(color: AppColors.c000000),
                    ),
                    UIHelper.verticalSpace(8.h),
                    Text(
                      'Need a thorough house cleaning service for a 2-bedroom apartment. Must include deep cleaning of kitchen and bathrooms. All cleaning supplies should be provided by the service provider.',
                      style: TextFontStyle.textStylec12c393939ManropeW500
                          .copyWith(color: AppColors.c4C4C4C),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Row(
                children: [
                  Expanded(
                    child: CommonButton(
                      text: 'Seller response',
                      leadingIcon: Image.asset(
                        Assets.icons.productDetailsScreenSellerIcon.path,
                        height: 13.h,
                        width: 13.w,
                      ),
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.sellerResponseScreen);
                      },
                    ),
                  ),
                  UIHelper.horizontalSpace(16.w),
                  Expanded(
                    child: CommonButton(
                      backgroundColor: AppColors.cEFF7FF,
                      text: 'Favorite Seller',
                      textStyle: TextFontStyle.textStylec14c4B5563ManropeW500
                          .copyWith(color: AppColors.c4897FF),
                      leadingIcon: Image.asset(
                        Assets.icons.productDetailsScreenFavoriteIcon.path,
                        height: 13.h,
                        width: 13.w,
                      ),
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.favoriteSellerScreen);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabelValue({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
