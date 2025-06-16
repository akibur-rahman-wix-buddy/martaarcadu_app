import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/drawer/presentation/drawer_screen.dart';
import 'package:martaarcadu_app/features/home/presentation/model/product_item.dart';
import 'package:martaarcadu_app/features/home/presentation/model/service_item.dart';
import 'package:martaarcadu_app/features/home/presentation/widgets/banner_card.dart';
import 'package:martaarcadu_app/features/home/presentation/widgets/header_top_bar.dart';
import 'package:martaarcadu_app/features/home/presentation/widgets/product_card.dart';
import 'package:martaarcadu_app/features/home/presentation/widgets/service_card.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
import 'package:martaarcadu_app/helpers/ui_helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int coinBalance = 80;

  final List<ServiceItem> activeServices = [
    ServiceItem(
      title: 'Moving Help Required',
      category: 'Cleaning',
      responses: 12,
      budget: 500,
      timeLeft: const Duration(days: 1, hours: 8, minutes: 23),
      status: 'Active',
    ),
  ];

  final List<ProductItem> products = List.generate(
    12,
    (i) => ProductItem(
      title: 'Latest Apple watch pro 2020',
      price: 156,
      imageUrl: Assets.images.homeScreenProductImage1.path,
      status: 'Active',
    ),
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerScreen(),
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UIHelper.kDefaulutPadding(),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(19.h),

                /// Top Bar
                HeaderTopBar(
                  coinBalance: coinBalance,
                  scaffoldKey: _scaffoldKey,
                ),

                UIHelper.verticalSpace(16.h),

                /// Banner Section
                const BannerCard(),

                UIHelper.verticalSpace(20.h),

                /// My Active Service Title
                Text(
                  'My Active Service (${activeServices.length})',
                  style: TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                    color: AppColors.c00121A,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                UIHelper.verticalSpace(12.h),

                /// Service Cards List
                ...activeServices
                    .map((service) => ServiceCard(service: service)),

                UIHelper.verticalSpace(20.h),

                /// My Product Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Product (${products.length})',
                      style:
                          TextFontStyle.textStylec16c292D32ManropeW600.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // TODO: Navigate to full product list screen
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: TextFontStyle.textStylec12c9D9D9DManropeW400,
                          ),
                          UIHelper.horizontalSpace(4.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: AppColors.c9D9D9D,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                UIHelper.verticalSpace(12.h),

                /// Product Horizontal List
                SizedBox(
                  height: 190.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (_, i) => ProductCard(product: products[i]),
                    separatorBuilder: (_, __) => SizedBox(width: 12.w),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
