import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

// Reusable button widget with image and text
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonType buttonType;
  final String? imageUrl; // Path to the image asset

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.imageUrl, // Add the image URL parameter
    this.buttonType = ButtonType.primary, // Default is primary button (orange)
  });

  @override
  Widget build(BuildContext context) {
    // Define the style based on button type
    return buttonType == ButtonType.primary
        ? ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  AppColors.allPrimaryColor, // Background color is orange
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(double.infinity, 50), // Full-width
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imageUrl != null)
                  // Display the image if the URL is provided
                  Image.asset(
                    imageUrl!, // Use the image asset
                    height: 20, // Adjust the size of the image
                    width: 20,
                  ),
                SizedBox(width: 8), // Space between image and text
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white, // Text color is white
                  ),
                ),
              ],
            ),
          )
        : OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: AppColors.allPrimaryColor), // Border color is orange
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(double.infinity, 50), // Full-width
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imageUrl != null)
                  Image.asset(
                    imageUrl!, // Use the image asset
                    height: 20, // Adjust the size of the image
                    width: 20,
                  ),
                SizedBox(width: 8), // Space between image and text
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.allPrimaryColor, // Text color is orange
                  ),
                ),
              ],
            ),
          );
  }
}

// Enum to define the type of button
enum ButtonType { primary, secondary }
