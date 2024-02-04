// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:t_store/utils/helpers/helper_functions.dart';
//
// import '../constants/colors.dart';
//
// class TFullScreenLoader {
//   static void openLoadingDialog(String text, String animation) {
//     showDialog(context: Get.overlayContext!,
//         barrierDismissible: false,
//         builder: (_) => PopScope(
//           canPop: false,
//           child: Container(
//             color: THelperFunctions.isDarkMode(Get.context!)?TColors.dark:TColors.white,
//             width: double.infinity,
//             height: double.infinity,
//             child: Column(
//               children: [
//                 const SizedBox(height: 250,),
//                 TAnimationLoaderWidget(text:text,animation,animation),
//               ],
//             ),
//           )
//         )
//     )
//   }
// }