import 'package:Driver_ios/model/order';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Order orders;

  const ProductCard({Key key,@required this.orders}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
                  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
              ),
              child: Image.asset('assets/images/p1.png'),
          ),
        ),
        Text(orders.name,style: TextStyle(color: Colors.grey[850],fontSize: 20),),
        Text('500 Tsh',style: TextStyle(color: Colors.green),)
      ],
    );
  }
}