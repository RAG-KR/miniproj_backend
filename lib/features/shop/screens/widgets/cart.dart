

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/products/product_card_vertical.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/productprice_text.dart';
import 'package:t_store/common/widgets/t_product_titletext.dart';
import 'package:t_store/common/widgets/t_rounded_images.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products.cart/add_remove_button.dart';
import '../../../../common/widgets/products.cart/cart_item.dart';
import '../../../../utils/constants/image_strings.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    TCartItem(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: TSizes.spaceBtwItems,
                            ),
                            TProductQuantityWithAddRemoveButton(),
                            TProductPriceText(price: '256'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
            separatorBuilder: (_, __) => const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: const Text('checkout \$256.0'),),
      ),
    );
  }
}

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: TAppBar(
//         showBackArrow: true,
//         title: Text(
//           'Cart',
//           style: Theme.of(context).textTheme.headlineSmall,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(TSizes.defaultSpace),
//         child: ListView.separated(
//           shrinkWrap: true,
//           itemBuilder: (_, index) => const Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TCartItem(),
//                     SizedBox(height: TSizes.spaceBtwItems),
//                     TProductQuantityWithAddRemoveButton(),
//                   ],
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TProductPriceText(price: '256'),
//                   SizedBox(width: TSizes.spaceBtwItems),
//                 ],
//               ),
//             ],
//           ),
//           separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
//           itemCount: 10,
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(TSizes.defaultSpace),
//         child: ElevatedButton(
//           onPressed: () {},
//           child: const Text('Checkout \$256.0'),
//         ),
//       ),
//     );
//   }
// }
