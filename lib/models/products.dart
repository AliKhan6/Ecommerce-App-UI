
/// Home screen Products class
class Products {
  final String image;
  final String name;
  final String brand;
  final double price;
  final String date;

  Products({this.image, this.name, this.brand, this.price, this.date});
}

List<Products> products = [womenHat, veroModoShoes,adidasWhiteShoes,flowerPack,nikeShoes];

final Products womenHat = Products(
  image: 'images/homepage/women_hat.png',
  name: 'Hats for women',
  brand: 'Nike',
  price: 20.45,
  date: '2020-06-25'
);

final Products veroModoShoes = Products(
    image: 'images/homepage/vero_modo_shoes.png',
    name: 'Vero Modo Shoes',
    brand: 'John & Jonhs Flowers',
    price: 20.45,
    date: '2020-06-25'
);

final Products adidasWhiteShoes = Products(
    image: 'images/homepage/adidas_white_Shoes.png',
    name: 'Adidas White Shoes',
    brand: 'Adidas co.',
    price: 20.45,
    date: '2020-06-25'
);

final Products flowerPack = Products(
    image: 'images/homepage/flowers_pack.png',
    name: 'Flowers Pack',
    brand: 'Xiaogo',
    price: 20.45,
    date: '2020-06-25'
);

final Products nikeShoes = Products(
    image: 'images/homepage/nike_shoes.png',
    name: 'Nike Shoes',
    brand: 'Jack',
    price: 20.45,
    date: '2020-06-25'
);