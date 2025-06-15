import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';
import 'package:pinput/pinput.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
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
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(20.h),

                  /// Back Icon
                  CommonBackButton(),

                  UIHelper.verticalSpace(32.h),

                  /// Title
                  Text(
                    'OTP Verification',
                    style: TextFontStyle.textStylec24c00121AManropeW600,
                  ),

                  UIHelper.verticalSpace(8.h),

                  /// Subtitle
                  Text(
                    'To ensure the safety and reliability of our community, please enter the 4-digit OTP sent to md*@gmail.com**',
                    style: TextFontStyle.textStylec14c808080ManropeW500,
                  ),

                  UIHelper.verticalSpace(40.h),

                  /// OTP Field with Validation
                  FormField<String>(
                    validator: (value) {
                      if (_otpController.text.trim().length != 4) {
                        return 'Enter 4-digit OTP';
                      }
                      return null;
                    },
                    builder: (field) => Column(
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
                              field.didChange(value);
                            },
                          ),
                        ),
                        if (field.hasError)
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
                    ),
                  ),

                  UIHelper.verticalSpace(40.h),

                  /// Verify Button
                  CommonButton(
                    text: 'Verify',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final otp = _otpController.text;
                        NavigationService.navigateTo(Routes.newPasswordScreen);
                        print("OTP submitted: $otp");
                      }
                    },
                  ),
                  UIHelper.verticalSpace(341.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have a code?',
                        style: TextFontStyle.textStylec15c404040ManropeW500
                            .copyWith(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Resend Code',
                          style: TextFontStyle.textStylec15c3B82F6ManropeW500
                              .copyWith(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
