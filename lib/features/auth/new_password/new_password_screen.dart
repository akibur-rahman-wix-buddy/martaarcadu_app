import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  bool _obscurePassword = true;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(20.h),
                IconButton(
                  icon: Image.asset(
                    Assets.icons.arrowBackIcon2.path,
                    height: 20.h,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                UIHelper.verticalSpace(32.h),
                Text(
                  'New Password',
                  style:
                      TextFontStyle.textStylec24c00121AManropeW600.copyWith(),
                ),
                UIHelper.verticalSpace(4.h),
                Text(
                  'Create a new password to continue your journey with (Appname)',
                  style:
                      TextFontStyle.textStylec14c808080ManropeW500.copyWith(),
                ),
                UIHelper.verticalSpace(40.h),
                CommonTextFormField(
                  label: 'Password',
                  hintText: '*************',
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.c808080,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                ),
                UIHelper.verticalSpace(16.h),
                CommonTextFormField(
                  label: 'Confirm Password',
                  hintText: '*************',
                  controller: _confirmpasswordController,
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.c808080,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                ),
                UIHelper.verticalSpace(40.h),
                CommonButton(
                  text: 'Continue',
                  onPressed: () {
                    NavigationService.navigateTo(Routes.loginScreen);
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
