import 'package:Driver_ios/store/screen/AllOrders_screen.dart';
import 'package:Driver_ios/store/screen/pending_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Driver_ios/pages/welcome_page.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  int index;
  int _selectedIndex = 0;
  bool isSwitched = false;

  List<Widget> _widgetOptions = <Widget>[
    PendingScreen(),
    AllOrderScreen(),
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
        title: Text(
          'Atsoko',
          style: TextStyle(color: Colors.white),
        ),
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
              label: 'Pending orders'),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.listUl),
            label: 'All Orders',
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
