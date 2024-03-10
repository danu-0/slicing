import 'package:get/get.dart';

class Product {
  final String image;
  final String category;
  final String name;
  final double price;

  Product({
    required this.image,
    required this.category,
    required this.name,
    required this.price,
  });
}

class MyProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    // Data produk
    productList.addAll([
      Product(
        image: "assets/image_shoes2.png",
        category: "Hiking",
        name: "COURT VISION",
        price: 58.67,
      ),
      Product(
        image: "assets/image_shoes3.png",
        category: "Hiking",
        name: "TERREX URBAN LOW",
        price: 58.67,
      ),
      Product(
        image: "assets/image_shoes4.png",
        category: "Hiking",
        name: "SL- 20 SHOES",
        price: 58.67,
      ),
      Product(
        image: "assets/image.png",
        category: "hiking",
        name: "jordan",
        price: 58.67,
      ),
    ]);
    super.onInit();
  }

  List<String> getUniqueCategories() {
    // Mendapatkan daftar kategori unik dari produk
    List<String> categories = [];
    productList.forEach((product) {
      if (!categories.contains(product.category)) {
        categories.add(product.category);
      }
    });
    return categories;
  }

  List<Product> getProductsByCategory(String category) {
    // Mendapatkan produk berdasarkan kategori
    return productList
        .where((product) => product.category == category)
        .toList();
  }
}












// import 'package:get/get.dart';
// import 'package:flutter/material.dart';


// class Product {
//   final String image;
//   final String category;
//   final String name;
//   final double price;

//   Product({
//     required this.image,
//     required this.category,
//     required this.name,
//     required this.price,
//   });
// }
// class MyProductController extends GetxController {
//   var productList = <Map<String, dynamic>>[].obs;

//   @override
//   void onInit() {
//     // Data produk
//     productList.addAll([
//       {
//         "image": "assets/image_shoes2.png",
//         "category": "Hiking",
//         "name": "COURT VISION",
//         "price": "58,67",
//       },
//       {
//         "image": "assets/image_shoes3.png",
//         "category": "Hiking",
//         "name": "TERREX URBAN LOW",
//         "price": "58,67",
//       },
//       {
//         "image": "assets/image_shoes4.png",
//         "category": "Hiking",
//         "name": "SL- 20 SHOES",
//         "price": "58,67",
//       },
//       {
//         "image": "assets/image.png",
//         "category": "hiking",
//         "name": "jordan",
//         "price": "58,67",
//       },
//     ]);

//     super.onInit();
//   }

//   List<String> getUniqueCategories() {
//     // Mendapatkan daftar kategori unik dari produk
//     List<String> categories = [];
//     productList.forEach((product) {
//       if (!categories.contains(product['category'])) {
//         categories.add(product['category']);
//       }
//     });
//     return categories;
//   }

//   List<Product> getProductByCategory(String category) {
//     return productList
//         .where((product) => product.category == category)
//         .toList();
//   }
// }
