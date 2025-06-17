import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/features/favorite_seller/presentation/model/seller.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class FavoriteSellerCard extends StatelessWidget {
  final Seller seller;

  const FavoriteSellerCard({super.key, required this.seller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.03*255).toInt()),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )
        ],
        border: Border.all(color: AppColors.cF4F4F4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(seller.image),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.c04B885,
                        border: Border.all(color: AppColors.cFFFFFF, width: 2),
                      ),
                    ),
                  )
                ],
              ),
              UIHelper.horizontalSpace(8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      seller.name,
                      style: TextFontStyle.textStylec16c292D32ManropeW600
                          .copyWith(color: AppColors.c000000),
                    ),
                    UIHelper.verticalSpace(2.h),
                    Row(
                      children: [
                        Text(
                          seller.rating.toString(),
                          style:
                              TextStyle(color: AppColors.c5B5B5B, fontSize: 13),
                        ),
                        UIHelper.horizontalSpace(8.w),
                        Row(
                          children: List.generate(5, (index) {
                            if (index < double.parse(seller.rating).floor()) {
                              return Icon(Icons.star,
                                  size: 13.sp, color: AppColors.cFCD503);
                            } else if (index ==
                                    double.parse(seller.rating).floor() &&
                                double.parse(seller.rating) % 1 != 0) {
                              return Icon(Icons.star_half,
                                  size: 13.sp, color: AppColors.c6A6A6A);
                            } else {
                              return Icon(Icons.star_border,
                                  size: 13.sp, color: AppColors.cFCD503);
                            }
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                Assets.icons.deleteIcon2.path,
                height: 16.h,
                width: 16.w,
              ),
            ],
          ),

          UIHelper.verticalSpace(20.h),

          Row(
            children: [
              Image.asset(
                Assets.icons.locationIcon.path,
                height: 13.h,
                width: 13.w,
              ),
              UIHelper.horizontalSpace(8.w),
              Expanded(
                child: Text(
                  seller.address,
                  style: TextFontStyle.textStylec14c3D3D3DManropeW600
                      .copyWith(color: AppColors.c3D3D3D),
                ),
              ),
            ],
          ),

          UIHelper.verticalSpace(8.h),

          Row(
            children: [
              Image.asset(
                Assets.icons.mapIcon.path,
                height: 13.h,
                width: 13.w,
              ),
              UIHelper.horizontalSpace(8.w),
              Text(
                seller.distance,
                style: TextFontStyle.textStylec14c3D3D3DManropeW600
                    .copyWith(color: AppColors.c3D3D3D),
              ),
            ],
          ),

          UIHelper.verticalSpace(20.h),

          // Tags
          Wrap(
            spacing: 10,
            children: seller.tags.map((tag) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.cEFF7FF,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(tag,
                    style: TextFontStyle.textStylec12c393939ManropeW500
                        .copyWith(color: AppColors.c4897FF)),
              );
            }).toList(),
          ),

          UIHelper.verticalSpace(20.h),
          CommonButton(
            text: 'Start Message',
            onPressed: () {},
            trailingIcon: Image.asset(
              Assets.icons.messageIcon.path,
              height: 13.h,
              width: 13.w,
            ),
          )
        ],
      ),
    );
  }
}
