import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../utils/assets_path.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 1,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          _buildProductImage(),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title is product",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            _buildColorAndSize(context),
                          ],
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  ],
                ),
                _buildPriceAndCounter(TextTheme),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColorAndSize(BuildContext context) {
    return Wrap(
                            spacing: 8,
                            children: [
                              Text(
                                "Color : Red",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              Text("Size : XL",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                    color: Colors.grey,
                                  )),
                            ],
                          );
  }

  Widget _buildPriceAndCounter(TextTheme TextTheme) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$122",
                    style: TextTheme.titleMedium?.copyWith(
                        color:AppColors.themeColors
                    ),
                  ),
                  ItemCount(
                    initialValue: 1,
                    minValue: 1,
                    maxValue: 20,
                    decimalPlaces: 0,
                    color: AppColors.themeColors,
                    onChanged: (value) {},
                  ),
                ],
              );
  }

  Widget _buildProductImage() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsPath.dummyProductImg,
            height: 60,
            width: 60,
            fit: BoxFit.scaleDown,
          ),
        );
  }
}
