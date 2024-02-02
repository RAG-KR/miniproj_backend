import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/productprice_text.dart';
import 'package:t_store/common/widgets/t_product_titletext.dart';
import 'package:t_store/features/shop/screens/Product_details/product_detail.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../utils/constants/image_strings.dart';
import '../widgets/t_rounded_container.dart';
import '../widgets/t_rounded_images.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: ()=>Get.to(()=>const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25 %',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),

                  /// -- Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
                padding: EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                      title: 'Green nike air shoes',
                      smallSize: true,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        Text(
                          'nike',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const Icon(
                          Iconsax.verify5,
                          color: TColors.primary,
                          size: TSizes.iconXs,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Price
                        const TProductPriceText(price: '35.0',isLarge: true,),
                        Container(
                            decoration: const BoxDecoration(
                                color: TColors.dark,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight:
                                      Radius.circular(TSizes.productImageRadius),
                                )),
                            child: const SizedBox(
                                width: TSizes.iconLg * 1.2,
                                height: TSizes.iconLg * 1.2,
                                child: Center(
                                    child: Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                )))),
                      ],
                    ),
                  ],
                ))
          ],
        ), // TRoundedContainer
      ),
    );
  }
}
// class TProductCardVertical extends StatelessWidget {
//   final String imageUrl; // Add imageUrl parameter
//
//   const TProductCardVertical({Key? key, required this.imageUrl}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//
//     return GestureDetector(
//       onTap: (){},
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(TSizes.productImageRadius),
//           color: dark ? TColors.darkerGrey : TColors.white,
//         ),
//         child: Column(
//           children: [
//             /// Thumbnail, Wishlist Button, Discount Tag
//             TRoundedContainer(
//               height: 180,
//               padding: const EdgeInsets.all(TSizes.sm),
//               backgroundColor: dark ? TColors.dark : TColors.light,
//               child: Stack(
//                 children: [
//                   TRoundedImage( // Use TRoundedImage with imageUrl parameter
//                       imageUrl: imageUrl, applyImageRadius: true),
//
//                   Positioned(
//                     top: 12,
//                     child: TRoundedContainer(
//                       radius: TSizes.sm,
//                       backgroundColor: TColors.secondary.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: TSizes.sm, vertical: TSizes.xs),
//                       child: Text('25 %',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelLarge!
//                               .apply(color: TColors.black)),
//                     ),
//                   ),
//
//                   /// -- Favourite Icon Button
//                   const Positioned(
//                       top: 0,
//                       right: 0,
//                       child: TCircularIcon(
//                         icon: Iconsax.heart5,
//                         color: Colors.red,
//                       )),
//                 ],
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems / 2),
//             Padding(
//                 padding: EdgeInsets.only(left: TSizes.sm),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const TProductTitleText(
//                       title: 'Green nike air shoes',
//                       smallSize: true,
//                     ),
//                     const SizedBox(height: TSizes.spaceBtwItems / 2),
//                     Row(
//                       children: [
//                         Text(
//                           'nike',
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                           style: Theme.of(context).textTheme.labelMedium,
//                         ),
//                         const Icon(
//                           Iconsax.verify5,
//                           color: TColors.primary,
//                           size: TSizes.iconXs,
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         /// Price
//                         const TProductPriceText(price: '35.0',isLarge: true,),
//                         Container(
//                             decoration: const BoxDecoration(
//                                 color: TColors.dark,
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(TSizes.cardRadiusMd),
//                                   bottomRight:
//                                   Radius.circular(TSizes.productImageRadius),
//                                 )),
//                             child: const SizedBox(
//                                 width: TSizes.iconLg * 1.2,
//                                 height: TSizes.iconLg * 1.2,
//                                 child: Center(
//                                     child: Icon(
//                                       Iconsax.add,
//                                       color: TColors.white,
//                                     )))),
//                       ],
//                     ),
//                   ],
//                 ))
//           ],
//         ), // TRoundedContainer
//       ),
//     );
//   }
// }


class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
