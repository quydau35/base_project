import 'package:clean_architect_riverpod/shared/globals.dart';

Map<String, dynamic> productListMap({int? skip}) => {
      "products": List.generate(productsPerPage, (index) => productMap),
      "total": 100,
      "skip": (skip ?? 0) + productsPerPage,
      "limit": productsPerPage,
    };
Map<String, dynamic> productMap = {
  "id": 1,
  "title": "iPhone 9",
  "description": "An apple mobile which is nothing like apple",
  "price": 549,
  "discountPercentage": 12.96,
  "rating": 4.69,
  "stock": 94,
  "brand": "Apple",
  "category": "smartphones",
  "thumbnail": "...",
  "images": ["...", "...", "..."]
};
