import 'package:flutter/material.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/favorite_seller/presentation/model/seller.dart';
import 'package:martaarcadu_app/features/favorite_seller/presentation/widgets/favorite_seller_card.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';
// Import your Seller model

class FavoriteSellerScreen extends StatelessWidget {
  FavoriteSellerScreen({super.key});

  final List<Map<String, dynamic>> sellers = [
    {
      'name': 'Courtney Henry',
      'rating': '4.8',
      'address': '123 Main Street, New York',
      'distance': '2.5 km away',
      "tags": ["Worker", "Electrician", "House Cleaning"],
      'image': Assets.images.favoriteScreenImage1.path,
    },
    {
      'name': 'Theresa Webb',
      'rating': '4.8',
      'address': '123 Main Street, New York',
      'distance': '2.5 km away',
      "tags": ["Worker", "Electrician", "House Cleaning"],
      'image': Assets.images.favoriteScreenImage1.path,
    },
  ];

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
          'Favorite Seller',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sellers.length,
        itemBuilder: (context, index) {
          final seller = Seller.fromMap(sellers[index]);
          return FavoriteSellerCard(seller: seller);
        },
      ),
    );
  }
}
