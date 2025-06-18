import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:martaarcadu_app/features/account/create_account/presentation/create_account_screen.dart';

import 'package:martaarcadu_app/features/auth/login/presentation/login_screen.dart';
import 'package:martaarcadu_app/features/drawer/presentation/drawer_screen.dart';
import 'package:martaarcadu_app/features/favorite_seller/presentation/favorite_seller_screen.dart';
import 'package:martaarcadu_app/features/home/presentation/home_screen.dart';
import 'package:martaarcadu_app/features/onboarding/presentation/onboarding_screen.dart';
import 'package:martaarcadu_app/features/post_request/presentation/post_request_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/identity_thankyou/presentation/identity_thankyou_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/mobile_number_verify/presentation/mobile_number_verify_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/phone_number_verify/presentation/phone_number_otp_verify_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/reliability/presentation/reliability_screen.dart';
import 'package:martaarcadu_app/features/request_details/presentation/request_details_screen.dart';
import 'package:martaarcadu_app/features/request_sucess/presentation/request_sucessfully_screen.dart';
import 'package:martaarcadu_app/features/seller_response/presentation/seller_response_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/verify_identity/presentation/verifiy_identity_screen.dart';
import 'constants/custome_theme.dart';
import 'gen/colors.gen.dart';
import 'helpers/all_routes.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/navigation_service.dart';

import 'networks/dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await _requestPermissions();
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();

  DioSingleton.instance.create();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return AnimateIfVisibleWrapper(
      showItemInterval: const Duration(milliseconds: 150),
      child: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          showMaterialDialog(context);
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            return const UtillScreenMobile();
          },
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, _) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            //    showPerformanceOverlay: true,
            theme: ThemeData(
              unselectedWidgetColor: Colors.white,
              primarySwatch: CustomTheme.kToDark,
              useMaterial3: false,
              scaffoldBackgroundColor: AppColors.cFFFFFF,
              appBarTheme: const AppBarTheme(
                color: AppColors.cFFFFFF,
                elevation: 0,
              ),
            ),
            debugShowCheckedModeBanner: false,
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
