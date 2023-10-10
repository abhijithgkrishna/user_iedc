import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_iedc/data/firebase-config.dart';
import 'package:user_iedc/data/firebase-test.dart';
import 'package:user_iedc/firebase_options.dart';

import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/idPage.dart';
import 'package:user_iedc/pages/splash_screen.dart';
import 'package:user_iedc/widgets/event-categories.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_iedc/home_bloc/home_bloc.dart';

import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/widgets/profile._card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var bookingId = prefs.getString("bookingId");
  print('hi');
  print(bookingId);
 
  runApp(MyApp(bookingId: bookingId,));
}


class MyApp extends StatelessWidget {
  final String? bookingId ;
  const MyApp({super.key,required this.bookingId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: ((context) => HomeBloc()))],
      child: MaterialApp(
        title: 'User IEDC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        // ignore: unnecessary_null_comparison
        home:Splash(bookingId: bookingId,),
      ),
    );
  }
}
