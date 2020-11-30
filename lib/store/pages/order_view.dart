import 'package:Driver_ios/model/order.dart';
import 'package:Driver_ios/store/cards/product_card.dart';
import 'package:Driver_ios/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          actions: [
               Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
                onTap: () {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                },
                child: Text(
              'logout',
              style: TextStyle(fontSize: 20),
            )),
          )
          ],),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(
                      orders: orders[index],
                    );
                  },
                  itemCount: 3,
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
                                Text(
                                  'Total Item Costs:',
                                  style: TextStyle(
                                      fontSize: 18,color: Colors.grey[700],
                                      fontFamily: 'Georgia'),
                                ),
                                Text(
                                  '2500 Tsh',
                                  style: TextStyle(fontSize: 17,color: Theme.of(context).accentColor),
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
                                      color: Colors.grey[700],fontFamily: 'Georgia'),
                                ),
                                Text(
                                  '540 Tsh',
                                  style: TextStyle(fontSize: 17,color: Theme.of(context).accentColor),
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
                                      color: Colors.grey[700],fontFamily: 'Georgia'),
                                ),
                                Text(
                                  'paid',
                                  style: TextStyle(fontSize: 17,color: Theme.of(context).accentColor),
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
                                        fontSize: 18, color: Colors.black)),
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
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Delivery Address',
                              style: TextStyle(fontSize: 22))),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Zanaki Street \n Dar es salaam Tanzania',
                            style: TextStyle(fontSize: 17),
                          )),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('0653035753')),
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0)), //this right here
                                child: Container(
                                  height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        SizedBox(height: 15),
                                        Center(
                                            child: Text(
                                          "Discharge this order",
                                          style: TextStyle(fontSize: 18),
                                        )),
                                        SizedBox(height: 30),
                                        TextField(
                                          decoration: InputDecoration(
                                              hintText: 'Driver Secret'),
                                        ),
                                        SizedBox(height: 20),
                                        SizedBox(
                                          width: 320.0,
                                          height: 50,
                                          child: RaisedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            color:
                                                Theme.of(context).buttonColor,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("Close",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text(
                        'Discharge',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Color(0xFFF39200),
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
