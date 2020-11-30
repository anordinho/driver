import 'package:Driver_ios/driver/cards/order_card.dart';
import 'package:Driver_ios/model/order';
import 'package:flutter/material.dart';

class DeliveredScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 520,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return OrderCard(orders: orders[index]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
