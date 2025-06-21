import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/message_flow/chat_details/presentation/widgets/review_bottom_sheet.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class DealInfoCard extends StatelessWidget {
  DealInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Professional Cleaning Service...",
                      style:
                          TextFontStyle.textStylec14c141414ManropeW500.copyWith(
                        color: AppColors.c3D3D3D,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size(50, 20),
                        alignment: Alignment.centerLeft,
                      ),
                      onPressed: () {
                        NavigationService.navigateTo(
                            Routes.requestDetailsScreen);
                      },
                      child: Text(
                        "See post",
                        style: TextFontStyle.textStylec14c141414ManropeW500
                            .copyWith(
                          color: AppColors.c4897FF,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "\$500",
                style: TextFontStyle.textStylec14c141414ManropeW500.copyWith(
                  color: AppColors.c4897FF,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(10.h),
          CommonButton(
            text: 'Close Deal',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                builder: (_) => const ReviewBottomSheet(),
              );
            },
          ),
          UIHelper.verticalSpace(16.h),
          Divider(thickness: 1, height: 1, color: AppColors.cF4F4F4),
        ],
      ),
    );
  }
}
