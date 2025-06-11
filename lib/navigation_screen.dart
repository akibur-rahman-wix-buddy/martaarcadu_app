// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:analyticsdepart_app/features/cart_screens_flow/cart/presentation/cart_screen.dart';
// import 'package:analyticsdepart_app/features/home_screens_flow/home/presentation/home_screen.dart';
// import 'package:analyticsdepart_app/gen/assets.gen.dart';
// import 'package:analyticsdepart_app/gen/colors.gen.dart';
// import 'helpers/helper_methods.dart';

// // Placeholder Screens (Remove if you already have them)
// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Center(child: Text("Search Screen"));
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Center(child: Text("Profile Screen"));
// }

// class NavigationScreen extends StatefulWidget {
//   final Widget? pageNum;
//   const NavigationScreen({super.key, this.pageNum});

//   @override
//   State<NavigationScreen> createState() => _NavigationScreenState();
// }

// class _NavigationScreenState extends State<NavigationScreen> {
//   int _currentIndex = 0;
//   bool _isFirstBuild = true;

//   final List<Widget> _screens = [
//     HomeScreen(),
//     SearchScreen(),
//     CartScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (_isFirstBuild) {
//       final args = ModalRoute.of(context)?.settings.arguments;
//       if (args is Widget) {
//         final index =
//             _screens.indexWhere((e) => e.runtimeType == args.runtimeType);
//         if (index != -1) {
//           _currentIndex = index;
//         }
//       }
//       _isFirstBuild = false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false,
//       onPopInvokedWithResult: (bool didPop, _) async {
//         showMaterialDialog(context);
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         extendBody: true,
//         body: SafeArea(
//           child: IndexedStack(
//             index: _currentIndex,
//             children: _screens,
//           ),
//         ),
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//             color: AppColors.cFFFFFF,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withAlpha((0.1 * 255).toInt()),
//                 spreadRadius: 5,
//                 blurRadius: 10,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           child: BottomNavigationBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             currentIndex: _currentIndex,
//             onTap: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: AppColors.c55AE5B,
//             unselectedItemColor: AppColors.c838383,
//             selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
//             unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
//             items: [
//               BottomNavigationBarItem(
//                 icon: Image.asset(
//                   Assets.icons.homeIcon.path,
//                   height: 24.h,
//                   width: 24.w,
//                   color: _currentIndex == 0
//                       ? AppColors.c55AE5B
//                       : AppColors.c838383,
//                 ),
//                 label: "Home",
//               ),
//               BottomNavigationBarItem(
//                 icon: Image.asset(
//                   Assets.icons.searchIcon.path,
//                   height: 24.h,
//                   width: 24.w,
//                   color: _currentIndex == 1
//                       ? AppColors.c55AE5B
//                       : AppColors.c838383,
//                 ),
//                 label: "Search",
//               ),
//               BottomNavigationBarItem(
//                 icon: Image.asset(
//                   Assets.icons.shoppingIcon.path,
//                   height: 24.h,
//                   width: 24.w,
//                   color: _currentIndex == 2
//                       ? AppColors.c55AE5B
//                       : AppColors.c838383,
//                 ),
//                 label: "Cart",
//               ),
//               BottomNavigationBarItem(
//                 icon: Image.asset(
//                   Assets.icons.personIcon.path,
//                   height: 24.h,
//                   width: 24.w,
//                   color: _currentIndex == 3
//                       ? AppColors.c55AE5B
//                       : AppColors.c838383,
//                 ),
//                 label: "Profile",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
