class ProductType {
  final String? createdBy;
  final DateTime? createdDate;
  final List<dynamic>? images;
  final String? lastModifiedBy;
  final DateTime? lastModifiedDate;
  final String? productTypeCode;
  final String? productTypeDescription;
  final String productTypeLabel; // obligatoire *
  final List<dynamic>? productTypeTranslations;
  final int? productTypeView;
  final int? state;

  ProductType({
    this.createdBy,
    this.createdDate,
    this.images,
    this.lastModifiedBy,
    this.lastModifiedDate,
    this.productTypeCode,
    this.productTypeDescription,
    required this.productTypeLabel,
    this.productTypeTranslations,
    this.productTypeView,
    this.state,
  });
}