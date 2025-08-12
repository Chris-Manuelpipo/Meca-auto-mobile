import 'package:application/models/product/product_category/product_category_model.dart';
import 'package:application/models/product/product_model.dart';
import 'package:application/models/product/product_type/product_type_model.dart';
import 'package:application/models/product/product_variant/product_variant_model.dart';

class Image {
  final String? createdBy;
  final DateTime? createdDate;
  final String? imageCode;
  final String? imageSource;
  final String? imageURL;
  final bool? isDefault;
  final String? lastModifiedBy;
  final DateTime? lastModifiedDate;
  final Product? product;
  final ProductCategory? productCategory;
  final ProductType? productType;
  final ProductVariant? productVariant;
  final int? state;

  Image({
    this.createdBy,
    this.createdDate,
    this.imageCode,
    this.imageSource,
    this.imageURL,
    this.isDefault,
    this.lastModifiedBy,
    this.lastModifiedDate,
    this.product,
    this.productCategory,
    this.productType,
    this.productVariant,
    this.state,
  });
}
