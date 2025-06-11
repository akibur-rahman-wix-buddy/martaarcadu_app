import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../gen/colors.gen.dart';

class TextFontStyle {
  //Initialising Constractor
  TextFontStyle._();

  static const String _fontFamilyInter = "Inter";
  static const List<String> _fontFamilyFallback = [
    _fontFamilyInter, // Primary font
    'DMSans',
    'Poppins',
    'Roboto',
    'Noto Sans', // Common system fallback
  ];
  static final TextStyle textStylec12c838383InterW400 = TextStyle(
    fontFamily:
        _fontFamilyInter, // Or "Inter" directly if _fontFamilyInter is defined as "Inter"
    fontFamilyFallback: _fontFamilyFallback, // Your defined fallback list
    color: AppColors.c838383, // Assuming AppColors.c838383 is defined
    fontSize: 12.sp,
    fontWeight: FontWeight.w400, // Regular
  );
  static final TextStyle textStylec24c202020InterW600 = TextStyle(
    fontFamily:
        _fontFamilyInter, // Or "Inter" directly if _fontFamilyInter is defined as "Inter"
    fontFamilyFallback: _fontFamilyFallback, // Your defined fallback list
    color: AppColors.c202020, // Assuming AppColors.c202020 is defined
    fontSize: 24.sp,
    fontWeight: FontWeight.w600, // SemiBold
  );
  // --- Styles for Text on Colored Backgrounds (e.g., Buttons, Headers) ---
  static final TextStyle textStylec16cFFFFFFInterW600 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600, // SemiBold
  ); // Common for button text

  static final TextStyle textStylec20cFFFFFFInterW700 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFFFFFF,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700, // Bold
  ); // For main screen titles (e.g., "Login Screen" on green bg)

  static final TextStyle textStylec14cFFFFFFInterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFFFFFF,
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Smaller text on colored bg (e.g., splash screen subtitle)
  static final TextStyle textStylec16c55ae5bInterW500 = TextStyle(
    // Corrected 'w' to 'W' for consistency
    fontFamily:
        _fontFamilyInter, // Or "Inter" directly if _fontFamilyInter is defined as "Inter"
    fontFamilyFallback: _fontFamilyFallback, // Your defined fallback list
    color: AppColors.c55AE5B, // Assuming AppColors.c55ae5b is defined
    fontSize: 16.sp,
    fontWeight: FontWeight.w500, // Medium
  );

  // --- Styles for Dark Text (Primary content) ---
  static final TextStyle textStylec24c212121InterW700 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700, // Bold
  ); // Large headings (e.g., "Good To See You!")

  static final TextStyle textStylec18c212121InterW600 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600, // SemiBold
  ); // Medium headings (e.g., Product Name on details, FAQ Question)

  static final TextStyle textStylec16c212121InterW500 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500, // Medium
  ); // Standard body text, input field text

  static final TextStyle textStylec14c212121InterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // General smaller body text, labels

  // --- Styles for Grey Text (Secondary content, hints) ---
  static final TextStyle textStylec14c757575InterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c757575,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Subtitles, descriptions, FAQ Answer

  static final TextStyle textStylec12c757575InterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c757575,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Smallest grey text (e.g., "Remember me", chat timestamps)

  static final TextStyle textStylec16cBDBDBDInterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cBDBDBD,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Placeholder text in input fields

  // --- Styles for Accent Colors (Green, Blue links etc.) ---
  static final TextStyle textStylec16c69B360InterW600 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c69B360,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600, // SemiBold
  ); // Prices, "See all" links, active nav text

  static final TextStyle textStylec14c69B360InterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c69B360,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Smaller green links or text

  static final TextStyle textStylec14c007AFFInterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c007AFF,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // "Forgot Password?" link

  static final TextStyle textStylec18c0072CEInterW700 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c0072CE, // Dexcom Blue
    fontSize: 18.sp,
    fontWeight: FontWeight.w700, // Bold
  ); // "DEXCOM" text on Home Screen

  // --- Specific Use Cases (e.g., Testimonial numbers on yellow bg) ---
  static final TextStyle textStylec22c212121InterW700 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121, // Dark text
    fontSize: 22.sp, // Larger for impact
    fontWeight: FontWeight.w700, // Bold
  ); // For numbers like "25,000+" on yellow bg in "Why Choose Us" (original had "OnYellow" suffix)

  // --- Splash Screen Specific ---
  static final TextStyle textStylec22cFFFFFFInterW700 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.cFFFFFF,
    fontSize: 22.sp,
    fontWeight: FontWeight.w700, // Bold
  ); // "Get Your Groceries" on splash (original had "Splash" suffix)

  static final TextStyle textStylec16c69B360InterW500 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c69B360,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500, // Medium
  ); // "Skip" / "Next" on splash (original had "SplashNav" suffix)

  // --- Chat Bubble Text ---
  static final TextStyle textStylec15c212121InterW400 = TextStyle(
    fontFamily: _fontFamilyInter,
    fontFamilyFallback: _fontFamilyFallback,
    color: AppColors.c212121,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400, // Regular
  ); // Text inside chat bubbles (original had "Chat" suffix)

  //Splash & Onboarding Screens
  static final textStylec30c071731Poppins600 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: Color(0xff071731),
    fontSize: 31.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec14c8C8994Poppins400 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    color: Color(0xff8C8994),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final textStylec16cFB6514Poppins500 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.c3A1222,
    color: Color(0xffFB6514),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec26c071731Poppins600 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.cFFFFFF,
    color: Color(0xff071731),
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec16c8C8994Poppins400 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.cF1F1F1,
    color: Color(0xff8C8994),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static final textStylec16cFFFFFFPoppins500 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.cD9D9D9,
    color: Color(0xffFFFFFF),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec16c13B82F6oppins500 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.c606060,
    color: Color(0xff3B82F6),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec12c8C8994oppins500 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.c606060,
    color: Color(0xff8C8994),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec16c333333oppins500 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.c606060,
    color: Color(0xff333333),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec24c333333Poppins600 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans',
    ],
    // color: AppColors.cFFFFFF,
    color: Color(0xff333333),
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static final headlinec24c202020Inter600 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c202020,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec12c838383Inter400 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c838383,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final textStylec16c55AE5BInter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c55AE5B,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final headlinec32c202020Inter600 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c202020,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec14c565656Inter400 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c565656,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final textStylec16cFFFFFFInter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec16c838383Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c838383,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec12c838383Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c838383,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec10c838383Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c838383,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec10c55AE5BInter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c55AE5B,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final headlinec18cFFFFFFInter600 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.cFFFFFF,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final headlinec18c202020Inter600 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c202020,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec14c202020Inter600 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c202020,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStylec14c838383Inter400 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c838383,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final textStylec14c55AE5BInter400 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const ['DMSans', 'Open Sans', 'Roboto', 'Noto Sans'],
    color: AppColors.c55AE5B,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final headlinec18c838383Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.c838383,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec14c838383Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.c838383,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final headlinec23c202020Inter700 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.c202020,
    fontSize: 23.sp,
    fontWeight: FontWeight.w700,
  );

  static final headlinec23cFFFFFFInter700 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.cFFFFFF,
    fontSize: 23.sp,
    fontWeight: FontWeight.w700,
  );

  static final headlinec18cFF5630Inter500 = TextStyle(
    fontFamily: "Inter",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.cFF5630,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStylec14c218D6EPoppins400 = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'DMSans',
      'Poppins',
      'Inter',
      'Roboto',
      'Noto Sans'
    ],
    color: AppColors.c218D6E,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static var textStylec16c34A853Lato400;
}