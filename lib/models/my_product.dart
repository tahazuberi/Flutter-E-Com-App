import 'product.dart';

class MyProducts {

  static List<Product> allProducts = [

    Product(
      id:1,
      name : "Nike Air Max 200",
      price: 180.00,
      image:'assets/sneakers/shoe.jpg',
      category: "Trending now",
      description:
        "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),
    Product(
      id:2,
      name : "Nike Air Max 300",
      price: 100.00,
      image:'assets/sneakers/shoe2.jpg',
      category: "Trending now",
      description:
      "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),
    Product(
      id:3,
      name : "Nike Air Max 400",
      price: 200.00,
      image:'assets/sneakers/shoe3.jpg',
      category: "Trending now",
      description:
      "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),

    Product(
      id:4,
      name : "Jacket Black",
      price: 180.00,
      image:'assets/jackets/jacket.jpg',
      category: "Trending now",
      description:
      "Jacket with a great look",
      quantity: 1,
    ),
    Product(
      id:5,
      name : "Branded Jacket",
      price: 100.00,
      image:'assets/jackets/jacket2.jpg',
      category: "Trending now",
      description:
      "Cool jacket",
      quantity: 1,
    ),

  ];

  static List<Product> sneakersList =[
    Product(
      id:1,
      name : "Nike Air Max 200",
      price: 180.00,
      image:'assets/sneakers/shoe.jpg',
      category: "Trending now",
      description:
      "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),
    Product(
      id:2,
      name : "Nike Air Max 300",
      price: 100.00,
      image:'assets/sneakers/shoe1.jpg',
      category: "Trending now",
      description:
      "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),
    Product(
      id:3,
      name : "Nike Air Max 400",
      price: 200.00,
      image:'assets/sneakers/shoe2.jpg',
      category: "Trending now",
      description:
      "Clean lines ,versatile shoe with a great look",
      quantity: 1,
    ),
  ];

  static List<Product> jacketList = [

    Product(
      id:1,
      name : "Jacket Black",
      price: 180.00,
      image:'assets/jackets/jacket.jpg',
      category: "Trending now",
      description:
      "Jacket with a great look",
      quantity: 1,
    ),
    Product(
      id:2,
      name : "Branded Jacket",
      price: 100.00,
      image:'assets/jackets/jacket2.jpg',
      category: "Trending now",
      description:
      "Cool jacket",
      quantity: 1,
    ),


  ];

}