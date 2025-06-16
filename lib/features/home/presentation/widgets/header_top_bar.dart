import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class HeaderTopBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final int coinBalance;

  const HeaderTopBar({
    super.key,
    required this.scaffoldKey,
    required this.coinBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => scaffoldKey.currentState?.openDrawer(),
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                height: 36.h,
                width: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.cF4F4F4,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Image.asset(
                  Assets.icons.menuIcon.path,
                  height: 22.h,
                  width: 22.w,
                ),
              ),
            ),
            UIHelper.horizontalSpace(8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home!',
                  style: TextFontStyle.textStylec14c313131ManropeW600.copyWith(
                    color: AppColors.c00121A,
                  ),
                ),
                UIHelper.verticalSpace(2.h),
                Text('Request remaining: 80/120 coin',
                    style: TextFontStyle.textStylec10c979797ManropeW400),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                border: Border.all(color: AppColors.cF0F0F0),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.coainImage.path,
                    height: 16.h,
                    width: 16.w,
                  ),
                  UIHelper.horizontalSpace(4.w),
                  Text(
                    '$coinBalance Wizzy',
                    style:
                        TextFontStyle.textStylec14c4B5563ManropeW500.copyWith(
                      color: AppColors.c4689F7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.horizontalSpace(12.w),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  Assets.icons.notificationBellIcon.path,
                  height: 26.h,
                  width: 26.w,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF3B30), // vibrant red
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            Colors.white, // optional white border for clarity
                        width: 1.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
