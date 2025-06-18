import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/constants/validator.dart';  // Ensure this is imported
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class MobileNumberVerifyScreen extends StatelessWidget {
  MobileNumberVerifyScreen({super.key});
  
  // Define form key and controller
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text(
          'Mobile Number Verify',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c00121A,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Form(
            key: _formKey,  // Using form key for validation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(20.h),
                Text(
                  'Secure your profile and earn Wit Coins.',
                  style: TextFontStyle.textStylec14c808080ManropeW500.copyWith(),
                ),
                UIHelper.verticalSpace(20.h),
                // Phone number input field
                CommonTextFormField(
                  label: 'Mobile Number',
                  hintText: 'Enter your phone number',
                  controller: _phoneController,
                  validator: validatePhoneNumber,  // Phone number validation
                ),
                UIHelper.verticalSpace(40.h),
                // Submit button
                CommonButton(
                  text: 'Send Code',
                  onPressed: () {
                    // Only navigate if the form is valid
                    if (_formKey.currentState?.validate() ?? false) {
                      // Navigate to OTP verification screen
                      NavigationService.navigateTo(Routes.phoneNumberOtpVerityScreen);
                    }
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
