import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/constants/validator.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _rememberMe = false;
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
                  CommonBackButton(),
                  UIHelper.verticalSpace(32.h),
                  Text(
                    'Login Account',
                    style: TextFontStyle.textStylec24c00121AManropeW600,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    'Your gateway to trusted services and real-time requests.',
                    style: TextFontStyle.textStylec14c808080ManropeW500,
                  ),
                  UIHelper.verticalSpace(40.47.h),
                  CommonTextFormField(
                    label: 'Email Address',
                    hintText: 'Enter your email',
                    controller: _emailController,
                    validator: emailValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Password',
                    hintText: '*************',
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    validator: passwordValidator,
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
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        activeColor: AppColors.cA5A5A5,
                        side: const BorderSide(
                          color: AppColors.cA5A5A5,
                          width: 1.5,
                        ),
                        onChanged: (val) {
                          setState(() {
                            _rememberMe = val!;
                          });
                        },
                      ),
                      Text(
                        'Remember me',
                        style: TextFontStyle.textStylec14c808080ManropeW500,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(40.h),
                  CommonButton(
                    text: 'Login',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        NavigationService.navigateTo(Routes.homeScreen);
                        debugPrint("Email: ${_emailController.text}");
                        debugPrint("Password: ${_passwordController.text}");
                      }
                    },
                  ),
                  UIHelper.verticalSpace(12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forget your password?',
                        style: TextFontStyle.textStylec14c141414ManropeW500
                            .copyWith(),
                      ),
                      GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.forgotPasswordScreen);
                        },
                        child: Text('Reset It',
                            style: TextFontStyle.textStylec14cFF6B2EManropeW500
                                .copyWith()),
                      )
                    ],
                  ),
                  UIHelper.verticalSpace(183.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextFontStyle.textStylec15c404040ManropeW500
                            .copyWith(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Create Account',
                          style: TextFontStyle.textStylec15c3B82F6ManropeW500
                              .copyWith(),
                        ),
                      ),
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
