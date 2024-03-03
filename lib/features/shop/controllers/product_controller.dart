// import 'package:get/get.dart';
//
// import '../models/brand_model.dart';
// import '../models/product_model.dart';
//
// class ProductController extends GetxController {
//   static ProductController get instance => Get.find();
//   final isLoading = false.obs;
//   RxList<ProductModel> featuredProducts = <ProductModel>[].obs;
//
//   @override
//   void onInit() {
//     fetchFeaturedProducts();
//     super.onInit();
//   }
//
//   void fetchFeaturedProducts() async {
//     try {
//       // Show loader while loading Products
//       isLoading.value = true;
//       // Simulate fetching data (replace with your actual data fetching logic)
//       await Future.delayed(Duration(seconds: 2));
//       // Dummy data, replace with your actual data
//       List<ProductModel> dummyData = [
//         ProductModel(
//           id: '1',
//           title: 'Product 1',
//           stock: 10,
//           isFeatured: true,
//           price: 99.99,
//           salePrice: 79.99,
//           thumbnail: 'thumbnail_url',
//           categoryId: 'category_id',
//           description: 'Product description',
//           productType: 'product_type',
//           brand: BrandModel(id: 'brand_id', name: 'Brand', image: ''),
//           images: ['image_url1', 'image_url2'],
//           productAttributes: [],
//           productVariations: [],
//         ),
//         // Add more dummy data as needed
//       ];
//       // Update featuredProducts with fetched data
//       featuredProducts.assignAll(dummyData);
//     } catch (e) {
//       // Handle error if any
//       print('Error fetching featured products: $e');
//     } finally {
//       // Hide loader after fetching Products
//       isLoading.value = false;
//     }
//   }
// }

// original code need to be modified as the vid moves ahead and further
import 'dart:html';

import 'package:get/get.dart';
import '../models/product_model.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  final isLoading = false.obs;
  final productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchFeaturedProducts();
    super.onInit();
  }

  void fetchFeaturedProducts() async {
    try {
      // Show loader while loading Products
      isLoading.value = true;

      //fetch products
      final products = await productRepository.getFeaturedProducts();
      //assign products
      featuredProducts.assignAll(products);
    } catch (e) {
      Text('hello');
    } finally {
      isLoading.value = false;
    }
  }
}