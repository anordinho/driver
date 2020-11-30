import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Order {
  final int id;
  final String name;
  final String date;
  final String product;
  final String price;
  final String status;
  final String image;

  Order(
      {@required this.id,
        @required this.name,
        @required this.date,
        @required this.price,
        @required this.status,
        @required this.product,
        @required this.image,
      
      });
static final DateFormat formatter = DateFormat('yyyy-MM-dd');

   Order.fromMap(Map<String, dynamic> map) : assert(map['id'] != null),
   id = map['id'],
   name = map['name'],
   product = map['product_name'],
   price = map['price'],
   date = formatter.format(DateTime.parse(map['date'])),
   status = map['payment_status'],
   image = map['image'];

 

}