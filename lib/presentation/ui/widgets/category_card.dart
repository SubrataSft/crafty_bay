import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
