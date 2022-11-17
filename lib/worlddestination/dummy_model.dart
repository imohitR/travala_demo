final List<Category> categories = [
  Category(
    id: 1,
    name: 'asia',
    subCategories: [
      SubCategory(id: 11, name: 'Subcategory11', products: [
        Product(id: 111, name: 'destination', image: 'assets/veg.png'),
        Product(id: 112, name: 'destination', image: 'assets/veg.png'),
        Product(id: 113, name: 'destination', image: 'assets/veg.png'),
        Product(id: 114, name: 'destination', image: 'assets/veg.png'),
        Product(id: 115, name: 'destination', image: 'assets/veg.png'),
      ]),
    ],
  ),
  Category(
    id: 2,
    name: 'europe',
    subCategories: [
      SubCategory(id: 21, name: 'Subcategory21', products: [
        Product(id: 211, name: 'Product211', image: 'assets/images/cover.jpg'),
        Product(id: 212, name: 'Product212', image: 'assets/veg.png'),
        Product(id: 213, name: 'Product213', image: 'assets/veg.png'),
        Product(id: 214, name: 'Product214', image: 'assets/veg.png'),
        Product(id: 215, name: 'Product215', image: 'assets/veg.png'),
      ]),

      SubCategory(id: 23, name: 'Subcategory23', products: [
        Product(id: 231, name: 'Product231', image: 'assets/veg.png'),
        Product(id: 232, name: 'Product232', image: 'assets/veg.png'),
        Product(id: 233, name: 'Product233', image: 'assets/veg.png'),
        Product(id: 234, name: 'Product234', image: 'assets/veg.png'),
        Product(id: 235, name: 'Product235', image: 'assets/veg.png'),
      ]),
    ],
  ),
  Category(
    id: 3,
    name: 'america',
    subCategories: [
      SubCategory(id: 21, name: 'Subcategory21', products: [
        Product(id: 211, name: 'Product211', image: 'assets/images/cover.jpg'),
        Product(id: 212, name: 'Product212', image: 'assets/veg.png'),
        Product(id: 213, name: 'Product213', image: 'assets/veg.png'),
        Product(id: 214, name: 'Product214', image: 'assets/veg.png'),
        Product(id: 215, name: 'Product215', image: 'assets/veg.png'),
      ]),

    ],
  ),
  Category(
    id: 4,
    name: 'south africa',
    subCategories: [
      SubCategory(id: 21, name: 'Subcategory21', products: [
        Product(id: 211, name: 'Product211', image: 'assets/images/cover.jpg'),
        Product(id: 212, name: 'Product212', image: 'assets/veg.png'),
        Product(id: 213, name: 'Product213', image: 'assets/veg.png'),
        Product(id: 214, name: 'Product214', image: 'assets/veg.png'),
        Product(id: 215, name: 'Product215', image: 'assets/veg.png'),
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
