final List<Category> categories = [
  Category(
    id: 1,
    name: 'ASIA',
    subCategories: [
      SubCategory(id: 11, name: '', products: [
        Product(id: 111, name: '', image: 'assets/ct.2.webp'),
        Product(id: 112, name: '', image: 'assets/ct.4.jpg'),
        Product(id: 113, name: '', image: 'assets/ct.5.jpg'),
        Product(id: 114, name: '', image: 'assets/ct.6.webp'),
        Product(id: 115, name: '', image: 'assets/ct.7.webp'),
      ]),
    ],
  ),
  Category(
    id: 2,
    name: 'EUROPE',
    subCategories: [
      SubCategory(id: 21, name: '', products: [
        Product(id: 211, name: '', image: 'assets/ct.2.webp'),
        Product(id: 212, name: '', image: 'assets/ct.11.jpg'),
        Product(id: 213, name: '', image: 'assets/ct.6.webp'),
        Product(id: 214, name: '', image: 'assets/ct.9.webp'),
        Product(id: 215, name: '', image: 'assets/ct.6.webp'),
      ]),
    ],
  ),
  Category(
    id: 3,
    name: 'AMERICA',
    subCategories: [
      SubCategory(id: 21, name: 'Subcategory21', products: [
        Product(id: 211, name: '', image: 'assets/ct.7.webp'),
        Product(id: 212, name: '', image: 'assets/ct.6.webp'),
        Product(id: 213, name: '', image: 'assets/ct.9.webp'),
        Product(id: 214, name: '', image: 'assets/ct.6.webp'),
        Product(id: 215, name: '', image: 'assets/ct.2.webp'),
      ]),
    ],
  ),
  Category(
    id: 4,
    name: 'SOUTH AFRICA',
    subCategories: [
      SubCategory(id: 21, name: '', products: [
        Product(id: 211, name: '', image: 'assets/ct.6.webp'),
        Product(id: 212, name: '', image: 'assets/ct.6.webp'),
        Product(id: 213, name: '', image: 'assets/ct.6.webp'),
        Product(id: 214, name: '', image: 'assets/ct.6.webp'),
        Product(id: 215, name: '', image: 'assets/ct.6.webp'),
      ]),
    ],
  ),
];

class Category {
  int id;
  String name;
  List<SubCategory> subCategories;

  Category({
    required this.id,
    required this.name,
    required this.subCategories,
  });
}

class SubCategory {
  int id;
  String name;
  List<Product> products;

  SubCategory({
    required this.id,
    required this.name,
    required this.products,
  });
}

class Product {
  int id;
  String name;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.image,
  });
}
