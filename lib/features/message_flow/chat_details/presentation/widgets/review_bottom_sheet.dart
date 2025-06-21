import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_button.dart';
import 'package:martaarcadu_app/common_widgets/common_textform_field.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedRating = 0; // <-- Declare outside the builder

    return Padding(
      padding: EdgeInsets.fromLTRB(
        16.w,
        24.h,
        16.w,
        MediaQuery.of(context).viewInsets.bottom + 24.h,
      ),
      child: StatefulBuilder(
        builder: (context, setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Rate Your Experience",
                  style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
                    color: AppColors.c000000,
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),

              // Interactive Stars
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    final isSelected = index < selectedRating;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedRating = index + 1;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Image.asset(
                          Assets.icons.starIcon.path,
                          height: 40.h,
                          width: 37.5.w,
                          color: isSelected
                              ? AppColors.cFFC21A
                              : AppColors.cD9D9D9,
                        ),
                      ),
                    );
                  }),
                ),
              ),

              UIHelper.verticalSpace(32.h),

              CommonTextFormField(
                label: '',
                hintText: 'Write your review...',
                maxLines: 6,
              ),

              UIHelper.verticalSpace(24.h),

              CommonButton(
                text: 'Submit Review',
                onPressed: () {
                  if (selectedRating == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a rating')),
                    );
                  } else {
                    Navigator.pop(context);
                    // You can save rating and review here
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
