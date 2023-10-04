import 'package:flutter/material.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/profile_page.dart';
import 'package:user_iedc/widgets/event-categories.dart';
import 'package:user_iedc/pages/home_page.dart';

void main() {
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
      home: const HomePage(),
    );
  }
}
