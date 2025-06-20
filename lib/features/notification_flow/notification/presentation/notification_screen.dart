import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifications = [
      {
        'title': 'Lorem ipsum',
        'subtitle': 'Lorem ipsum dolor sit',
        'time': '11:28 AM',
        'unread': true,
      },
      {
        'title': 'Lorem ipsum',
        'subtitle': 'Lorem ipsum dolor sit',
        'time': '08:40 AM',
        'unread': true,
      },
      {
        'title': 'Lorem ipsum dolor',
        'subtitle': 'Lorem ipsum dolor sit',
        'time': '07:34 AM',
        'unread': true,
      },
      {
        'title': 'Lorem ipsum',
        'subtitle': 'Lorem ipsum dolor sit amet consectetur.',
        'time': '10:08 PM',
        'unread': false,
      },
      {
        'title': 'Lorem ipsum dolor sit',
        'subtitle': 'Lorem ipsum dolor sit amet',
        'time': '09:32 PM',
        'unread': false,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              NavigationService.navigateTo(Routes.notificationSettingsScreen);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 16.w), // Optional: adds spacing
              child: Image.asset(
                Assets.icons.seetingIcon.path,
                height: 18.h,
                width: 18.w,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: UIHelper.kDefaulutPadding(),
        ),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Recent',
                      style:
                          TextFontStyle.textStylec14c141414ManropeW500.copyWith(
                        color: AppColors.c262626,
                      ),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: CircleAvatar(
                        radius: 33.r,
                        backgroundColor: AppColors.c4897FF,
                        child: Text('3',
                            style: TextFontStyle.textStylec10c16A34AManropeW500
                                .copyWith(
                              color: AppColors.cFFFFFF,
                            )),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Clear All',
                  style:
                      TextFontStyle.textStylec14cD90000ManropeW500.copyWith(),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Expanded(
              child: ListView.separated(
                itemCount: notifications.length,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (context, index) {
                  final item = notifications[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          border: Border.all(color: AppColors.cDBDBDB),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Icon(Icons.notifications,
                            color: AppColors.c4897FF, size: 34.sp),
                      ),
                      UIHelper.horizontalSpace(13.28.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['title'],
                                style: TextFontStyle
                                    .textStylec13C12151AAManropeW500
                                    .copyWith()),
                            UIHelper.verticalSpace(4.h),
                            Text(
                              item['subtitle'],
                              style: TextFontStyle
                                  .textStylec10c4A4A4AManropeW500
                                  .copyWith(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(item['time'],
                              style: TextFontStyle
                                  .textStylec10c262626ManropeW500
                                  .copyWith()),
                          UIHelper.verticalSpace(11.h),
                          if (item['unread'])
                            Container(
                              width: 8.r,
                              height: 8.r,
                              decoration: BoxDecoration(
                                color: AppColors.allPrimaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
