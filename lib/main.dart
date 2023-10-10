import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:user_iedc/data/firebase-config.dart';
import 'package:user_iedc/data/firebase-test.dart';
import 'package:user_iedc/firebase_options.dart';
=======

>>>>>>> b902579b8af08579164d781a646c9ac810903730
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/idPage.dart';
import 'package:user_iedc/pages/splash_screen.dart';
import 'package:user_iedc/widgets/event-categories.dart';

import 'package:user_iedc/home_bloc/home_bloc.dart';

import 'package:user_iedc/pages/home_page.dart';
<<<<<<< HEAD
import 'package:user_iedc/widgets/profile._card.dart';
import 'package:flutter/material.dart';
=======
import 'package:flutter_bloc/flutter_bloc.dart';
>>>>>>> b902579b8af08579164d781a646c9ac810903730


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
<<<<<<< HEAD
    return MaterialApp(
      title: 'User IEDC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: TestData(),
=======
    return MultiBlocProvider(
      providers: [BlocProvider(create: ((context) => HomeBloc()))],
      child: MaterialApp(
        title: 'User IEDC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const HomePage(),
      ),
>>>>>>> b902579b8af08579164d781a646c9ac810903730
    );
  }
}
