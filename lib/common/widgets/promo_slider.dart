// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:t_store/common/widgets/t_rounded_images.dart';
//
// import '../../features/shop/controllers/banner_controller.dart';
// import '../../utils/constants/colors.dart';
// import '../../utils/constants/sizes.dart';
// import 'custom_shapes/containers/circular_container.dart';
//
// class TPromoSlider extends StatelessWidget {
//   const TPromoSlider({
//     Key? key,
//     // required this.banners,
//   }) : super(key: key);
//
//   // final List<String> banners;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(BannerController());
//
//     return Column(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             viewportFraction: 1,
//             onPageChanged: (index, _) => controller.updatePageIndicator(index),
//           ),
//           items: controller.banners
//               .map((banner) => TRoundedImage(
//                     imageUrl: banner.imageUrl,
//                     isNetworkImage: true,
//                     onPressed: () => Get.toNamed(banner.targetScreen),
//                   ))
//               .toList(),
//         ), // CarouselSlider
//         SizedBox(height: TSizes.spaceBtwItems),
//         Center(
//           child: Obx(
//             () => Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 for (int i = 0; i < controller.banners.length; i++)
//                   TCircularContainer(
//                     width: 20,
//                     height: 4,
//                     margin: const EdgeInsets.only(right: 10),
//                     backgroundColor: controller.carousalCurrentIndex.value == i
//                         ? TColors.primary
//                         : TColors.grey,
//                   ), // TCircularContainer
//               ],
//             ), // Row
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shimmer/shimmer.dart';
import 'package:t_store/common/widgets/t_rounded_images.dart';

import '../../features/shop/controllers/banner_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import 'custom_shapes/containers/circular_container.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());

    return Obx(() {
      if (controller.isLoading.value) return const TShimmerEffect(width : double.infinity , height:190);
      if(controller.banners.isEmpty){
        return const Center(child: Text('no data found!'),);
      }
      else{
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index),
              ),
              items: controller.banners
                  .map(
                    (banner) => TRoundedImage(
                  imageUrl: banner.imageUrl,
                  isNetworkImage: true,
                  onPressed: () => Get.toNamed(banner.targetScreen),
                ),
              )
                  .toList(),
            ), // CarouselSlider
            const SizedBox(height: TSizes.spaceBtwItems),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < controller.banners.length; i++)
                    TCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i
                          ? TColors.primary
                          : TColors.grey,
                    ), // TCircularContainer
                ],
              ), // Row
            ),
          ],
        );
      }

    });
  }
}


class TShimmerEffect extends StatelessWidget {
  final double width;
  final double height;

  const TShimmerEffect({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        color: Colors.white,
      ),
    );
  }
}
