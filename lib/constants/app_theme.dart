import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';

import '../gen/colors.gen.dart'; // Assuming this is the correct path to your generated AppColors
 // Assuming this is the correct path to your TextFontStyle

class AppTheme {
  // The primary font family from your TextFontStyle class
  static const String _fontFamily = "Inter";

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.c69B360, // Main green from your app design
      scaffoldBackgroundColor:
          AppColors.cFFFFFF, // White background from app design
      fontFamily: _fontFamily, // Default font family for the theme

      colorScheme: const ColorScheme.light(
        primary: AppColors.c69B360, // Main green
        onPrimary: AppColors.cFFFFFF, // Text on primary (white)
        secondary: AppColors.cFBC02D, // Yellow accent from app design
        onSecondary: AppColors.c212121, // Text on yellow (dark)
        error: AppColors.cDC3545, // A red for errors (e.g., cDC3545)
        onError: AppColors.cFFFFFF, // Text on main background (dark)
        surface: AppColors.cFFFFFF, // Card backgrounds etc.
        onSurface: AppColors.c212121, // Text on surfaces (dark)
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.c69B360, // Green header
        elevation: 0,
        centerTitle: true,
        titleTextStyle:
            TextFontStyle.textStylec20cFFFFFFInterW700, // White, Bold, 20sp
        iconTheme: const IconThemeData(
          color: AppColors.cFFFFFF, // White icons on app bar
        ),
        actionsIconTheme: const IconThemeData(
          color: AppColors.cFFFFFF, // White action icons
        ),
      ),

      textTheme: TextTheme(
        // Display Styles - Using your Inter styles for general large text
        displayLarge:
            TextFontStyle.textStylec24c212121InterW700, // "Good To See You!"
        displayMedium: TextFontStyle
            .textStylec22c212121InterW700, // Slightly smaller large heading
        displaySmall: TextFontStyle.textStylec20cFFFFFFInterW700.copyWith(
            color: AppColors
                .c212121), // Example if a dark version of appbar title is needed

        // Headline Styles
        headlineLarge:
            TextFontStyle.textStylec22c212121InterW700, // Testimonial numbers
        headlineMedium: TextFontStyle
            .textStylec18c212121InterW600, // Section titles, "Welcome To", FAQ Questions
        headlineSmall: TextFontStyle
            .textStylec16c212121InterW500, // Sub-section titles or prominent body text

        // Title Styles
        titleLarge: TextFontStyle.textStylec18c0072CEInterW700, // "DEXCOM" text
        titleMedium: TextFontStyle
            .textStylec16c212121InterW500, // General input field text, standard body
        titleSmall: TextFontStyle
            .textStylec14c757575InterW400, // Smaller labels, descriptions

        // Body Styles
        bodyLarge:
            TextFontStyle.textStylec16c212121InterW500, // Primary body text
        bodyMedium: TextFontStyle
            .textStylec14c757575InterW400, // Secondary body text, FAQ answers
        bodySmall: TextFontStyle
            .textStylec12c757575InterW400, // Timestamps, tiny info text

        // Label Styles (for buttons, captions)
        labelLarge: TextFontStyle
            .textStylec16cFFFFFFInterW600, // Primary button text (White on Green)
        labelMedium: TextFontStyle.textStylec14c212121InterW400, // Other labels
        labelSmall:
            TextFontStyle.textStylec12c757575InterW400, // Smallest labels
      ).apply(
        // This ensures that if a specific style isn't overridden, it still gets the base family
        // However, your TextFontStyle already defines families, so this might be redundant
        // but good for safety.
        fontFamily: _fontFamily,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.c69B360, // Green button
          foregroundColor: AppColors.cFFFFFF, // White text
          textStyle:
              TextFontStyle.textStylec16cFFFFFFInterW600, // From your styles
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 24.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          elevation: 2,
          minimumSize: Size(double.infinity, 48.h),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.c69B360, // Green for text buttons/links
          textStyle:
              TextFontStyle.textStylec14c69B360InterW400, // Matches "See all"
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cF5F5F5, // Light grey input background
        hintStyle:
            TextFontStyle.textStylec16cBDBDBDInterW400, // Hint text style
        labelStyle: TextFontStyle.textStylec16c212121InterW500
            .copyWith(color: AppColors.c757575), // Floating label (medium grey)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide:
              BorderSide(color: AppColors.cE0E0E0, width: 1.w), // Border grey
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.cE0E0E0, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
              color: AppColors.c69B360, width: 1.5.w), // Focused green border
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide:
              BorderSide(color: AppColors.cDC3545, width: 1.w), // Error red
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.cDC3545, width: 1.5.w),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      ),

      cardTheme: CardThemeData(
        elevation: 1.0,
        color: AppColors.cFFFFFF, // White cards
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      ),

      dividerTheme: DividerThemeData(
        color: AppColors.cEEEEEE, // Light grey divider
        thickness: 1.h,
        space: 1.h,
      ),

      iconTheme: IconThemeData(
        size: 24.r,
        color: AppColors.c757575, // Default icon color (medium grey)
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.cFFFFFF, // White bottom nav
        selectedItemColor: AppColors.c69B360, // Selected green
        unselectedItemColor: AppColors.c757575, // Unselected grey
        selectedLabelStyle: TextFontStyle.textStylec12c757575InterW400.copyWith(
            color: AppColors.c69B360,
            fontWeight: FontWeight.w600), // Make selected bold and green
        unselectedLabelStyle: TextFontStyle.textStylec12c757575InterW400,
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,
        selectedIconTheme: IconThemeData(size: 26.r, color: AppColors.c69B360),
        unselectedIconTheme:
            IconThemeData(size: 24.r, color: AppColors.c757575),
      ),

      // You can add more specific themes for Chips, Dialogs, etc.
      // For example, if your splash screen uses Poppins heavily:
      // You might not put this directly in the main theme, but use a Theme widget
      // to override for specific screens if the primary font is different.
      // However, if the primary font for the *entire app* is Poppins,
      // then _fontFamily should be "Poppins".

      // If splash screen uses very specific large Poppins text:
      // Consider applying these directly in the splash screen widgets or via a local Theme override.
      // For instance, the 'Get Your Groceries' from your original design would use:
      // textStylec22cFFFFFFInterW700 (if Inter) or a similar Poppins one if splash is Poppins.
      // Your `TextFontStyle` has `textStylec30c071731Poppins600` which is Poppins.
    );
  }
}