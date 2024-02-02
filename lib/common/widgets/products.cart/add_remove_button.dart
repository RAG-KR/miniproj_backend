import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../products/product_card_vertical.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width:70),
        const TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: Colors.black,
          // color: THelperFunctions.isDarkMode(context)
          //     ? TColors.white
          //     : TColors.black,
          backgroundColor: Colors.grey,
          // backgroundColor: THelperFunctions.isDarkMode(context)
          //     ? TColors.darkerGrey
          //     : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: Colors.black,
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
