import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String image;
  final String name;
  final String parentId;
  final bool isFeatured;

  CategoryModel({
    required this.id,
    required this.image,
    required this.name,
    required this.parentId,
    required this.isFeatured,
  });
}

class ProductModel {
  final String id;
  final String title;
  final int stock;
  final double price;
  final bool isFeatured;
  final String thumbnail;
  final String description;
  final BrandModel brand;
  final List<String> images;
  final double salePrice;
  final String sku;
  final String categoryId;
  final List<ProductAttributeModel> productAttributes;
  final List<ProductVariationModel> productVariations;

  ProductModel({
    required this.id,
    required this.title,
    required this.stock,
    required this.price,
    required this.isFeatured,
    required this.thumbnail,
    required this.description,
    required this.brand,
    required this.images,
    required this.salePrice,
    required this.sku,
    required this.categoryId,
    required this.productAttributes,
    required this.productVariations,
  });
}

class BrandModel {
  final String id;
  final String image;
  final String name;
  final int productsCount;
  final bool isFeatured;

  BrandModel({
    required this.id,
    required this.image,
    required this.name,
    required this.productsCount,
    required this.isFeatured,
  });
}

class ProductAttributeModel {
  final String name;
  final List<String> values;

  ProductAttributeModel({
    required this.name,
    required this.values,
  });
}

class ProductVariationModel {
  final String id;

  ProductVariationModel({
    required this.id,
  });
}

class TImages {
  static const String furnitureIcon = 'assets/images/furniture_icon.png';
  static const String electronicsIcon = 'assets/images/electronics_icon.png';
  static const String clothIcon = 'assets/images/cloth_icon.png';
  static const String nikeLogo = 'assets/images/nike_logo.png';
  static const String productImage1 = 'assets/images/product_image1.png';
  static const String productImage23 = 'assets/images/product_image23.png';
  static const String productImage21 = 'assets/images/product_image21.png';
  static const String productImage9 = 'assets/images/product_image9.png';
}

List<CategoryModel> categories = [
  CategoryModel(id: '11', image: TImages.furnitureIcon, name: 'Bedroom furniture', parentId: '5', isFeatured: false),
  CategoryModel(id: '12', image: TImages.furnitureIcon, name: 'Kitchen furniture', parentId: '5', isFeatured: false),
  CategoryModel(id: '13', image: TImages.furnitureIcon, name: 'Office furniture', parentId: '5', isFeatured: false),
  CategoryModel(id: '14', image: TImages.electronicsIcon, name: 'Laptop', parentId: '2', isFeatured: false),
  CategoryModel(id: '15', image: TImages.electronicsIcon, name: 'Mobile', parentId: '2', isFeatured: false),
  CategoryModel(id: '16', image: TImages.clothIcon, name: 'Shirts', parentId: '3', isFeatured: false),
];

List<ProductModel> products = [
  ProductModel(
    id: '001',
    title: 'Green Nike sports shoe',
    stock: 15,
    price: 135,
    isFeatured: true,
    thumbnail: TImages.productImage1,
    description: 'Green Nike sports shoe',
    brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike', productsCount: 265, isFeatured: true),
    images: [TImages.productImage1, TImages.productImage23, TImages.productImage21, TImages.productImage9],
    salePrice: 30,
    sku: 'ABR4568',
    categoryId: '1',
    productAttributes: [
      ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
      ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
    ],
    productVariations: [
      ProductVariationModel(id: '1'),
    ],
  ),
];

//import 'package:flutter/material.dart';
//
// class CategoryModel {
//   final String id;
//   final String image;
//   final String name;
//   final String parentId;
//   final bool isFeatured;
//
//   CategoryModel({
//     required this.id,
//     required this.image,
//     required this.name,
//     required this.parentId,
//     required this.isFeatured,
//   });
// }
//
// class ProductModel {
//   final String id;
//   final String title;
//   final int stock;
//   final double price;
//   final bool isFeatured;
//   final String thumbnail;
//   final String description;
//   final BrandModel brand;
//   final List<String> images;
//   final double salePrice;
//   final String sku;
//   final String categoryId;
//   final List<ProductAttributeModel> productAttributes;
//   final List<ProductVariationModel> productVariations;
//
//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.stock,
//     required this.price,
//     required this.isFeatured,
//     required this.thumbnail,
//     required this.description,
//     required this.brand,
//     required this.images,
//     required this.salePrice,
//     required this.sku,
//     required this.categoryId,
//     required this.productAttributes,
//     required this.productVariations,
//   });
// }
//
// class BrandModel {
//   final String id;
//   final String image;
//   final String name;
//   final int productsCount;
//   final bool isFeatured;
//
//   BrandModel({
//     required this.id,
//     required this.image,
//     required this.name,
//     required this.productsCount,
//     required this.isFeatured,
//   });
// }
//
// class ProductAttributeModel {
//   final String name;
//   final List<String> values;
//
//   ProductAttributeModel({
//     required this.name,
//     required this.values,
//   });
// }
//
// class ProductVariationModel {
//   final String id;
//
//   ProductVariationModel({
//     required this.id,
//   });
// }
//
// class TImages {
//   static const String furnitureIcon = 'assets/images/furniture_icon.png';
//   static const String electronicsIcon = 'assets/images/electronics_icon.png';
//   static const String clothIcon = 'assets/images/cloth_icon.png';
//   static const String nikeLogo = 'assets/images/nike_logo.png';
//   static const String productImage1 = 'assets/images/product_image1.png';
//   static const String productImage23 = 'assets/images/product_image23.png';
//   static const String productImage21 = 'assets/images/product_image21.png';
//   static const String productImage9 = 'assets/images/product_image9.png';
// }
//
// List<CategoryModel> categories = [
//   CategoryModel(id: '11', image: TImages.furnitureIcon, name: 'Bedroom furniture', parentId: '5', isFeatured: false),
//   CategoryModel(id: '12', image: TImages.furnitureIcon, name: 'Kitchen furniture', parentId: '5', isFeatured: false),
//   CategoryModel(id: '13', image: TImages.furnitureIcon, name: 'Office furniture', parentId: '5', isFeatured: false),
//   CategoryModel(id: '14', image: TImages.electronicsIcon, name: 'Laptop', parentId: '2', isFeatured: false),
//   CategoryModel(id: '15', image: TImages.electronicsIcon, name: 'Mobile', parentId: '2', isFeatured: false),
//   CategoryModel(id: '16', image: TImages.clothIcon, name: 'Shirts', parentId: '3', isFeatured: false),
// ];
//
// List<ProductModel> products = [
//   ProductModel(
//     id: '001',
//     title: 'Green Nike sports shoe',
//     stock: 15,
//     price: 135,
//     isFeatured: true,
//     thumbnail: TImages.productImage1,
//     description: 'Green Nike sports shoe',
//     brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike', productsCount: 265, isFeatured: true),
//     images: [TImages.productImage1, TImages.productImage23, TImages.productImage21, TImages.productImage9],
//     salePrice: 30,
//     sku: 'ABR4568',
//     categoryId: '1',
//     productAttributes: [
//       ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
//       ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//     ],
//     productVariations: [
//       ProductVariationModel(id: '1'),
//     ],
//   ),
// ];
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Demo Home Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Categories and Products Data:',
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: categories.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(categories[index].name),
//                     subtitle: Text('ID: ${categories[index].id}'),
//                     leading: Image.asset(categories[index].image),
//                   );
//                 },
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: products.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(products[index].title),
//                     subtitle: Text('Price: \$${products[index].price.toString()}'),
//                     leading: Image.asset(products[index].thumbnail),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }