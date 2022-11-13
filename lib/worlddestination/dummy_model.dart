final List<Category> categories = [
  Category(
    id: 1,
    name: 'Category1',
    subCategories: [
      SubCategory(id: 11, name: 'Subcategory11', products: [
        Product(id: 111, name: 'Product111', image: 'assets/veg.png'),
        Product(id: 112, name: 'Product112', image: 'assets/veg.png'),
        Product(id: 113, name: 'Product113', image: 'assets/veg.png'),
        Product(id: 114, name: 'Product114', image: 'assets/veg.png'),
        Product(id: 115, name: 'Product115', image: 'assets/veg.png'),
      ]),
      SubCategory(id: 12, name: 'Subcategory12', products: [
        Product(id: 121, name: 'Product121', image: 'assets/veg.png'),
        Product(id: 122, name: 'Product122', image: 'assets/veg.png'),
        Product(id: 123, name: 'Product123', image: 'assets/veg.png'),
        Product(id: 124, name: 'Product124', image: 'assets/veg.png'),
        Product(id: 125, name: 'Product125', image: 'assets/veg.png'),
      ]),
      SubCategory(id: 13, name: 'Subcategory13', products: [
        Product(id: 131, name: 'Product131', image: 'assets/veg.png'),
        Product(id: 132, name: 'Product132', image: 'assets/veg.png'),
        Product(id: 133, name: 'Product133', image: 'assets/veg.png'),
        Product(id: 134, name: 'Product134', image: 'assets/veg.png'),
        Product(id: 135, name: 'Product135', image: 'assets/veg.png'),
      ]),
    ],
  ),
  Category(
    id: 2,
    name: 'Category2',
    subCategories: [
      SubCategory(id: 21, name: 'Subcategory21', products: [
        Product(id: 211, name: 'Product211', image: 'assets/images/cover.jpg'),
        Product(id: 212, name: 'Product212', image: 'assets/veg.png'),
        Product(id: 213, name: 'Product213', image: 'assets/veg.png'),
        Product(id: 214, name: 'Product214', image: 'assets/veg.png'),
        Product(id: 215, name: 'Product215', image: 'assets/veg.png'),
      ]),
      SubCategory(id: 22, name: 'Subcategory22', products: [
        Product(id: 221, name: 'Product221', image: 'assets/veg.png'),
        Product(id: 222, name: 'Product222', image: 'assets/veg.png'),
        Product(id: 223, name: 'Product223', image: 'assets/veg.png'),
        Product(id: 224, name: 'Product224', image: 'assets/veg.png'),
        Product(id: 225, name: 'Product225', image: 'assets/veg.png'),
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
