class Menu {
  String name;
  String description;
  String price;
  String imageAsset;

  Menu({
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
  });
}

var menuList = [
  Menu(
    name: "Americano",
    description: "Kopi americano",
    price: "Rp. 15.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
  Menu(
    name: "Long Black",
    description: "Kopi long black",
    price: "Rp. 15.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
  Menu(
    name: "Espresso",
    description: "Kopi Espresso",
    price: "Rp. 12.000",
    imageAsset: "lib/assets/espresso.jpg",
  ),
  Menu(
    name: "Sanger",
    description: "Kopi Sanger",
    price: "Rp. 18.000",
    imageAsset: "lib/assets/sanger.jpg",
  ),
  Menu(
    name: "V60",
    description: "Kopi V60",
    price: "Rp. 25.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
  Menu(
    name: "Japanesse",
    description: "Kopi Japanesse",
    price: "Rp. 28.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
  Menu(
    name: "Vietnam Drip",
    description: "Kopi Vietnam Drip",
    price: "Rp. 15.000",
    imageAsset: "lib/assets/vietnam-drip.jpg",
  ),
  Menu(
    name: "Kopi Lemon",
    description: "Kopi Lemon",
    price: "Rp. 25.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
  Menu(
    name: "Chocholate",
    description: "Coklat",
    price: "Rp. 20.000",
    imageAsset: "lib/assets/americano.jpg",
  ),
];
