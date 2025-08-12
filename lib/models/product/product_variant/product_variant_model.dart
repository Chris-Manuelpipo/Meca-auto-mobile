import 'package:application/models/images/image_model.dart';
import 'package:application/models/product/product_model.dart';

class ProductVariant {
  final String? createdBy;
  final DateTime? createdDate;
  final List<Image>? images;
  final bool? isSponsored;
  final String? lastModifiedBy;
  final DateTime? lastModifiedDate;
  final Product? product;
  final List<dynamic>? productAttributeValues; // Remplace dynamic par la classe correspondante si disponible
  final double? productPrice;
  final double? productVariantAverageNote;
  final String? productVariantCode;
  final String? productVariantDescription;
  final String? productVariantLabel;
  final int? productVariantTotalNumberOfNotation;
  final List<dynamic>? productVariantTranslations; // Remplace dynamic par la classe correspondante si disponible
  final int? productVariantView;
  final String? seoDescription;
  final String? seoTitle;
  final int? state;
  final List<dynamic>? stocks; // Remplace dynamic par la classe correspondante si disponible

  ProductVariant({
    this.createdBy,
    this.createdDate,
    this.images,
    this.isSponsored,
    this.lastModifiedBy,
    this.lastModifiedDate,
    this.product,
    this.productAttributeValues,
    this.productPrice,
    this.productVariantAverageNote,
    this.productVariantCode,
    this.productVariantDescription,
    this.productVariantLabel,
    this.productVariantTotalNumberOfNotation,
    this.productVariantTranslations,
    this.productVariantView,
    this.seoDescription,
    this.seoTitle,
    this.state,
    this.stocks,
  });
}
