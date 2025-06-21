import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/message_flow/chat_details/presentation/model/message.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ChatBubble extends StatelessWidget {
  final Message msg;

  const ChatBubble({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(
      radius: 16,
      backgroundImage: AssetImage(Assets.images.chatDetailsScreenImage.path),
    );

    final bubbleColor = msg.isMe ? AppColors.cEEEEEE : AppColors.cEFF7FF;

    final messageContent = Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            msg.text,
            style: TextFontStyle
                .textStylec12c5D5D5DManropeW500, // Adjust to match dark/light backgrounds
          ),
          if (!msg.isMe && msg.location != null) ...[
            UIHelper.verticalSpace(22.h),
            Row(
              children: [
                Icon(Icons.location_on, size: 13.sp, color: AppColors.c5D5D5D),
                UIHelper.horizontalSpace(6.w),
                Flexible(
                  child: Text(
                    msg.location!,
                    style: TextFontStyle.textStylec12c5D5D5DManropeW500,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment:
            msg.isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: msg.isMe
            ? [avatar, const SizedBox(width: 8), messageContent]
            : [messageContent, const SizedBox(width: 8), avatar],
      ),
    );
  }
}
