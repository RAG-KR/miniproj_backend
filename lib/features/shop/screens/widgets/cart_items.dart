import 'package:flutter/cupertino.dart';

import '../../../../common/widgets/productprice_text.dart';
import '../../../../common/widgets/products.cart/add_remove_button.dart';
import '../../../../common/widgets/products.cart/cart_item.dart';
import '../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => const Column(
              children: [
                TCartItem(),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
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
        itemCount: 10);
  }
}
