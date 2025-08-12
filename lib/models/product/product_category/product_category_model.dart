class ProductCategory {
  final String title;
  final String image;

  ProductCategory({required this.title, required this.image});
}

final List<ProductCategory> categories = [
  ProductCategory(title: "Moteur", image: "assets/images/image1.jpeg"),
  ProductCategory(title: "Batterie", image: "assets/images/image1.jpeg"),
  ProductCategory(title: "Feux", image: "assets/images/image1.jpeg"),
  ProductCategory(title: "Filtre", image: "assets/images/image1.jpeg"),
  ProductCategory(title: "Radiateur", image: "assets/images/image1.jpeg"),
  ProductCategory(title: "Amortisseurs", image: "assets/images/image1.jpeg"),
];
