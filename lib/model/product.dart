class Product {
  String id;
  String title;
  String imageProducts;
  String price;
  String type;
  String description;

  Product(
      {required this.id,
      required this.title,
      required this.imageProducts,
      required this.price,
      required this.type,
      required this.description});
}

var listOfProducts = [
  Product(
      id: '1',
      title: 'Nicoise Salad',
      imageProducts: 'assets/images/food1.png',
      price: 'Rp 35.000,-',
      type: 'Food',
      description:
          'Niçoise salad is a traditional French salad originating from Nice, a city on the French Riviera. It\'s a vibrant and flavorful dish that typically includes a variety of fresh and wholesome ingredients.'),
  Product(
      id: '2',
      title: 'Greek Pizza',
      imageProducts: 'assets/images/pizza1.png',
      price: 'Rp 40.000,-',
      type: 'Food',
      description:
          'Greek pizza is a delectable Mediterranean-inspired dish that combines traditional pizza elements with distinct Greek flavors. This savory delight features a golden and crispy crust adorned with a harmonious medley of ingredients, creating a symphony of tastes and textures.'),
  Product(
      id: '3',
      title: 'Calzone Pizza',
      imageProducts: 'assets/images/pizza2.png',
      price: 'Rp 40.000,-',
      type: 'Food',
      description:
          'Calzone is a food that is shaped like a jumbo sized pastel, is an original confectionery from Italy, still a variant of pizza.'),
  Product(
      id: '4',
      title: 'Orange Juice',
      imageProducts: 'assets/images/orange.png',
      price: 'Rp 8.000,-',
      type: 'Drink',
      description:
          'Orange juice is a refreshing and invigorating beverage that captures the essence of bright citrus flavors. This delightful drink is crafted from the succulent nectar of ripe oranges, resulting in a liquid sunshine that tantalizes the taste buds.'),
  Product(
      id: '5',
      title: 'Avocado Juice',
      imageProducts: 'assets/images/avocado.png',
      price: 'Rp 8.000,-',
      type: 'Drink',
      description:
          'Avocado juice is a lush and velvety elixir that transforms the creamy richness of ripe avocados into a refreshing and indulgent beverage. This unique concoction offers a sensory experience that combines the buttery smoothness of avocados with a hint of sweetness and a touch of sophistication.'),
];
