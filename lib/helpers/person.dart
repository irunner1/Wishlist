import 'package:testwish/helpers/wishlist.dart';
import 'package:testwish/helpers/item.dart';


class Person {
  String nickname;
  String name;
  String surname;
  String image;
  List<Wishlist> wishes;

  Person({
    required this.name,
    required this.surname,
    required this.nickname,
    required this.image,
    required this.wishes
  });
}

var user = [
  Person(
    nickname: 'atsydaiu',
    name: 'Артём',
    surname: 'Пучков',
    image: 'lib/assets/me.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'День рождения',
        items: [
          Item(
            itemName: 'Focusrite Scarlett 2i2',
            itemImage: '',
            itemPrice: '25000 р',
            itemDescribtion: 'Focusrite Scarlett 2i2 3d Gen — профессиональная внешняя звуковая карта с аналоговыми предусилителями.'
          ),
          Item(
            itemName: 'Coiled cable',
            itemImage: '',
            itemPrice: '3000 р',
            itemDescribtion: 'Кастомный провод для клавиатуры белого цвета. Для придания рабочему столу уникальности'
          ),
          Item(
            itemName: 'Audioengine A2+',
            itemImage: '',
            itemPrice: '19990 р',
            itemDescribtion: 'Audioengine А2+ Wireless Настольная активная акустика премиум-класса c Bluetooth'
          ),
          Item(
            itemName: 'Logitech mx master 3',
            itemImage: '',
            itemPrice: '9000 р',
            itemDescribtion: 'Беспроводная мышь Logitech MX Master 3 создана для настоящих профессионалов.'
          )
        ]
      ),
      Wishlist(
        wishlistName: 'Новый год',
        items: []
      )
    ]
  ),
];

var people = [
  Person(
    nickname: 'atsydaiu',
    name: 'Даша',
    surname: 'Малишевская',
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
    nickname: 'atsydaiu',
    name: 'Елизавета',
    surname: 'Зарбаилова',
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
    nickname: 'atsydaiu',
    name: 'Егор',
    surname: 'Корягин',
    image: 'lib/assets/egr.jpg',
    wishes: [
      Wishlist(
        wishlistName: '',
        items: []
      )
    ]
  ),
  Person(
    nickname: 'atsydaiu',
    name: 'Антон',
    surname: 'Матизен',
    image: 'lib/assets/anto.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'Хочу',
        items: []
      )
    ]
  ),
];

