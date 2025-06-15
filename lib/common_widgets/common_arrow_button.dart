import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';

class CommonBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CommonBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        Assets.icons.arrowBackIcon2.path,
        height: 20.h,
      ),
      onPressed: onTap ?? () => Navigator.pop(context),
    );
  }
}
