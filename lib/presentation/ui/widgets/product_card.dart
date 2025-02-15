import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 160,
              height: 100,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.themeColors.withAlpha(120),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                    image: AssetImage(AssetsPath.dummyProductImg),
                    fit: BoxFit.scaleDown),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Name",maxLines: 1,style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black87
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$100",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color:AppColors.themeColors
                      ),),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Text("5",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black87
                          ),)
                        ],
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                        ),
                        color: AppColors.themeColors,
                        child: Icon(Icons.favorite_outline_rounded,color: Colors.white,),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
