
import 'package:Driver_ios/model/order';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
 final Order orders;

  const OrderCard({Key key,@required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child:Column(
              children: [
                ListTile(

                  title:  Text(orders.name,
                    style: TextStyle(color: Colors.grey[700])),
                  subtitle: Text(
                    orders.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right:20),
                  child: Divider(color: Colors.grey[700]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        orders.price,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Text(
                        orders.status,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}