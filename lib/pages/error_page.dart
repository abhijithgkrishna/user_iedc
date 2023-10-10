import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.error,size: 120,),
            Text('Wrong Booking ID'),
            FloatingActionButton(onPressed: (){
                Navigator.pop(context);
            },child: Text('Back To Login Page'),)
          ],
        ),
      )),
    );
  }
}