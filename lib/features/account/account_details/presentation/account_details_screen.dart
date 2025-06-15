import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  final TextEditingController _serviceController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  List<String> _services = [];

  File? _selectedImage;
  bool _agreedToTerms = false;

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => _selectedImage = File(picked.path));
    }
  }

  void _addService() {
    final text = _serviceController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _services.add(text);
        _serviceController.clear();
      });
    }
  }

  @override
  void dispose() {
    _serviceController.dispose();
    _aboutController.dispose();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(20.h),
                const CommonBackButton(),
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
                  'Step 2: Professional Details',
                  style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
                    color: AppColors.c00121A,
                  ),
                ),
                UIHelper.verticalSpace(20.h),

                // Profile Photo
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 70.r,
                      backgroundColor: AppColors.cF8F8F8,
                      backgroundImage: _selectedImage != null
                          ? FileImage(_selectedImage!)
                          : null,
                      child: _selectedImage == null
                          ? const Icon(Icons.add,
                              size: 32, color: AppColors.c666666)
                          : null,
                    ),
                  ),
                ),
                UIHelper.verticalSpace(10.h),
                Center(
                  child: Text(
                    'Add Photo',
                    style: TextFontStyle.textStylec14c313131ManropeW600,
                  ),
                ),
                UIHelper.verticalSpace(20.h),

                // Service Input
                CommonTextFormField(
                  label: 'Your Services',
                  hintText: 'Ask me anything and I will help you!',
                  controller: _serviceController,
                  onFieldSubmitted: (_) => _addService(),
                ),
                UIHelper.verticalSpace(8.h),

                // Add More Service Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: _addService,
                    icon: const Icon(Icons.add,
                        size: 20, color: AppColors.c666666),
                    label: Text(
                      'Add more service',
                      style: TextFontStyle.textStylec14c7D7D7DManropeW500,
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 14.h, horizontal: 16.w),
                      side:
                          const BorderSide(color: Color(0xFFDADADA), width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ),
                UIHelper.verticalSpace(10.h),

                // Display Services as Chips
                Wrap(
                  spacing: 8,
                  children: _services
                      .map(
                        (service) => Chip(
                          label: Text(service),
                          deleteIcon: const Icon(Icons.close),
                          onDeleted: () {
                            setState(() => _services.remove(service));
                          },
                        ),
                      )
                      .toList(),
                ),

                UIHelper.verticalSpace(16.h),

                // About Me
                CommonTextFormField(
                  label: 'About Me',
                  hintText:
                      'Share your skills, experience, or what makes you unique (max 300 characters).',
                  maxLines: 5,
                  controller: _aboutController,
                ),
                UIHelper.verticalSpace(16.h),

                // Terms and Privacy Policy
                Row(
                  children: [
                    Checkbox(
                      value: _agreedToTerms,
                      activeColor: AppColors.cA5A5A5,
                      side: const BorderSide(
                        color: AppColors.cA5A5A5,
                        width: 1.5,
                      ),
                      onChanged: (val) {
                        setState(() => _agreedToTerms = val ?? false);
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextFontStyle.textStylec14c808080ManropeW500,
                          children: [
                            const TextSpan(text: 'I agree to the '),
                            TextSpan(
                              text: 'Terms',
                              style: TextFontStyle
                                  .textStylec12c3B82F6ManropeW500
                                  .copyWith(),
                            ),
                            const TextSpan(text: ' & '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextFontStyle
                                  .textStylec12c3B82F6ManropeW500
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(40.h),

                // Create Account Button
                CommonButton(
                    text: 'Create Account',
                    onPressed: () {
                      NavigationService.navigateTo(Routes.emailVerifyScreen);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
