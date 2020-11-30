import 'package:Driver_ios/driver/cards/product_card.dart';
import 'package:Driver_ios/providers/order_provider.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final _orderProvider = Provider.of<OrderProvider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/circle.jpeg'),
            ),
          ),
          title: Row(
            children: <Widget>[
              Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Color(0xFFE31013),
                  activeColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Column(
                  children: [
                    Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Client Name:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[700],
                                      fontFamily: 'Georgia'),
                                ),
                                Text(
                                  'Davis',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Client Phone:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Georgia',
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  '0765346527',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Client Address:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[700],
                                      fontFamily: 'Georgia'),
                                ),
                                Text(
                                  'Zanaki Street \n Dar es Salaam',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpeg'),
                      ),
                      title: Text(
                        'MNJ GIFT SHOP',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Georgia'),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.key,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('9eWop', style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 8, right: 10, bottom: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 35,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'call',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Georgia',
                                fontSize: 18),
                          ),
                          SizedBox(width: 80),
                          Icon(
                            Icons.directions,
                            size: 35,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Get Direction',
                            style: TextStyle(
                                fontFamily: 'Georgia',
                                color: Colors.grey[700],
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ])),
            SliverToBoxAdapter(
              child: Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(
                      orders: _orderProvider.availableOrders[index],
                    );
                  },
                  itemCount: _orderProvider.availableOrders.length,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Item Costs:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey[700],
                                        fontFamily: 'Georgia')),
                                Text(
                                  '2500 Tsh',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery Cost:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[700],
                                      fontFamily: 'Georgia'),
                                ),
                                Text(
                                  '540 Tsh',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payment Status:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[700],
                                      fontFamily: 'Georgia'),
                                ),
                                Text(
                                  'paid',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Amount Payable:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Georgia')),
                                Text(
                                  '5000 Tsh',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //                builder: (context) => SignInPage()));
                      },
                      child: Text(
                        'END THIS ORDER',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ])),
          ],
        ));
  }
}
