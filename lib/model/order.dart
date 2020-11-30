import 'package:flutter/material.dart';

class Order {
  final String name;
  final String date;
  final String product;
  final String price;
  final String status;
  final String image;


  Order(
      {@required this.name,
        @required this.date,
        @required this.price,
        @required this.status,
        @required this.product,
        @required this.image
      });
}

List<Order> orders = [
  Order(
      name: "Davis",
      date: '2020-11-23 11:35:00',
      price: '2700 Tsh',
      status: " status: Pending", 
      product: 'Iphone 6 Plus',
       image: 'assets/images/p1.png'
  ),
  Order(
      name: "Arnold",
      date: '2020-11-23 11:35:00',
      price: '650 Tsh',
      status: "status: paid",
      product: 'Bag',
      image: 'assets/images/p2.png'
  ),
    Order(
      name: "Johnson",
      date: '2020-11-23 11:35:00',
      price: '850 Tsh',
      status: "status: paid",
      product: 'Horse Scupture',
      image: 'assets/images/p3.png'
  ),

];
