import 'package:crafty_bay/presentation/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
              ()=>const ProductListScreen(categoryName: "Electronics"),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration:
                BoxDecoration(color: AppColors.themeColors.withAlpha(150)),
            child: Icon(
              Icons.computer,
              size: 43,
              color: AppColors.themeColors,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Electronic",
            style: TextStyle(color: AppColors.themeColors),
          )
        ],
      ),
    );
  }
}
