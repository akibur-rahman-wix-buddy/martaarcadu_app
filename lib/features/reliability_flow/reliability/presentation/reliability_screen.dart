import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/reliability_flow/reliability/presentation/widgets/trust_score_card.dart';
import 'package:martaarcadu_app/features/reliability_flow/reliability/presentation/widgets/verification_title.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/all_routes.dart';
import 'package:martaarcadu_app/helpers/navigation_service.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class ReliabilityScreen extends StatelessWidget {
  const ReliabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text(
          'Reliability',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(20.h),
                TrustScoreCard(),
                UIHelper.verticalSpace(32.h),
                GestureDetector(
                  onTap: () {
                    NavigationService.navigateTo(Routes.verifyIdentityScreen);
                  },
                  child: VerificationTitle(
                    icon: Image.asset(
                      Assets.icons.reabilityPersonIcon.path,
                      height: 24.h,
                      width: 24.w,
                    ),
                    title: 'Identity Verified',
                    status: 'Pending',
                    statusColor: AppColors.cEA7B0C,
                    statusBgColor: AppColors.cFFF1DF,
                    tileBgColor: AppColors.cFFFFFF,
                    description:
                        'Upload a valid government ID to verify your identity.',
                    coinTextColor: AppColors.c6B7280,
                    coinBgColor: AppColors.cF3F4F6,
                  ),
                ),
                UIHelper.verticalSpace(16.h),
                VerificationTitle(
                  icon: Image.asset(
                    Assets.icons.phoneIcon.path,
                    height: 24.h,
                    width: 24.w,
                  ),
                  title: 'Mobile Number',
                  status: 'Verified',
                  statusColor: AppColors.c16A34A,
                  statusBgColor: AppColors.cDCFCE7,
                  tileBgColor: AppColors.cF0FDF4,
                  iconBgColor: AppColors.cDCFCE7,
                  description:
                      'Confirm your phone number to receive alerts and increase trust.',
                  coinTextColor: AppColors.c16A34A,
                  coinBgColor: AppColors.cDCFCE7,
                ),
                UIHelper.verticalSpace(16.h),
                VerificationTitle(
                  icon: Image.asset(
                    Assets.icons.whatsappIcon.path,
                    height: 24.h,
                    width: 24.w,
                  ),
                  title: 'WhatsApp Notifications',
                  status: 'Not Verified',
                  statusColor: AppColors.c6B7280,
                  statusBgColor: AppColors.cF3F4F6,
                  description:
                      'Enable WhatsApp notification to get instant request alerts.',
                  coinTextColor: AppColors.c6B7280,
                  coinBgColor: AppColors.cF3F4F6,
                ),
                VerificationTitle(
                  icon: Image.asset(
                    Assets.icons.profilePersonIcon.path,
                    height: 24.h,
                    width: 24.w,
                  ),
                  title: 'Profile Photo Uploaded',
                  status: 'Verified',
                  statusColor: AppColors.c16A34A,
                  statusBgColor: AppColors.cDCFCE7,
                  tileBgColor: AppColors.cF0FDF4,
                  iconBgColor: AppColors.cDCFCE7,
                  description:
                      'Upload a clear profile picture to build credibility.',
                  coinTextColor: AppColors.c16A34A,
                  coinBgColor: AppColors.cDCFCE7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
