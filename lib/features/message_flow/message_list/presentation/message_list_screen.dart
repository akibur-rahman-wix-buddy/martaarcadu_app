import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/message_flow/message_list/presentation/model/message_model.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class MessageListScreen extends StatelessWidget {
  MessageListScreen({super.key});

  final List<MessageModel> messages = [
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: true,
      image: Assets.images.messageScreenImage.path,
    ),
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: true,
      image: Assets.images.messageScreenImage.path,
    ),
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: false,
      image: Assets.images.messageScreenImage.path,
    ),
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: true,
      image: Assets.images.messageScreenImage.path,
    ),
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: false,
      image: Assets.images.messageScreenImage.path,
    ),
    MessageModel(
      name: "Rohit Kumar",
      message: "Lorem ipsum dolor sit amet, con",
      time: "09:58 AM",
      isOnline: true,
      image: Assets.images.messageScreenImage.path,
    ),
  ];

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
          'Message',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: UIHelper.kDefaulutPadding(),
                vertical: 10.h,
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.cECECEC),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.c979797),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 8.w),
                    child: Icon(Icons.search, color: AppColors.c979797),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 32.w, minHeight: 32.h),
                  hintText: "Search..",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.c979797,
                  ),
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
              ),
            ),
            Divider(thickness: 1, height: 1, color: AppColors.cF4F4F4),
            UIHelper.verticalSpace(16.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: UIHelper.kDefaulutPadding(),
                ),
                child: ListView.separated(
                  itemCount: messages.length,
                  separatorBuilder: (_, __) => SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(message.image),
                            radius: 26,
                          ),
                          Positioned(
                            bottom: 2,
                            right: 2,
                            child: Container(
                              width: 12.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                color: message.isOnline
                                    ? AppColors.c04B885
                                    : AppColors.cF94039,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.cFFFFFF, width: 1.5),
                              ),
                            ),
                          )
                        ],
                      ),
                      title: Text(message.name,
                          style: TextFontStyle.textStylec14c313131ManropeW600
                              .copyWith(
                            color: AppColors.c262626,
                          )),
                      subtitle: Text(message.message,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.textStylec12c3B82F6ManropeW500
                              .copyWith(
                            color: AppColors.c262626,
                          )),
                      trailing: Text(
                        message.time,
                        style: TextFontStyle.textStylec12c393939ManropeW500
                            .copyWith(color: AppColors.c262626),
                      ),
                      onTap: () {
                        NavigationService.navigateTo(Routes.chatDetailsScreen);
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
