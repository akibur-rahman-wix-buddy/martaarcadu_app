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

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    _addressController.dispose();
    _countryController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
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
                    'Create Account',
                    style: TextFontStyle.textStylec24c00121AManropeW600,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    'Start offering your services to the right buyers.',
                    style: TextFontStyle.textStylec14c808080ManropeW500,
                  ),
                  UIHelper.verticalSpace(20.h),
                  Text(
                    'Step 1: Basic Info',
                    style: TextFontStyle.textStylec18c1B1F3BManropeW600
                        .copyWith(color: AppColors.c00121A),
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Full Name',
                    hintText: 'Enter your full name',
                    controller: _fullNameController,
                    validator: nameValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'User Name',
                    hintText: 'Enter your user name',
                    controller: _userNameController,
                    validator: nameValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Email Address',
                    hintText: 'Enter your email',
                    controller: _emailController,
                    validator: emailValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Phone Number (Optional)',
                    hintText: 'Enter your number',
                    controller: _phoneController,
                    validator: validatePhoneNumber,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Date of Birth',
                    hintText: 'DD/MM/YYYY',
                    controller: _dobController,
                    validator: requiredValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Address',
                    hintText: 'Enter your address',
                    controller: _addressController,
                    validator: requiredValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Country',
                    hintText: 'England',
                    controller: _countryController,
                    validator: requiredValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'City',
                    hintText: 'Enter your city',
                    controller: _cityController,
                    validator: requiredValidator,
                  ),
                  UIHelper.verticalSpace(16.h),
                  CommonTextFormField(
                    label: 'Zip Code',
                    hintText: 'Enter your zip code',
                    controller: _zipController,
                    validator: requiredValidator,
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
                  CommonTextFormField(
                    label: 'Confirm Password',
                    hintText: '*************',
                    controller: _confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.c808080,
                      ),
                      onPressed: () {
                        setState(() =>
                            _obscureConfirmPassword = !_obscureConfirmPassword);
                      },
                    ),
                  ),
                  UIHelper.verticalSpace(40.h),
                  CommonButton(
                    text: 'Next',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        NavigationService.navigateTo(
                            Routes.accountDetailsScreen);
                      }
                    },
                  ),
                  UIHelper.verticalSpace(40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style: TextFontStyle.textStylec15c404040ManropeW500,
                      ),
                      GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(Routes.loginScreen);
                        },
                        child: Text(
                          ' Login',
                          style: TextFontStyle.textStylec15c3B82F6ManropeW500,
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
