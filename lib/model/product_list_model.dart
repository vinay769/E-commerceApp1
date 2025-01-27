import 'dart:math';

import 'package:ecommerce_app/utils/constants/image_string.dart';

//this was done manually by me instead of this we can use APIs

class ProductListModel {
  final String? id;
  final String name;
  final String? description;
  final double price;
  final String imageUrl;

  ProductListModel(
      {this.id,
      required this.name,
      this.description,
      required this.price,
      required this.imageUrl});
}

final int randonValue = Random(999).nextInt(800);

List<ProductListModel> productList = [
  ProductListModel(
    id: '1',
    price: 99.0,
    name: 'Apple',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    imageUrl: ImageString.fruits1,
  ),
  ProductListModel(
    id: '2',
    price: 99.0,
    name: 'Mango',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    imageUrl: ImageString.fruits2,
  ),
  ProductListModel(
    id: '3',
    price: 99.0,
    name: 'Watermelon',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    imageUrl: ImageString.fruits3,
  ),
  ProductListModel(
    id: '4',
    price: 99.0,
    name: 'Strawberry',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    imageUrl: ImageString.fruits4,
  ),
  ProductListModel(
    id: '5',
    price: 1.99,
    name: 'Apple Watch',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    imageUrl: ImageString.watch1,
  ),
  ProductListModel(
    id: '6',
    name: 'Rolex',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.watch2,
  ),
  ProductListModel(
    id: '7',
    name: 'Titen',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.watch3,
  ),
  ProductListModel(
    id: '8',
    name: 'fastrack',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.watch4,
  ),
  ProductListModel(
    id: '9',
    name: 'Dior Bag',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.bag1,
  ),
  ProductListModel(
    id: '10',
    name: 'LV Bag',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.bag2,
  ),
  ProductListModel(
    id: '11',
    name: 'Disel Bag',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.bag3,
  ),
  ProductListModel(
    id: '12',
    name: 'Dior2 Bag',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.bag4,
  ),
  ProductListModel(
    id: '13',
    name: 'Lenevo',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.laptop1,
  ),
  ProductListModel(
    id: '14',
    name: 'Asus',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.laptop2,
  ),
  ProductListModel(
    id: '15',
    name: 'Acer',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.laptop3,
  ),
  ProductListModel(
    id: '16',
    name: 'AMD',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.laptop4,
  ),
  ProductListModel(
    id: '17',
    name: 'Furniture Set',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.furniture1,
  ),
  ProductListModel(
    id: '18',
    name: 'Sofa',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.furniture2,
  ),
  ProductListModel(
    id: '19',
    name: 'Dress 1',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.dress1,
  ),
  ProductListModel(
    id: '20',
    name: 'Dress 2',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.dress2,
  ),
  ProductListModel(
    id: '21',
    name: 'Dress 3',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.dress3,
  ),
  ProductListModel(
    id: '22',
    name: 'Dress 4',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.dress4,
  ),
  ProductListModel(
    id: '23',
    name: 'Acisc',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.sneakers1,
  ),
  ProductListModel(
    id: '24',
    name: 'Nike',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 599.99,
    imageUrl: ImageString.sneakers2,
  ),
  ProductListModel(
    id: '25',
    name: 'Gucchi',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 999.99,
    imageUrl: ImageString.sneakers3,
  ),
  ProductListModel(
    id: '26',
    name: 'Jorden',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
    price: 799.99,
    imageUrl: ImageString.sneakers4,
  ),
];
