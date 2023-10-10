import 'package:flutter/material.dart';
import 'package:user_iedc/home_bloc/home_bloc.dart';

import 'package:user_iedc/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: ((context) => HomeBloc()))],
      child: MaterialApp(
        title: 'IEDC Summit 2023',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}
