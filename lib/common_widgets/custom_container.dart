import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color color;
  final double? borderRadius;
  final Widget? child;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final BoxConstraints? constraints;
  final BorderRadius? customBorderRadius;

  const CustomContainer({
    super.key,
    this.padding = const EdgeInsets.all(16),
    this.color = const Color(0xFFE8E8E8),
    this.borderRadius,
    this.child,
    this.boxShadow,
    this.border,
    this.height,
    this.width = double.infinity,
    this.alignment = Alignment.topLeft,
    this.margin,
    this.constraints,
    this.customBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      padding: padding,
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        borderRadius:
            customBorderRadius ?? BorderRadius.circular(borderRadius ?? 8.r),
        color: color,
        border: border,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
