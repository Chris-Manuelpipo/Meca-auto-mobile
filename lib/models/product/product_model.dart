import 'package:application/models/product/product_category/product_category_model.dart';
import 'package:application/models/product/product_type/product_type_model.dart';

class Product {
  final String createdBy;
  final DateTime createdDate;
  final List<String>
  images; // Liste de chemins ou URLs d'images (à adapter si tu as un model Image)
  final String lastModifiedBy;
  final DateTime lastModifiedDate;
  final List<dynamic>
  productAttributeValues; // Remplace dynamic par un vrai type si tu as
  final ProductCategory productCategory;
  final String productCode;
  final String productDescription;
  final String productLabel;
  final double productPrice;
  final List<dynamic>
  productTranslations; // Remplace dynamic par un vrai type si tu as
  final ProductType productType;
  final List<dynamic>
  productVariants; // Remplace dynamic par un vrai type si tu as
  final String seoDescription;
  final String seoTitle;
  final int state;

  Product({
    required this.createdBy,
    required this.createdDate,
    required this.images,
    required this.lastModifiedBy,
    required this.lastModifiedDate,
    required this.productAttributeValues,
    required this.productCategory,
    required this.productCode,
    required this.productDescription,
    required this.productLabel,
    required this.productPrice,
    required this.productTranslations,
    required this.productType,
    required this.productVariants,
    required this.seoDescription,
    required this.seoTitle,
    required this.state,
  });
}

final List<Product> products = [
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
  Product(
    createdBy: "chris",
    createdDate: DateTime.utc(2025, 12, 8),
    images: ["assets/images/image1.jpeg"],
    lastModifiedBy: "chris",
    lastModifiedDate: DateTime.utc(2025, 12, 8),
    productAttributeValues: [],
    productCategory: ProductCategory(
      title: "Moteur",
      image: "assets/images/image1.jpeg",
    ),
    productCode: "productCode",
    productDescription: "productDescription",
    productLabel: "productLabel",
    productPrice: 100,
    productTranslations: [],
    productType: ProductType(productTypeLabel: "productTypeLabel"),
    productVariants: [],
    seoDescription: "seoDescription",
    seoTitle: "seoTitle",
    state: 1,
  ),
];
