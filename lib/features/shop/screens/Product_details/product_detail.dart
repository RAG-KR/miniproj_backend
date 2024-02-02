import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/products/product_card_vertical.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/t_rounded_images.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/Product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/Product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/Product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),
                  TProductMetaData(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const ReadMoreText(
                    'bvbrebkfsjddddddddddddddddddddddddddddddddddd',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
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
