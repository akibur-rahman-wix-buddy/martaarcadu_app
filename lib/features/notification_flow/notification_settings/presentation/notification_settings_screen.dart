import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_drop_down_flied.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/notification_flow/notification_settings/presentation/widgets/notification_toogle_tittle.dart';
import 'package:martaarcadu_app/features/notification_flow/notification_settings/presentation/widgets/rounded_icon_button.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool pushEnabled = true;
  bool emailEnabled = false;
  int maxNotifications = 2;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController serviceController = TextEditingController();
  String? selectedCategory;

  String selectedTime = 'Anytime';
  final List<String> timeOptions = [
    'Morning',
    'Afternoon',
    'Evening',
    'Anytime'
  ];

  @override
  void dispose() {
    serviceController.dispose();
    super.dispose();
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
          'Notification Settings',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Push Notification Toggle
                  NotificationToggleTile(
                    icon: Icons.notifications,
                    label: 'Push Notifications',
                    value: pushEnabled,
                    onChanged: (val) => setState(() => pushEnabled = val),
                  ),
                  UIHelper.verticalSpace(12.h),
                  Divider(thickness: 1, height: 1, color: AppColors.cF4F4F4),
                  UIHelper.verticalSpace(16.h),

                  /// Email Notification Toggle
                  NotificationToggleTile(
                    icon: Icons.email,
                    label: 'Email Notifications',
                    value: emailEnabled,
                    onChanged: (val) => setState(() => emailEnabled = val),
                  ),
                  UIHelper.verticalSpace(24.h),

                  /// Instructional Text
                  Text(
                    'Choose what requests you want to be notified about',
                    style:
                        TextFontStyle.textStylec12c393939ManropeW500.copyWith(
                      color: AppColors.c808080,
                    ),
                  ),
                  UIHelper.verticalSpace(20.h),

                  /// Dropdown for Service Categories
                  CommonDropDownFlied(
                    label: 'Service categories',
                    hint: 'Select service categories',
                    controller: serviceController,
                    items: ['Cleaning', 'Repair', 'Plumbing'],
                    onChanged: (val) => setState(() => selectedCategory = val),
                  ),
                  UIHelper.verticalSpace(24.h),

                  /// Preferred Time Section
                  Text(
                    'Preferred Time for Notifications',
                    style: TextFontStyle.textStylec14c313131ManropeW600,
                  ),
                  UIHelper.verticalSpace(12.h),

                  /// Time Options as Selectable Buttons
                  Wrap(
                    spacing: 10.w,
                    runSpacing: 10.h,
                    children: timeOptions.map((time) {
                      final selected = time == selectedTime;
                      return GestureDetector(
                        onTap: () => setState(() => selectedTime = time),
                        child: Container(
                          height: 44.h,
                          width: 162.5.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.allPrimaryColor
                                : AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: selected
                                  ? AppColors.allPrimaryColor
                                  : AppColors.c868686,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              time,
                              style: TextFontStyle
                                  .textStylec14c868686ManropeW500
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                color: selected
                                    ? AppColors.cFFFFFF
                                    : AppColors.c868686,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  UIHelper.verticalSpace(20.h),

                  /// Maximum Notification
                  Text(
                    'Maximum Notification per Day',
                    style:
                        TextFontStyle.textStylec14c313131ManropeW600.copyWith(),
                  ),
                  UIHelper.verticalSpace(10.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.cFFFFFF,
                      border: Border.all(color: AppColors.cF4F4F4),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        RoundIconButton(
                          icon: Icons.remove,
                          onTap: () {
                            if (maxNotifications > 1) {
                              setState(() => maxNotifications--);
                            }
                          },
                        ),
                        Spacer(),
                        Text(
                          '$maxNotifications notification',
                          style: TextFontStyle.textStylec14c313131ManropeW600
                              .copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        RoundIconButton(
                          icon: Icons.add,
                          onTap: () => setState(() => maxNotifications++),
                        ),
                      ],
                    ),
                  ),
                  UIHelper.verticalSpace(98.h),
                  CommonButton(text: 'Save Preferences', onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
