import 'package:testwish/helpers/wishlist.dart';
import 'package:testwish/helpers/item.dart';


class Person {
  String name;
  String image;
  List<Wishlist> wishes;

  Person({
    required this.name,
    required this.image,
    required this.wishes
  });
}

var people = [
  Person(
    name: 'Даша Малишевская',
    image: 'lib/assets/dasha.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'День рождения',
        items: [
          Item(
            itemName: 'Подставка ikea',
            itemImage: '',
            itemPrice: '1299 р',
            itemDescribtion: 'Удобная'
          ),
          Item(
            itemName: 'Лампа ikea',
            itemImage: '',
            itemPrice: '6990 р',
            itemDescribtion: ''
          ),
          Item(
            itemName: 'Чехол Ipad Pro',
            itemImage: '',
            itemPrice: '19990 р',
            itemDescribtion: ''
          ),
          Item(
            itemName: 'Airpods Pro',
            itemImage: '',
            itemPrice: '25990 р',
            itemDescribtion: ''
          )
        ]
      )
    ]
  ),
  Person(
    name: 'Елизавета Зарбаилова',
    image: 'lib/assets/lisa.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'День рождения',
        items: [
          Item(
            itemName: 'Mortal Kombat KE',
            itemImage: '',
            itemPrice: '2399 р',
            itemDescribtion: ''
          )
        ]
      )
    ]
  ),
  Person(
    name: 'Егор Корягин',
    image: 'lib/assets/egr.jpg',
    wishes: [
      Wishlist(
        wishlistName: '',
        items: []
      )
    ]
  ),
  Person(
    name: 'Антон Матизен',
    image: 'lib/assets/anto.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'Хочу',
        items: []
      )
    ]
  ),
];

