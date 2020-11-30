import 'package:Driver_ios/store/pages/SignIn_Code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignInStore extends StatefulWidget {
  @override
  _SignInStoreState createState() => _SignInStoreState();
}

class _SignInStoreState extends State<SignInStore> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'TZ';
  PhoneNumber number = PhoneNumber(isoCode: 'TZ');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text('Hi!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Text('Please Sign In Here*',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 10,
              ),
              Text('Enter Your Phone Number',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              Form(
                key: formKey,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          // backgroundColor: Colors.black,
                        ),
                        ignoreBlank: false,
                        // autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        initialValue: number,
                        textFieldController: controller,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Tap next to get a one time login',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              Text(' code sent to you via sms',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInCode()));
                  },
                 padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    child: Text(
                      'NEXT',
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

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
