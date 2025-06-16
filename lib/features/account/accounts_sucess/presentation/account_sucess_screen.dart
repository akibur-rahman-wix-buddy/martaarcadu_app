import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class AccountSuccessScreen extends StatelessWidget {
  const AccountSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: UIHelper.kDefaulutPadding(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Success Icon with Confetti
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      Assets.images.sucessfullyCreateAccountScreenImage.path,
                      height: 221.h,
                      width: 338.w,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                UIHelper.verticalSpace(32.h),

                // Title
                Text('Congratulations!',
                    style: TextFontStyle.textStylec24c00121AManropeW600
                        .copyWith()),
                UIHelper.verticalSpace(6.h),

                // Subtitle
                Text(
                  'You have successfully created your\naccount to this App',
                  textAlign: TextAlign.center,
                  style: TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                    color: AppColors.c808080,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                UIHelper.verticalSpace(60.h),

                // Go to Home Button
                CommonButton(
                  text: 'Go to Home',
                  onPressed: () {
                    NavigationService.navigateTo(Routes.homeScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
