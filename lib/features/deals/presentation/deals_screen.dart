import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class DealsScreen extends StatefulWidget {
  const DealsScreen({super.key});
  @override
  _DealsScreenState createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  final List<String> tabs = ['All', 'Active', 'Close'];
  String selectedTab = 'All';
  final List<Map<String, dynamic>> allDeals = List.generate(6, (index) {
    return {
      'title': 'Moving Help Required',
      'category': 'Cleaning',
      'status': index < 2 ? 'Active' : 'Close',
      'timeAgo': '2 days ago',
      'responses': '12 Seller response',
      'budget': '\$500',
    };
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredDeals = selectedTab == 'All'
        ? allDeals
        : allDeals.where((deal) => deal['status'] == selectedTab).toList();

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text(
          'Deals',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                child: Row(
                  children: tabs.map((tab) {
                    final isSelected = tab == selectedTab;
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () => setState(() => selectedTab = tab),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 6.w),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.c4897FF
                                : AppColors.cF4F4F4,
                            borderRadius: BorderRadius.circular(110.r),
                          ),
                          child: Text(
                            tab,
                            style: TextFontStyle.textStylec12c393939ManropeW500
                                .copyWith(
                              color: isSelected
                                  ? AppColors.cFFFFFF
                                  : AppColors.c000000,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              UIHelper.verticalSpace(14.h),
              Divider(thickness: 1, height: 1, color: AppColors.cF4F4F4),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
                  itemCount: filteredDeals.length,
                  itemBuilder: (context, index) {
                    final deal = filteredDeals[index];
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 12.h),
                      padding: EdgeInsets.all(12.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.cF4F4F4),
                        color: AppColors.cFFFFFF,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Icon
                              Container(
                                width: 36.w,
                                height: 36.w,
                                decoration: BoxDecoration(
                                  color: AppColors.cF6F6F6,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    Assets.icons.homeScreenCleaningIcon.path,
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                ),
                              ),
                              UIHelper.horizontalSpace(8.w),

                              // Title & Category
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      deal['title'],
                                      style: TextFontStyle
                                          .textStylec14c3D3D3DManropeW600
                                          .copyWith(),
                                    ),
                                    UIHelper.verticalSpace(2.h),
                                    Text(deal['category'],
                                        style: TextFontStyle
                                            .textStylec12c393939ManropeW500
                                            .copyWith(
                                                color: AppColors.c888888)),
                                  ],
                                ),
                              ),

                              // Status Badge
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: deal['status'] == 'Active'
                                      ? AppColors.cDCFCE7
                                      : AppColors.cF3F4F6,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: Text(deal['status'],
                                    style: TextFontStyle
                                        .textStylec10c15803DManropeW600
                                        .copyWith(
                                      color: deal['status'] == 'Active'
                                          ? AppColors.c15803D
                                          : AppColors.c6B7280,
                                    )),
                              ),
                            ],
                          ),

                          UIHelper.verticalSpace(12.5.h),

                          // Time ago and Budget
                          Row(
                            children: [
                              Text(deal['timeAgo'],
                                  style: TextFontStyle
                                      .textStylec10c16A34AManropeW500
                                      .copyWith(
                                          color: AppColors.c888888,
                                          fontSize: 12.sp)),
                              Spacer(),
                              Text(
                                'Budget: ${deal['budget']}',
                                style: TextFontStyle
                                    .textStylec14c313131ManropeW600
                                    .copyWith(color: AppColors.c050505),
                              ),
                            ],
                          ),

                          UIHelper.verticalSpace(6.5.h),

                          // Seller response
                          Text(
                            '${deal['responses']} ',
                            style: TextFontStyle.textStylec12c393939ManropeW500
                                .copyWith(
                              color: AppColors.c4897FF,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
