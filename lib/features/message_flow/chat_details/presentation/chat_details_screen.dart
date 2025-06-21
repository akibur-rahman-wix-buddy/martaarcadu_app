import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/message_flow/chat_details/presentation/model/message.dart';
import 'package:martaarcadu_app/features/message_flow/chat_details/presentation/widgets/chat_bubble.dart';
import 'package:martaarcadu_app/features/message_flow/chat_details/presentation/widgets/deal_info_card.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Message> messages = [
    Message(
      text:
          "Need a thorough house cleaning service for a 2-bedroom apartment. Must include deep cleaning of kitchen and ...",
      isMe: false,
      location: "2.5 km away • Brooklyn, NY",
    ),
    Message(
        text: "Hello, I want to 20 hours into needed. can you possible?",
        isMe: false),
    Message(
        text: "Yes it possible, you accept my offers and start work today.",
        isMe: true),
  ];

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;
    setState(() {
      messages.add(Message(text: text.trim(), isMe: true));
      _messageController.clear();
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
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
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage:
                  AssetImage(Assets.images.chatDetailsScreenImage.path),
            ),
            UIHelper.horizontalSpace(10.w),
            Text(
              'Rohit Kumar',
              style: TextFontStyle.textStylec18c1B1F3BManropeW600,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: messages.length,
              itemBuilder: (context, index) => ChatBubble(msg: messages[index]),
            ),
          ),
          DealInfoCard(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      // style: TextFontStyle.textStylec14c1B1F3BManropeW500,
                      decoration: InputDecoration(
                        hintText: "Type message here...",
                        hintStyle: TextFontStyle.textStylec12c393939ManropeW500
                            .copyWith(
                          color: AppColors.c6B7280,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        filled: true,
                        fillColor: AppColors.cF5F5F5,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.r),
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(10.w),
                  // ...existing code...
                  InkWell(
                    onTap: () => sendMessage(_messageController.text),
                    child: CircleAvatar(
                      backgroundColor: AppColors.allPrimaryColor,
                      child: Icon(Icons.send,
                          size: 16.sp, color: AppColors.cFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
