import 'package:Driver_ios/model/order';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Order orders;

  const ProductCard({Key key,@required this.orders}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
       
        child:  Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 50,
                              width: 80,
                              child: Image.asset(orders.image),
                            ),
                            title: Text(orders.product),
                            subtitle: Text(orders.price),
                            trailing: Text('x1'),
                          ),
                        ],
                      ),
                    ),
      ),
    );
  }
}