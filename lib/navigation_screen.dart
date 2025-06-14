
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:martaarcadu_app/gen/assets.gen.dart';
// import 'package:martaarcadu_app/gen/colors.gen.dart';

// import 'helpers/helper_methods.dart';

// /// Placeholder Screens
// // class SearchScreen extends StatelessWidget {
// //   const SearchScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) => Center(child: Text("Search Screen"));
// // }

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
//     // HomeScreen(),
//     // SearchProduct(),
//     // CartScreen(),
//     // ProfileScreen()
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
//     return WillPopScope(
//       onWillPop: () async {
//         showMaterialDialog(context); // custom exit dialog
//         return false;
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
//             onTap: (index) => setState(() => _currentIndex = index),
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: AppColors.c55AE5B,
//             unselectedItemColor: AppColors.c838383,
//             selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
//             unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
//             items: [
//               _buildNavItem(Assets.icons.homeIcon.path, "Home", 0),
//               _buildNavItem(Assets.icons.searchIcon.path, "Search", 1),
//               _buildNavItem(Assets.icons.shoppingIcon.path, "Cart", 2),
//               _buildNavItem(Assets.icons.personIcon.path, "Profile", 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildNavItem(
//       String iconPath, String label, int index) {
//     return BottomNavigationBarItem(
//       icon: Image.asset(
//         iconPath,
//         height: 24.h,
//         width: 24.w,
//         color: _currentIndex == index ? AppColors.c55AE5B : AppColors.c838383,
//       ),
//       label: label,
//     );
//   }
// }