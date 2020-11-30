import 'package:Driver_ios/pages/welcome_page.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:Driver_ios/style/theme.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Driver',
        theme: ArchSampleTheme.theme,
        home: SplashScreen(
            seconds: 3,
            useLoader: true,
            
            navigateAfterSeconds: new WelcomePage(),
            // image: Image.asset(
            //   'assets/images/bg.jpeg',
            //   fit: BoxFit.cover,
            // ),
            backgroundColor: Colors.red,
            photoSize: 200.0,
            pageRoute: _createRoute()));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => WelcomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
