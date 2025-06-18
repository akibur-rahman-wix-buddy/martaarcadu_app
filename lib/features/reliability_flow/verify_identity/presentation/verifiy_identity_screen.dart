import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/constants/validator.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class VerifiyIdentityScreen extends StatefulWidget {
  const VerifiyIdentityScreen({super.key});

  @override
  _VerifiyIdentityScreenState createState() => _VerifiyIdentityScreenState();
}

class _VerifiyIdentityScreenState extends State<VerifiyIdentityScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _informationController = TextEditingController();
  String? filePath;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        filePath = result.files.single.path;
      });
      print("Selected file: ${result.files.single.name}");
    } else {
      print("No file selected.");
    }
  }

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
          'Verify Your Identity',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
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
                  UIHelper.verticalSpace(12.h),
                  Text(
                    'Please provide your personal information',
                    style:
                        TextFontStyle.textStylec14c808080ManropeW500.copyWith(),
                  ),
                  UIHelper.verticalSpace(20.h),

                  CommonTextFormField(
                    label: 'Full Name',
                    hintText: 'Enter your full name',
                    controller: _fullNameController,
                    validator: nameValidator,
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
                    label: 'National ID or Passport Number',
                    hintText: 'Enter your ID number',
                    controller: _phoneController,
                    validator: validatePhoneNumber,
                  ),
                  UIHelper.verticalSpace(16.h),
                  // Upload Document Section
                  Text(
                    'Upload ID Document',
                    style:
                        TextFontStyle.textStylec10c15803DManropeW600.copyWith(
                      color: AppColors.c12151A,
                      fontSize: 14.sp,
                    ),
                  ),
                  UIHelper.verticalSpace(12.h),

                  GestureDetector(
                    onTap: pickFile,
                    child: DottedBorder(
                      color: AppColors.cE0E0E0,
                      strokeWidth: 1,
                      dashPattern: [8, 4],
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8.r),
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.w,
                        vertical: 41.h,
                      ), // Padding inside the dotted border
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Upload icon from assets
                          Image.asset(
                            Assets.icons.uploadFileIcon.path,
                            height: 36.h,
                            width: 36.w,
                          ),
                          UIHelper.verticalSpace(12.h),
                          // Text for file upload instructions
                          Text(
                            'Tap to upload (PDF, JPG, PNG)',
                            style: TextFontStyle.textStylec14c808080ManropeW500
                                .copyWith(
                              color: AppColors.c9D9D9D,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(16.h),
                  // Display selected file path
                  if (filePath != null) ...[
                    Text("Selected file: $filePath"),
                    UIHelper.verticalSpace(8.h),
                  ],

                  CommonTextFormField(
                    label: 'Additional Notes (Optional)',
                    hintText: 'Add any additional information',
                    maxLines: 3,
                    controller: _informationController,
                    validator: informationValidator,
                  ),
                  UIHelper.verticalSpace(40.h),
                  // Submit Button
                  CommonButton(
                    text: 'Submit for Review',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        NavigationService.navigateTo(
                            Routes.indentityThankyouScreen);
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
