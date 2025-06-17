import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class SellerCard extends StatelessWidget {
  final String name;
  final String location;
  final String distance;
  final double rating;
  final List<String> tags;
  final String imagePath;

  const SellerCard({
    super.key,
    required this.name,
    required this.location,
    required this.distance,
    required this.rating,
    required this.tags,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(30)),
                child: Stack(
                  children: [
                    Image.asset(
                      imagePath,
                      width: double.infinity,
                      height: 560.h,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 560.h,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.w,
                      bottom: 100.h,
                      right: 20.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextFontStyle.textStylec24c212121ManropeW700
                                .copyWith(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          UIHelper.verticalSpace(10.h),
                          _buildInfoRow(
                            Image.asset(Assets.icons.locationIcon.path,
                                width: 15.w, height: 15.w),
                            location,
                          ),
                          UIHelper.verticalSpace(8.h),
                          _buildInfoRow(
                            Image.asset(
                                Assets.icons.responseSellerScreenMapIcon.path,
                                width: 15.w,
                                height: 15.w),
                            distance,
                          ),
                          UIHelper.verticalSpace(8.h),
                          _buildRatingStars(rating),
                          UIHelper.verticalSpace(15.h),
                          Wrap(
                            spacing: 8,
                            children:
                                tags.map((tag) => _buildTagChip(tag)).toList(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              UIHelper.verticalSpace(60.h),
            ],
          ),

          // Bottom heart button
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.cFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                padding: EdgeInsets.all(16.sp),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.c2181FF,
                  size: 28.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(Widget icon, String text) {
    return Row(
      children: [
        icon,
        UIHelper.horizontalSpace(6.w),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14.sp),
        ),
      ],
    );
  }

  Widget _buildRatingStars(double rating) {
    return Row(
      children: [
        ...List.generate(5, (index) {
          final starIndex = index + 1;
          return Icon(
            starIndex <= rating.floor()
                ? Icons.star
                : (starIndex - rating < 1
                    ? Icons.star_half
                    : Icons.star_border),
            size: 15.sp,
            color: AppColors.cFCD503,
          );
        }),
        const SizedBox(width: 5),
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildTagChip(String tag) {
    return Chip(
      label: Text(tag),
      backgroundColor: AppColors.cEFF7FF,
      labelStyle: const TextStyle(color: AppColors.c4897FF),
    );
  }
}
