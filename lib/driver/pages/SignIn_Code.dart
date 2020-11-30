
import 'package:Driver_ios/driver/pages/Driver_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInCode extends StatefulWidget {
  @override
  _SignInCodeState createState() => _SignInCodeState();
}

class _SignInCodeState extends State<SignInCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text('Please wait for the code',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Georgia'
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              // Text('Enter verification code',
              //     style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              TextField(
                decoration: InputDecoration(
                    labelText: "Enter Verification code",
                  labelStyle: new TextStyle(color: Colors.grey)
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: RaisedButton(
                   padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DriverPage()));
                  },
              
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  
                  color: Theme.of(context).buttonColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
