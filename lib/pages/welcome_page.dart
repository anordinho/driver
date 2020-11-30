import 'package:Driver_ios/driver/pages/SignIn_page.dart';

import 'package:Driver_ios/store/pages/SignIn_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 690,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpeg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              children: [
                RaisedButton(
                   padding: EdgeInsets.fromLTRB(140, 15, 140, 15),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInDriver()));
                  },
                  child: Text(
                    'DRIVER',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Theme.of(context).buttonColor,
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                   padding: EdgeInsets.fromLTRB(140, 15, 140, 15),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInStore()));
                  },
                  child: Text(
                    'STORE',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Theme.of(context).buttonColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
