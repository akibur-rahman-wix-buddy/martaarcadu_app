import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/home/presentation/model/product_item.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ProductCard extends StatelessWidget {
  final ProductItem product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        border: Border.all(color: AppColors.cF4F4F4),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row: Image + Title/Info + Badge/Price
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: Image.asset(
                  product.imageUrl,
                  width: 72.w,
                  height: 72.w,
                  fit: BoxFit.cover,
                ),
              ),
              UIHelper.horizontalSpace(12.w),

              /// Middle Section (Title + Response)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextFontStyle.textStylec14c3D3D3DManropeW600,
                    ),
                    UIHelper.verticalSpace(6.h),

                    /// Seller Response
                    Text(
                      '12 Seller response',
                      style: TextFontStyle.textStylec12c393939ManropeW500
                          .copyWith(color: AppColors.c4897FF),
                    ),
                  ],
                ),
              ),

              /// Right Section (Badge + Price)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  /// Active Badge
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.cDCFCE7,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Text(
                      product.status,
                      style: TextFontStyle.textStylec10c15803DManropeW600,
                    ),
                  ),
                  UIHelper.verticalSpace(24.h),

                  /// Price
                  Text(
                    'Price:\$${product.price}',
                    style: TextFontStyle.textStylec14c3D3D3DManropeW600,
                  ),
                ],
              ),
            ],
          ),

          UIHelper.verticalSpace(14.h),

          /// Bottom Text
          Text(
            'Time left to close',
            style: TextFontStyle.textStylec14c3D3D3DManropeW600.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.c3D3D3D,
            ),
          ),
        ],
      ),
    );
  }
}
