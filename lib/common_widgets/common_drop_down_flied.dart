import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class CommonDropDownFlied extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final List<String> items;
  final ValueChanged<String> onChanged;

  const CommonDropDownFlied({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.items,
    required this.onChanged,
  });

  @override
  State<CommonDropDownFlied> createState() => _CommonDropDownFliedState();
}

class _CommonDropDownFliedState extends State<CommonDropDownFlied> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue =
        widget.controller.text.isNotEmpty ? widget.controller.text : null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label.isNotEmpty)
            Text(
              widget.label,
              style: TextFontStyle.textStylec14c313131ManropeW600,
            ),
          UIHelper.verticalSpace(8.h),
          DropdownButtonFormField<String>(
            value: selectedValue,
            isExpanded: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.c868686)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.c868686)),
              hintText: widget.hint,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
            items: widget.items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => selectedValue = value);
                widget.controller.text = value;
                widget.onChanged(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
