// import 'package:t_store/features/shop/models/product_attribute_model.dart';
// import 'package:t_store/features/shop/models/product_variation_model.dart';
//
// class ProductModel {
//   String id;
//   int stock;
//   String? sku;
//   double price;
//   String title;
//   DateTime? date;
//   double salePrice;
//   String thumbnail;
//   bool? isFeatured;
//   // BrandModel? brand;
//   String? description;
//   String? categoryId;
//   List<String>? images;
//   String productType;
//   List<ProductAttributeModel>? productAttributes;
//   List<ProductVariationModel>? productVariations;
//
//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.stock,
//     required this.price,
//     required this.thumbnail,
//     required this.productType,
//     this.sku,
//     // this.brand,
//     this.date,
//     this.images,
//     this.salePrice = 0.0,
//     this.isFeatured,
//     this.description,
//     this.categoryId,
//     this.productAttributes,
//     this.productVariations,
//   });
//
//   /// Create Empty func for clean code
//   static ProductModel empty() => ProductModel(
//     id: '',
//     title: '',
//     stock: 0,
//     price: 0,
//     thumbnail: '',
//     productType: '',
//   );
//
//   /// Json Format
//   Map<String, dynamic> toJson() {
//     return {
//       'SKU': sku,
//       'Title': title,
//       'Stock': stock,
//       'Price': price,
//       'Images': images ?? [],
//       'Thumbnail': thumbnail,
//       'SalePrice': salePrice,
//       'IsFeatured': isFeatured,
//       'CategoryId': categoryId,
//       // 'Brand': brand!.toJson(),
//       'Description': description,
//       'ProductType': productType,
//       'ProductAttributes': productAttributes != null
//           ? productAttributes!.map((e) => e.toJson()).toList()
//           : [],
//       'ProductVariations': productVariations != null
//           ? productVariations!.map((e) => e.toJson()).toList()
//           : [],
//     };
//   }
//
//   /// Map Json oriented document snapshot from Firebase to Model
//   factory ProductModel.fromJson(Map<String, dynamic> document) {
//     // Implement this according to your requirements.
//     return ProductModel.empty(); // Placeholder, replace with actual implementation
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_store/features/shop/models/product_attribute_model.dart';
import 'package:t_store/features/shop/models/product_variation_model.dart';

import 'brand_model.dart';

class ProductModel {
  String id;
  String? sku;
  String title;
  int stock;
  bool isFeatured;
  double price;
  double salePrice;
  String thumbnail;
  String categoryId;
  String description;
  String productType;
  BrandModel brand;
  List<String> images;
  List<ProductAttributeModel> productAttributes;
  List<ProductVariationModel> productVariations;

  ProductModel({
    required this.id,
    this.sku,
    required this.title,
    required this.stock,
    required this.isFeatured,
    required this.price,
    required this.salePrice,
    required this.thumbnail,
    required this.categoryId,
    required this.description,
    required this.productType,
    required this.brand,
    required this.images,
    required this.productAttributes,
    required this.productVariations,
  });

  /// Map Json oriented document snapshot from Firebase to Model
  factory ProductModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if(document.data() == null) return ProductModel.empty();
    final data = document.data()!;
    return ProductModel(
      id: document.id,
      sku: data['SKU'],
      title: data['Title'],
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      thumbnail: data['Thumbnail'] ?? '',
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      productType: data['ProductType'] ?? '',
      brand: BrandModel.fromJson(data['Brand']),
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map((e) => ProductAttributeModel.fromJson(e))
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
    );
  }

  /// Map Json-oriented document snapshot from Firebase to Model
  factory ProductModel.fromQuerySnapshot(QueryDocumentSnapshot<Object?> document) {
    final data = document.data() as Map<String, dynamic>;
    return ProductModel(
      id: document.id,
      sku: data['SKU'] ?? '',
      title: data['Title'] ?? '',
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      thumbnail: data['Thumbnail'] ?? '',
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      productType: data['ProductType'] ?? '',
      brand: BrandModel.fromJson(data['Brand'] ?? {}),
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map((e) => ProductAttributeModel.fromJson(e))
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
    );
  }

  static ProductModel empty() => ProductModel(
    id: '',
    title: '',
    stock: 0,
    isFeatured: false,
    price: 0.0,
    salePrice: 0.0,
    thumbnail: '',
    categoryId: '',
    description: '',
    productType: '',
    brand: BrandModel(id: '', image: '', name: '', productsCount: 0, isFeatured: false),
    images: [],
    productAttributes: [],
    productVariations: [],
  );
}