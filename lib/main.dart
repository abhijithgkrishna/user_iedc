import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_iedc/data/firebase-config.dart';
import 'package:user_iedc/data/firebase-test.dart';
import 'package:user_iedc/firebase_options.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/idPage.dart';
import 'package:user_iedc/pages/splash_screen.dart';
import 'package:user_iedc/widgets/event-categories.dart';
import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/widgets/profile._card.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User IEDC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: TestData(),
    );
  }
}
