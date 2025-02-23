import 'package:crafty_bay/data/models/category_model.dart';
import 'package:crafty_bay/presentation/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () =>
              ProductListScreen(categoryName: categoryModel.categoryName ?? ""),
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
            categoryModel.categoryName ?? "",
            style: TextStyle(color: AppColors.themeColors),
          )
        ],
      ),
    );
  }
}
