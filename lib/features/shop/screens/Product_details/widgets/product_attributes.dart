import 'dart:html';

import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/productprice_text.dart';
import 'package:t_store/common/widgets/t_product_titletext.dart';
import 'package:t_store/common/widgets/t_rounded_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price', smallSize: true),
                          Text('\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const TProductPriceText(price: '20'),
                    ],
                  ),
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )

                    ],
                  )
                ],
              ),
              const TProductTitleText(title: 'This is the Description of the Product and it can go upto max 4 lines.',
              smallSize: true,
              maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          children: [
             TSectionHeading(title: 'Colors'),
             SizedBox(height: TSizes.spaceBtwItems/2),
            Wrap(
              children: [
                TChoiceChip(text: 'Green', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: true,onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          children: [
            TSectionHeading(title: 'Sizes'),
            SizedBox(height: TSizes.spaceBtwItems/2),
            Wrap(
              children: [
                TChoiceChip(text: 'EU 34', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: true,onSelected: (value){}),
              ],
            )
          ],
        )
      ],
    );
  }
}


