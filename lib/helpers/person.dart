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
            itemImage: 'https://sun9-72.userapi.com/impg/R-7_WvCz_8fj4Ugkzk_M0xCHPyvL0-p0hnMU5g/3jwdrNZjTLA.jpg?size=1000x1000&quality=96&sign=9e0426a0839444c21ef0d68134b39f0f&type=album',
            itemPrice: '25000 р',
            itemDescribtion: 'Focusrite Scarlett 2i2 3d Gen — профессиональная внешняя звуковая карта с аналоговыми предусилителями.'
          ),
          Item(
            itemName: 'Coiled cable',
            itemImage: 'https://sun9-70.userapi.com/impg/dAg2ZNHFiJnso4X31-C31HnKmKKZoAkGn56WUA/5QxqBt9OLL0.jpg?size=300x300&quality=96&sign=505ece36f57338d10dd5f56a31d92ee1&type=album',
            itemPrice: '3000 р',
            itemDescribtion: 'Кастомный провод для клавиатуры белого цвета. Для придания рабочему столу уникальности'
          ),
          Item(
            itemName: 'Audioengine A2+',
            itemImage: 'https://sun9-41.userapi.com/impg/vkXZI1F1RRLaFprh56txX7VVas8JFEB5LlPKtA/pVIG8VU3e_8.jpg?size=456x456&quality=96&sign=f686381700cafae42cc07f7d33ba850b&type=album',
            itemPrice: '19990 р',
            itemDescribtion: 'Audioengine А2+ Wireless Настольная активная акустика премиум-класса c Bluetooth'
          ),
          Item(
            itemName: 'Logitech mx master 3',
            itemImage: 'https://sun9-15.userapi.com/impg/vrOILUCLx8SgS-a1RijuBfTg6zMGwPd3lFa-Yg/BaOemiUVuJM.jpg?size=1000x1000&quality=96&sign=2720566158467a366ce15f27c220604b&type=album',
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
    nickname: 'nlo1.0',
    name: 'Даша',
    surname: 'Малишевская',
    image: 'lib/assets/dasha.jpg',
    wishes: [
      Wishlist(
        wishlistName: 'День рождения',
        items: [
          Item(
            itemName: 'Подставка ikea',
            itemImage: 'https://sun9-41.userapi.com/impg/TJIS2ws3Uxx3DqhEXtRBUDEfPd88T-ZCPrxK6g/bGC7Q7BQk0c.jpg?size=300x300&quality=96&sign=2e50f357ca5b5363d3dc2dbabe9e5182&type=album',
            itemPrice: '1299 р',
            itemDescribtion: 'Удобная'
          ),
          Item(
            itemName: 'Лампа ikea',
            itemImage: 'https://sun9-14.userapi.com/impg/Y6_AEJuR62lbAIruMOW5XNhVlNKcuAw5iWH80A/3vKSI72Gev8.jpg?size=300x300&quality=96&sign=846d300b011d74d86c9776e00d05cb25&type=album',
            itemPrice: '6990 р',
            itemDescribtion: ''
          ),
          Item(
            itemName: 'Чехол Ipad Pro',
            itemImage: 'https://sun9-45.userapi.com/impg/oU-pGhWtc8KbMxTQ088H1utZvic4t-QGTKCPdw/0mxDnDBroyA.jpg?size=300x240&quality=96&sign=b7bf67ac0424f6893e8a6b71f2375abb&type=album',
            itemPrice: '19990 р',
            itemDescribtion: ''
          ),
          Item(
            itemName: 'Airpods Pro',
            itemImage: 'https://sun9-4.userapi.com/impg/1buM7mRKPgTfdRrsOCx5GvbcH-JEGWomfUc4pA/INJd6OZt6Ew.jpg?size=255x300&quality=96&sign=f94f92f2b8e60863f691c9b57166fc44&type=album',
            itemPrice: '25990 р',
            itemDescribtion: ''
          )
        ]
      )
    ]
  ),
  Person(
    nickname: 'betsuno',
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
    nickname: 'egrkino',
    name: 'Егор',
    surname: 'Корягин',
    image: 'lib/assets/egr.jpg',
    wishes: []
  ),
  Person(
    nickname: 'mtzzzn',
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

