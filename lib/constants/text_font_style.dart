import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/colors.gen.dart';

class TextFontStyle {
  // Initialising Constructor
  TextFontStyle._();

  static const String _fontFamilyInter = "Inter";
  static const String _fontFamilyManrope = "Manrope";
  static const List<String> _fontFamilyFallback = [
    _fontFamilyInter,
    _fontFamilyManrope,
    'DMSans',
    'Poppins',
    'Roboto',
    'Noto Sans',
  ];

  static final TextStyle textStylec24c212121ManropeW700 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle textStylec14c808080ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c808080,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
   static final TextStyle textStylec14c4B5563ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c4B5563,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static final TextStyle textStylec18cFFFFFFManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFFFFFF,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.35,
  );
  static final TextStyle textStylec18c1B1F3BManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c1B1F3B,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.35,
  );

  static final TextStyle textStylec24c00121AManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c00121A,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static final TextStyle textStylec14c313131ManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c313131,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static final TextStyle textStylec12cA5A5A5ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cA5A5A5,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.64,
  );
  static final TextStyle textStylec12c3B82F6ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c3B82F6,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.64,
  );

  static final TextStyle textStylec14c141414ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c141414,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );
   static final TextStyle textStylec10c262626ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c262626,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );
  static final TextStyle textStylec10c4A4A4AManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c4A4A4A,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );
  static final TextStyle textStylec12c6B7280ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c6B7280,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );
  static final TextStyle textStylec13c12151AManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c12151A,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );
  static final TextStyle textStylec14cD90000ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cD90000,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );

  static final TextStyle textStylec14cFF6B2EManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFF6B2E,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.429,
  );

  static final TextStyle textStylec15c404040ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c404040,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static final TextStyle textStylec15c3B82F6ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c3B82F6,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );
   static final TextStyle textStylec14c7D7D7DManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c7D7D7D,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static final TextStyle textStylec10c979797ManropeW400 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c979797,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
  static final TextStyle textStylec12c9D9D9DManropeW400 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c9D9D9D,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
  static final TextStyle textStylec14cC7C7C7ManropeW400 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cC7C7C7,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
  static final TextStyle textStylec14cE4E4E4ManropeW400 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cE4E4E4,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static final TextStyle textStylec14c3D3D3DManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c3D3D3D,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );
 

  static final TextStyle textStylec10c15803DManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c15803D,
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static final TextStyle textStylec20c4897FFManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c4897FF,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static final TextStyle textStylec10c6B7280ManropeW700 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c6B7280,
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  static final TextStyle textStylec13C12151AAManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c12151A,
    fontSize: 13.3.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle textStylec10c16A34AManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c16A34A,
    fontSize: 10.3.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle textStylec16c292D32ManropeW600 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c292D32,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );


  static final TextStyle textStylec16c636363ManropeW400 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c636363,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

 

  static final TextStyle textStylec12c5D5D5DManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c5D5D5D,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
   static final TextStyle textStylec14c868686ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c868686,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
  static final TextStyle textStylec12c393939ManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c393939,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
  static final TextStyle textStylec20c4897FFManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c4897FF,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );
  static final TextStyle textStylec20c9D9D9DManropeW500 = TextStyle(
    fontFamily: _fontFamilyManrope,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c9D9D9D,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
} 
