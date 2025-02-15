import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/app_bar_icon_button.dart';
import '../widgets/search_text-field.dart';
import '../widgets/section_header.dart';

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
      body: Padding(
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
              height: 140,
              child: _buildCategoryListView(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.themeColors.withAlpha(150)),
                        child: Icon(
                          Icons.computer,
                          size: 43,
                          color: AppColors.themeColors,
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Electronic",
                        style: TextStyle(color: AppColors.themeColors),
                      )
                    ],
                  );
                },
                separatorBuilder: (_, __) => SizedBox(
                      width: 8,
                    ));
  }

  Widget _buildCategoriesSection() {
    return Column(
            children: [
              SectionHeader(
                title: "Categories",
                onTap: () {},
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
