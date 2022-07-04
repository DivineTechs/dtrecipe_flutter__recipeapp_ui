import 'package:dtrecipe/pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    checkFirstSeen();

    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.fill,
      ),
    ));
  }

  Future checkFirstSeen() async {
    int splashtime = 3;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool seen = (prefs.getBool('seen') ?? false);
    debugPrint("boolian Main statement is : $seen");

    if (seen) {
      debugPrint("Boolian statement if Condition : $seen");
      Future.delayed(Duration(seconds: splashtime), () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const Home();
        }));
      });
    } else {
      print("Boolian statement Else Condition : $seen");
      Future.delayed(Duration(seconds: splashtime), () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const Intro();
        }));
      });
    }
  }
}
