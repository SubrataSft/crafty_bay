import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/state_holders/slider_list_controller.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({
    super.key,
  });

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderListController>(builder: (sliderListController) {
      return Visibility(
        visible: !sliderListController.inProgress,
        replacement: const SizedBox(
          height: 192,
          child: CircularProgressIndicator(),
        ),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                onPageChanged: (index, reason) {
                  _selectedIndex.value = index;
                },
              ),
              items: sliderListController.sliders.map((slider) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: AppColors.themeColors,
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Placeholder(
                            fallbackWidth: 100,
                            fallbackHeight: 100,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(slider.price ?? "",style: Theme.of(context).textTheme.titleLarge,),
                                SizedBox(
                                  width: 100,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          foregroundColor: AppColors.themeColors
                                        ),
                                        onPressed: (){}, child: Text("Buy now")))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 8,
            ),
            ValueListenableBuilder(
                valueListenable: _selectedIndex,
                builder: (context, currentIndex, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: currentIndex == i
                                  ? AppColors.themeColors
                                  : null,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                        )
                    ],
                  );
                })
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
