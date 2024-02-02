import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../t_product_titletext.dart';
import '../t_rounded_images.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Nike',textAlign: TextAlign.start,),
              const Flexible(child: TProductTitleText(title: 'Black sports shoes',maxLines: 1,),),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text:'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text:' Green',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text:' Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text:' UK 08',style: Theme.of(context).textTheme.bodyLarge),

                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
