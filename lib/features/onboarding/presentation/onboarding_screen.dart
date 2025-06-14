import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';

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
      'image': Assets.images.onboardingScreenImage1.path, // ← .path here
      'title': 'Welcome to (AppName)',
      'subtitle':
          'Get what you need, your way. Connect with services that match your request.'
    },
    {
      'image': Assets.images.onboardingScreenImage2.path,
      'title': 'Sellers Compete, You Choose the Best',
      'subtitle':
          'Create a request, and let sellers offer their best solutions. You set the price!'
    },
    {
      'image': Assets.images.onboardingScreenImage3.path,
      'title': 'Join a Growing Service-Based Community',
      'subtitle':
          'Be a part of our growing community Whether youre buying or selling find what you need'
    },
  ];

  void _onNext() {
    if (_currentPage < slides.length - 1) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      // Go to home/login screen
    }
  }

  void _onSkip() {
    _controller.jumpToPage(slides.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Slider
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
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 40.h),
                        Image.asset(slide['image']!, height: 250.h),
                        SizedBox(height: 48.h),
                        Text(
                          slide['title']!,
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          slide['subtitle']!,
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.grey[600]),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Page indicator
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
                        ? Colors.blue
                        : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32.h),

            // Bottom buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  // Skip
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _onSkip,
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(fontSize: 16.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // Next or Get Started
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _onNext,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        _currentPage == slides.length - 1
                            ? 'Get Started'
                            : 'Next',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
