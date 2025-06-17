import 'package:flutter/material.dart';
import 'package:martaarcadu_app/common_widgets/common_arrow_button.dart';
import 'package:martaarcadu_app/constants/text_font_style.dart';
import 'package:martaarcadu_app/features/seller_response/presentation/widgets/seller_card.dart';
import 'package:martaarcadu_app/gen/assets.gen.dart';
import 'package:martaarcadu_app/gen/colors.gen.dart';

class SellerResponseScreen extends StatelessWidget {
  SellerResponseScreen({super.key});

  final List<Map<String, dynamic>> sellers = [
    {
      "name": "Emma_Lery18",
      "location": "123 Main Street, New York",
      "distance": "2.5 km away",
      "rating": 4.8,
      "tags": ["Worker", "Electrician", "House Cleaning"],
      "image": Assets.images.requestSellerScreen.path,
    },
    {
      "name": "John_Doe21",
      "location": "456 Market Street, LA",
      "distance": "3.2 km away",
      "rating": 4.5,
      "tags": ["Plumber", "Painter"],
      "image": Assets.images.requestSellerScreen.path,
    },
    {
      "name": "Anik Biswas",
      "location": "456 Market Street, LA",
      "distance": "3.2 km away",
      "rating": 4.5,
      "tags": ["Plumber", "Painter"],
      "image": Assets.images.requestSellerScreen.path,
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
          'Seller Response',
          style: TextFontStyle.textStylec18c1B1F3BManropeW600.copyWith(
            color: AppColors.c000000,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: PageView.builder(
        itemCount: sellers.length,
        itemBuilder: (context, index) {
          final seller = sellers[index];
          return SellerCard(
            name: seller["name"] as String,
            location: seller["location"] as String,
            distance: seller["distance"] as String,
            rating: seller["rating"] as double,
            tags: List<String>.from(seller["tags"] as List),
            imagePath: seller["image"] as String,
          );
        },
      ),
    );
  }
}
