import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/color_picker.dart';
import 'package:crafty_bay/presentation/ui/widgets/product_image_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/size_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildProductDetails(),
          ),
          _buildPriceAndAddToCartSection()
        ],
      ),
    );
  }

  Widget _buildProductDetails() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImageSlider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNameAndQuantitySection(),
                SizedBox(
                  width: 3,
                ),
                _buildRatingAndReviewSection(),
                SizedBox(
                  height: 8,
                ),
                ColorPicker(
                  colors: const [
                    Colors.red,
                    Colors.green,
                    Colors.yellow,
                    Colors.black,
                  ],
                  onColorSelected: (color) {},
                ),
                SizedBox(
                  height: 16,
                ),
                SizePicker(
                  sizes: [
                    "S",
                    "M",
                    "L",
                    "XL",
                    "XXL",
                  ],
                  onSizeSelected: (String selectedSize) {},
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 8,
                ),
                _buildDescriptionSection()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """The item count refers to the total number of individual items included in an order or a specific result set, such as a search result. For instance, if a customer orders five distinct items in  one order, the item count would be five.Additionally, in the context of inventory, item counts can indicate the amount of stock available for sale.""",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              );
  }

  Widget _buildNameAndQuantitySection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            "Nick shoe 2025 latest model-New year Spacial Day  ",
            style: Theme.of(context).textTheme.titleMedium,
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

  Widget _buildRatingAndReviewSection() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              "5",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black87),
            )
          ],
        ),
        SizedBox(
          width: 8,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Reviews",
            style: TextStyle(
                fontWeight: FontWeight.w400, color: AppColors.themeColors),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: AppColors.themeColors,
          child: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _buildPriceAndAddToCartSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.themeColors.withAlpha(100),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Price"),
              Text(
                "\$100",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.themeColors),
              ),
            ],
          ),
          SizedBox(
              width: 130,
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Add To Cart")))
        ],
      ),
    );
  }
}
