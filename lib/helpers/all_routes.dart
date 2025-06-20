// ignore_for_file: unused_element

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:martaarcadu_app/features/account/account_details/presentation/account_details_screen.dart';
import 'package:martaarcadu_app/features/account/accounts_sucess/presentation/account_sucess_screen.dart';
import 'package:martaarcadu_app/features/account/email_verify/presentation/emial_verify_screen.dart';
import 'package:martaarcadu_app/features/auth/forget_password/presentation/forget_password_screen.dart';
import 'package:martaarcadu_app/features/auth/login/presentation/login_screen.dart';
import 'package:martaarcadu_app/features/auth/new_password/presentation/new_password_screen.dart';
import 'package:martaarcadu_app/features/auth/otp_verify/presentation/otp_verify_screen.dart';
import 'package:martaarcadu_app/features/favorite_seller/presentation/favorite_seller_screen.dart';
import 'package:martaarcadu_app/features/home/presentation/home_screen.dart';
import 'package:martaarcadu_app/features/notification_flow/notification/presentation/notification_screen.dart';
import 'package:martaarcadu_app/features/notification_flow/notification_settings/presentation/notification_settings_screen.dart';
import 'package:martaarcadu_app/features/post_request/presentation/post_request_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/identity_thankyou/presentation/identity_thankyou_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/mobile_number_verify/presentation/mobile_number_verify_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/phone_number_verify/presentation/phone_number_otp_verify_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/reliability/presentation/reliability_screen.dart';
import 'package:martaarcadu_app/features/request_details/presentation/request_details_screen.dart';
import 'package:martaarcadu_app/features/request_sucess/presentation/request_sucessfully_screen.dart';
import 'package:martaarcadu_app/features/seller_response/presentation/seller_response_screen.dart';
import 'package:martaarcadu_app/features/reliability_flow/verify_identity/presentation/verifiy_identity_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String logInScreen = '/logIn';
  static const String signUpScreen = '/signUp';
  static const String home = '/home';
  static const String search = '/search';
  static const String dailyRemainder = '/DailyRemainderScreen';
  static const String editRemainder = '/EditRemainderScreen';
  static const String pricingPlanScreen = '/PricingPlanScreen';
  static const String makeMixScreen = '/MakeMixScreen';
  static const String pricingListScreen = '/PricingListScreen';
  static const String homeScreenWidget = '/HomeScreenWidget';
  static const String setPassword = '/SetPassword';
  static const String addQuoteScreen = '/AddQuoteScreen';
  static const String previewScreen = '/PreviewScreen';
  static const String quoteScreen = '/QuoteScreen';
  static const String collectionScreen = '/CollectionScreen';
  static const String favouriteScreen = '/FavouriteScreen';
  static const String insertEmailScreen = '/InsertEmailScreen';
  static const String setNewPasswordScreen = '/SetNewPasswordScreen';
  static const String verifyOtpFPScreen = '/VerifyOtpFPScreen';
  // static const String addCard = '/Addcard';
  static const String profile = '/Profile';
  static const String loadingScreen = '/loading';
  static const String otpScreen = '/OtpScreen';
  static const String webview = '/webview';
  static const String categorySearchScreen = '/CategorySearchScreen';
  static const String forgotPWScreen = '/ForgotPWScreen';

  static const String navigationScreen = '/NavigationScreen';
  // static const String privacyTermScreen = '/privacy_terms_Screen';
  // static const String myContributionScreen = '/MyContributionScreen';
  // static const String myCollectionScreen = '/myCollectionScreen';
  // static const String createCollection = '/createCollectionScreen';
  // static const String editCollection = '/editCollectionScreen';
  // static const String editProfile = '/editProfileScreen';
  // static const String collectionDetails = '/CollectionDetailsScreen';
  // static const String makeAContributionsScreen = '/MakeAContributionsScreen';
  static const String policiesTerms = '/PoliciesTermsScreen';
  static const String generalSetting = '/general_setting';
  static const String homeScreen = '/home_screen';
  static const String theme = '/theme';
  static const String setting = '/setting';
  static const String contentCategories = '/content_categories';
  static const String reminderScreen = '/reminders_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String otpVerifyScreen = '/otp_verify_screen';
  static const String newPasswordScreen = '/new_password_screen';
  static const String loginScreen = '/loginScreen';
  static const String accountDetailsScreen = '/account_details_screen';
  static const String emailVerifyScreen = '/email_verify_screen';
  static const String accountSucessScreen = '/account_sucess_screen';
  static const String postRequestScreen = '/post_request_screen';
  static const String requestSucessfullyScreen = '/request_sucessfully_screen';
  static const String requestDetailsScreen = '/request_details_screen';
  static const String sellerResponseScreen = '/seller_response_screen';
  static const String favoriteSellerScreen = '/favorite_seller_screen';
  static const String reliabilityScreen = '/reliability_screen';
  static const String verifyIdentityScreen = '/verify_identity_screen';
  static const String indentityThankyouScreen = '/identity_thankyou_screen';
  static const String phoneNumberOtpVerityScreen =
      '/phone_number_otp_verify_screen';
  static const String mobileNumberVerifyScreen = '/mobile_number_verify_screen';
  static const String notificationSettingsScreen =
      '/notification_settings_screen';
  static const String notificationScreen = '/notification_screen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.forgotPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ForgetPasswordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ForgetPasswordScreen());
      case Routes.otpVerifyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: OtpVerifyScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OtpVerifyScreen());
      case Routes.newPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: NewPasswordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => NewPasswordScreen());
      case Routes.loginScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: LoginScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => LoginScreen());
      case Routes.accountDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: AccountDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AccountDetailsScreen());
      case Routes.emailVerifyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: EmialVerifyScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => EmialVerifyScreen());
      case Routes.accountSucessScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: AccountSuccessScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AccountSuccessScreen());
      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HomeScreen());
      case Routes.postRequestScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: PostRequestScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => PostRequestScreen());
      case Routes.requestSucessfullyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: RequestSuccessfullyScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => RequestSuccessfullyScreen());
      case Routes.requestDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: RequestDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => RequestDetailsScreen());
      case Routes.sellerResponseScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: SellerResponseScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SellerResponseScreen());
      case Routes.favoriteSellerScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: FavoriteSellerScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => FavoriteSellerScreen());
      case Routes.reliabilityScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ReliabilityScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ReliabilityScreen());
      case Routes.verifyIdentityScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: VerifiyIdentityScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => VerifiyIdentityScreen());
      case Routes.indentityThankyouScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: IdentityThankyouScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => IdentityThankyouScreen());
      case Routes.phoneNumberOtpVerityScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: PhoneNumberOtpVerifyScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => PhoneNumberOtpVerifyScreen());
      case Routes.mobileNumberVerifyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: MobileNumberVerifyScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => MobileNumberVerifyScreen());
      case Routes.notificationSettingsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: NotificationSettingsScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => NotificationSettingsScreen());
      case Routes.notificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: NotificationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => NotificationScreen());
      // // case Routes.categorySearchScreen:
      // //   return Platform.isAndroid
      // //       ? _FadedTransitionRoute(
      // //           widget: const CategoryScreen(), settings: settings)
      // //       : CupertinoPageRoute(builder: (context) => const CategoryScreen());
      // case Routes.pricingPlanScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const PricingPlanScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const PricingPlanScreen());
      // case Routes.dailyRemainder:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const SetRemainderScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const SetRemainderScreen());
      // case Routes.pricingListScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const PricingListScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const PricingListScreen());
      // case Routes.makeMixScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const MakeMixScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const MakeMixScreen());
      // case Routes.homeScreenWidget:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const HomeScreenWidget(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const HomeScreenWidget());
      // case Routes.navigationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const NavigationScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const NavigationScreen());
      // case Routes.homeScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const HomeScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const HomeScreen());
      // case Routes.theme:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ThemeScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const ThemeScreen());
      // case Routes.setting:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const SettingsScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SettingsScreen());
      // case Routes.generalSetting:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const GeneralSettingScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const GeneralSettingScreen());
      // case Routes.contentCategories:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ContentCategoriesScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const ContentCategoriesScreen());
      // case Routes.reminderScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const RemindersScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const RemindersScreen());
      // case Routes.setPassword:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: SetPasswordScreen(
      //             name: args['name'],
      //             email: args['email'],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => SetPasswordScreen(
      //                 name: args['name'],
      //                 email: args['email'],
      //               ));
      // case Routes.otpScreen:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: OtpScreen(
      //             isFromLogin: args['isFromLogin'],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => OtpScreen(
      //                 isFromLogin: args['isFromLogin'],
      //               ));
      // case Routes.addQuoteScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const AddQuoteScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const AddQuoteScreen());
      // case Routes.quoteScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const QuoteScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const QuoteScreen());
      // case Routes.collectionScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const CollectionScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const CollectionScreen());
      // case Routes.favouriteScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const FavouriteScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const FavouriteScreen());
      // case Routes.previewScreen:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: PreviewScreen(quote: args['quote'], name: args['name']),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) =>
      //               PreviewScreen(quote: args['quote'], name: args['name']));
      // case Routes.setNewPasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: SetNewPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SetNewPasswordScreen());
      // // case Routes.previewScreen:
      // //   return Platform.isAndroid
      // //       ? _FadedTransitionRoute(widget: PreviewScreen(), settings: settings)
      // //       : CupertinoPageRoute(builder: (context) => PreviewScreen());
      // case Routes.insertEmailScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: InsertEmailScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => InsertEmailScreen());
      // case Routes.logInScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const LoginScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const LoginScreen());

      // case Routes.verifyOtpFPScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const VerifyOtpFPScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const VerifyOtpFPScreen());
      // case Routes.loadingScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const Loading());

      // case Routes.editRemainder:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: EditRemainderScreen(
      //             id: args['id'],
      //             itemCount: args['itemCount'],
      //             startTime: args['startTime'],
      //             endTime: args['endTime'],
      //             isRemaiderOn: args['isRemaiderOn'],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => EditRemainderScreen(
      //                 id: args['id'],
      //                 itemCount: args['itemCount'],
      //                 startTime: args['startTime'],
      //                 endTime: args['endTime'],
      //                 isRemaiderOn: args['isRemaiderOn'],
      //               ));
      // case Routes.signUpScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const SignUpScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SignUpScreen());
      // case Routes.forgotPWScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ForgotPWScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const ForgotPWScreen());

      // case Routes.sliderWebViewPage:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget:
      //               SliderWebViewPage(title: args["title"], url: args["url"]),
      //           settings:
      //               settings) //_FadedTransitionRoute(builder: (context)=> const SobrenosScreen())
      //       : CupertinoPageRoute(
      //           builder: (context) =>
      //               SliderWebViewPage(title: args["title"], url: args["url"]));

      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
