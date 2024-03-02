// import 'package:get/get.dart';
// import 'package:t_store/data/repositories/categories/category_repository.dart';
//
// class BannerController extends GetxController{
//
//   //variables
// final isLoading = false.obs;
//   final carouselCurrentIndex = 0.obs;
//
//   //update page nav data
// void updatePageIndicator(index){
//   carouselCurrentIndex.value =index;
// }
//
// //fetch banners
// try{
//   isLoading.value = true;
//   // final categories = await CategoryRepository.getAllCategories();
//   // allCategories.assignAll(categories);
//   // featuredCategories.assignAll(allCategories.where((category)=>category.isFeatured && category.parentId.isEmpty).take(0).toList());
//   }catch(e){
//   Tloaders.errorSnackBar(title:'oh snap' , message:e.toString());
//   }finally{
//   isLoading.value = false;
//   }
// }
import 'dart:html';

import 'package:get/get.dart';
import 'package:t_store/data/repositories/banners/banner_repository.dart';
import '../../../utils/popups/loaders.dart';
import '../models/banner_model.dart';

class BannerController extends GetxController {
  /// Variables
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;


  @override
  void onInit(){
    fetchBanners();
    super.onInit();


  }

  /// Update Page Navigational Dots
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  /// Fetch Banners
  Future<void> fetchBanners() async {
    try {
      // Show Loader while loading categories
      isLoading.value = true;
      // Perform fetching banners operation here...
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();
      //assign banners
      this.banners.assignAll(banners);
    } catch (e) {
      Text("error");
    } finally {
      // Remove Loader
      isLoading.value = false;
    }
  }
}

class TLoaders {
}
