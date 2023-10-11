import 'package:flutter/material.dart';
import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/pages/idPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  final String? bookingId;
  const Splash({super.key, required this.bookingId});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    sharedPreferencesFunction();

    _navigatetohome();
  }

  sharedPreferencesFunction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var bookingId = prefs.getString("bookingId");
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1800));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return widget.bookingId == null ? IdEnteringPage() : HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Image.asset(
            "assets/iedcSummit-logo.png",
            height: 200,
            width: 300,
          ),
        ));
  }
}
