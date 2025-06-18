import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';
import 'package:pinput/pinput.dart';

class PhoneNumberOtpVerifyScreen extends StatefulWidget {
  const PhoneNumberOtpVerifyScreen({super.key});

  @override
  State<PhoneNumberOtpVerifyScreen> createState() =>
      _PhoneNumberOtpVerifyScreenState();
}

class _PhoneNumberOtpVerifyScreenState
    extends State<PhoneNumberOtpVerifyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 60.h,
      width: 60.w,
      textStyle: TextFontStyle.textStylec24c00121AManropeW600,
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.cDDDDDD),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.c3B82F6, width: 2),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(), // Custom back button
        centerTitle: true,
        title: Text(
          'OTP Verification', // Title in the AppBar
          style: TextFontStyle.textStylec24c00121AManropeW600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: UIHelper.kDefaulutPadding()), // Apply padding
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(20.h),

                  // Subtitle
                  Text(
                    'To ensure the safety and reliability of our community, please enter the 4-digit OTP sent to "+88018************98"',
                    style: TextFontStyle.textStylec14c808080ManropeW500,
                  ),

                  UIHelper.verticalSpace(40.h),

                  // OTP Input Field with FormField and Error Handling
                  FormField<String>(
                    validator: (value) {
                      if (value == null || value.length != 4) {
                        return 'Enter 4-digit OTP';
                      }
                      return null;
                    },
                    builder: (field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Pinput(
                              controller: _otpController,
                              length: 4,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              showCursor: true,
                              onChanged: (value) {
                                field
                                    .didChange(value); // Update the field value
                              },
                            ),
                          ),
                          if (field
                              .hasError) // Show error message if validation fails
                            Padding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: Text(
                                field.errorText ?? '',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),

                  UIHelper.verticalSpace(40.h),

                  // Verify Button
                  CommonButton(
                    text: 'Verify',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final otp = _otpController.text;
                        // Handle OTP verification logic here
                        print("OTP submitted: $otp");
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
