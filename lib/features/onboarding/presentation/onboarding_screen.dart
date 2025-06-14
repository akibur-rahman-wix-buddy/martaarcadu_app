import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> slides = [
    {
      'image': Assets.images.onboardingScreenImage1.path,
      'title': 'Welcome to (AppName)',
      'subtitle':
          'Get what you need, your way. Connect with services that match your request.'
    },
    {
      'image': Assets.images.onboardingScreenImage2.path,
      'title': 'Sellers Compete,\nYou Choose the Best',
      'subtitle':
          'Create a request, and let sellers offer their best solutions. You set the price!'
    },
    {
      'image': Assets.images.onboardingScreenImage3.path,
      'title': 'Join a Growing Service-\nBased Community',
      'subtitle':
          'Be a part of our growing community! Whether you\'re buying or selling, find what you need'
    },
  ];

  void _onNext() {
    if (_currentPage < slides.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // ✅ Navigate to the next screen when "Get Started" is tapped
      NavigationService.navigateTo(Routes.loginScreen);
    }
  }

  void _onSkip() {
    _controller.jumpToPage(slides.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: slides.length,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemBuilder: (_, index) {
                  final slide = slides[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: UIHelper.kDefaulutPadding()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UIHelper.verticalSpace(97.h),
                        Image.asset(slide['image']!, height: 325.h),
                        UIHelper.verticalSpace(3.h),
                        Text(
                          slide['title']!,
                          style: TextFontStyle.textStylec24c212121ManropeW700,
                          textAlign: TextAlign.center,
                        ),
                        UIHelper.verticalSpace(10.h),
                        Text(
                          slide['subtitle']!,
                          style: TextFontStyle.textStylec14c808080ManropeW500,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slides.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 6,
                  width: _currentPage == index ? 24 : 6,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.c3B82F6
                        : AppColors.cF4F4F4,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(72.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
              child: Row(
                children: [
                  if (_currentPage != slides.length - 1)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _onSkip,
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.h, horizontal: 24.w),
                          side: BorderSide(color: AppColors.cF4F4F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: TextFontStyle.textStylec18c1B1F3BManropeW600
                              .copyWith(color: AppColors.c3B82F6),
                        ),
                      ),
                    ),
                  if (_currentPage != slides.length - 1)
                    UIHelper.horizontalSpace(15.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _onNext,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.c3B82F6,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.h, horizontal: 24.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        _currentPage == slides.length - 1
                            ? 'Get Started'
                            : 'Next',
                        style: TextFontStyle.textStylec18cFFFFFFManropeW600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(51.h),
          ],
        ),
      ),
    );
  }
}
