import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/products/product_card_vertical.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/layouts/gridlayout.dart';
import 'package:t_store/features/authentication/controllers/category_controller.dart';
import 'package:t_store/features/authentication/controllers/home/home_controller.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/subcatagories/sub_catagories.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/t_rounded_images.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/product_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    // final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        ThomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        onPageChanged: (index, _) =>
                            controller.updatePageIndicator(index),
                        viewportFraction: 1,
                      ),
                      items: const [
                        TRoundedImage(imageUrl: TImages.promoBanner1),
                        TRoundedImage(imageUrl: TImages.promoBanner2),
                        TRoundedImage(imageUrl: TImages.promoBanner3),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Center(
                      child: Obx(
                        () => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < 3; i++)
                              TCircularContainer(
                                width: 20,
                                height: 4,
                                margin: EdgeInsets.only(right: 10),
                                backgroundColor:
                                    controller.carousalCurrentIndex.value == i
                                        ? TColors.primary
                                        : TColors.grey,
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Obx((){
                      if (controller.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(), // Add CircularProgressIndicator here
                        );
                      }
                      if(controller.featuredProducts.isEmpty){
                        return const Center(child: Text("no data found"));
                      }
                      return TGridLayout(itemCount: controller.featuredProducts.length, itemBuilder: (_,index)=> TProductCardVertical(product:controller.featuredProducts[index]),
                      );
                    })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ThomeCategories extends StatelessWidget {
  const ThomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(
        (){
          return SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categoryController.featuredCategories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final category = categoryController.featuredCategories[index];
                return TVerticalImageText(
                  image: category.image,
                  title: category.name,
                  // image: TImages.productImage1,
                  // title: 'shoes',
                  onTap: () => Get.to(()=>const SubCatagoriesScreen()),

                );
              },
            ),
          );
        }
    );
  }
}
