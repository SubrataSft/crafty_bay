import 'package:crafty_bay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../widgets/category_card.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        leading: IconButton(
          onPressed: () {
            Get.find<BottomNavBarController>().backToHome();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, childAspectRatio: 1),
        itemBuilder: (context, index) {
          return CategoryCard();
        },
      ),
    );
  }
}
