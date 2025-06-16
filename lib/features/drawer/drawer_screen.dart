import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Column(
            children: [
              UIHelper.verticalSpace(38.h),

              /// Profile Row
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: UIHelper.kDefaulutPadding(),
                  vertical: 12.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Profile Image
                    CircleAvatar(
                      radius: 28.r,
                      backgroundImage: AssetImage(
                        Assets.images.drawerProfileImage.path,
                      ),
                    ),

                    UIHelper.horizontalSpace(12.w),

                    /// Name & Email
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Martaarcadu',
                            style: TextFontStyle.textStylec20c4897FFManropeW500
                                .copyWith(
                              color: AppColors.c323434,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          UIHelper.verticalSpace(4.h),
                          Text(
                            'abdsdfius@gmail.com',
                            style: TextFontStyle.textStylec12c3B82F6ManropeW500
                                .copyWith(
                              color: AppColors.c323434,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Edit Icon
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        Assets.icons.editIcon.path,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ],
                ),
              ),

              /// Divider
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: UIHelper.kDefaulutPadding(),
                ),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: AppColors.cEBEBEB,
                ),
              ),

              /// Menu Items
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 4.h),
                  children: [
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.drawerScreenReabilityIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Reliability',
                    ),
                    _buildDivider(),
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.drawerScreenServiceRequestIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Service Requests',
                    ),
                    _buildDivider(),
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.messageIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Message',
                    ),
                    _buildDivider(),
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.personIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Profile',
                    ),
                    _buildDivider(),
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.drawerScreenSettingIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Settings',
                    ),
                    _buildDivider(),
                    _buildDrawerItem(
                      Image.asset(
                        Assets.icons.drawerScreenLogoutIcon.path,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.cFFFFFF,
                      ),
                      'Log Out',
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// Close Icon
          Positioned(
            top: 16.h,
            right: 16.w,
            child: IconButton(
              icon: Icon(Icons.close, size: 24.sp, color: AppColors.c323434),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }

  /// Updated Drawer Item Builder — accepts Widget icon
  Widget _buildDrawerItem(Widget iconWidget, String title) {
    return ListTile(
      contentPadding:
          EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
      horizontalTitleGap: 12.w,
      leading: Container(
        padding: EdgeInsets.all(6.w),
        decoration: const BoxDecoration(
          color: AppColors.allPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: iconWidget,
      ),
      title: Text(
        title,
        style: TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
          color: AppColors.c323434,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        // TODO: Add navigation logic here
      },
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: UIHelper.kDefaulutPadding(),
        vertical: 4.h,
      ),
      child: Divider(
        height: 1,
        thickness: 1,
        color: AppColors.cEBEBEB,
      ),
    );
  }
}
