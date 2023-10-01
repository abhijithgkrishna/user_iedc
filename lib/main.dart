import 'package:flutter/material.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/Home_Page.dart';
import 'package:user_iedc/widgets/event-categories.dart';
import 'package:user_iedc/widgets/event_card.dart';
import 'package:user_iedc/widgets/pop-up.dart';

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
      theme: ThemeData(
      
        
      ),
      home: const MyHomePage(title: 'Home Page for my app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: Color.fromARGB(255, 245, 230, 230),
      body: Center(
        child: const HomePage(),
      ),
    );
  }
}
