import 'package:flutter/material.dart';
import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/pages/idPage.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IdEnteringPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body:Center(
        child: Image.asset(
                      
                      "assets/summit.png",
                    
                      height: 200,
                      width: 300,
                    ),
        
      )
    );
  }
}