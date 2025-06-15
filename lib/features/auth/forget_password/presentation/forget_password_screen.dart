import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/constants/validator.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            child: Form(
              key: _formKey,
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
                    'Forget Password',
                    style:
                        TextFontStyle.textStylec24c00121AManropeW600.copyWith(),
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    'Enter your email to reset your password and get back to making change',
                    style:
                        TextFontStyle.textStylec14c808080ManropeW500.copyWith(),
                  ),
                  UIHelper.verticalSpace(40.h),
                  CommonTextFormField(
                    label: 'Email Address',
                    hintText: 'Enter your email',
                    controller: _emailController,
                    validator: emailValidator,
                  ),
                  UIHelper.verticalSpace(40.h),
                  CommonButton(
                    text: 'Continue',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Proceed with login
                        debugPrint("Email: ${_emailController.text}");
                        NavigationService.navigateTo(Routes.otpVerifyScreen);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
