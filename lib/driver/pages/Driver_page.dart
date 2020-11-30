
import 'package:Driver_ios/driver/screen/Order_screen.dart';
import 'package:Driver_ios/driver/screen/delivered_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverPage extends StatefulWidget {
  @override
  _DriverPageState createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  int index;
  int _selectedIndex = 0;
  bool isSwitched = false;
  
  List<Widget> _widgetOptions = <Widget>[
    OrderScreen(),
   DeliveredScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/circle.jpeg'),
            ),
        ),
        title:   Text('Logout', style: TextStyle(color: Colors.white),),
        actions: [
          Switch(
          value: isSwitched,
          onChanged: (value){
            setState(() {
              isSwitched=value;
              print(isSwitched);
            });
          },
          activeTrackColor: Colors.red,
          activeColor: Colors.green,
        ),
        ],
        
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Color(0xFFF58634),
              icon: Icon(FontAwesomeIcons.bitbucket),
              label: 'Orders'),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.listUl),
            label: 'Delivered',
            backgroundColor: Color(0xFFF58634),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
  
    );
  }
}
