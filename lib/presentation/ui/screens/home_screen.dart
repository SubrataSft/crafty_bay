import 'package:crafty_bay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/category_list_screen.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 14,
              ),
              SearchTextField(
                textEditingController: TextEditingController(),
              ),
              SizedBox(
                height: 16,
              ),
              HomeBannerSlider(),
              SizedBox(
                height: 16,
              ),
              _buildCategoriesSection(),
              SizedBox(
                height: 120,
                child: HorizontalCategoryListView(),
              ),
              _buildPopularProductSection(),
              SizedBox(
                height: 14,
              ),
              _buildNewProductSection(),
              SizedBox(
                height: 14,
              ),
              _buildSpecialProductSection(),
              SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularProductSection() {
    return Column(
      children: [
        SectionHeader(
          title: "Popular",
          onTap: () {},
        ),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  Widget _buildNewProductSection() {
    return Column(
      children: [
        SectionHeader(
          title: "New",
          onTap: () {},
        ),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  Widget _buildSpecialProductSection() {
    return Column(
      children: [
        SectionHeader(
          title: "Special",
          onTap: () {},
        ),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  Widget _buildCategoriesSection() {
    return Column(
      children: [
        SectionHeader(
          title: "Categories",
          onTap: () {
            Get.find<BottomNavBarController>().selectCategory();
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetsPath.appLogoNav),
      actions: [
        AppBarIconButton(
          iconData: Icons.person,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          iconData: Icons.call,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          iconData: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
