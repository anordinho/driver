
import 'package:Driver_ios/model/order.dart';
import 'package:Driver_ios/store/cards/order_card.dart';
import 'package:Driver_ios/store/pages/order_view.dart';

import 'package:flutter/material.dart';

class AllOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScrollView(
       slivers: <Widget>[
               SliverToBoxAdapter(
           child: Container(
             height: 520,

             child: ListView.builder(
               itemCount: orders.length,
               itemBuilder: (BuildContext context, int index) {
               return InkWell(
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => OrderView()));
                 
                 },
                 child: OrderCard(orders: orders[index],

                 ),
               );
               
             }),
           ),
         )
       ],
     ),
    );
  }
}
