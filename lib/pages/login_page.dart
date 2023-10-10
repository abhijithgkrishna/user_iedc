import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(decoration: InputDecoration(hintText: "Phone no",border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(decoration: InputDecoration(hintText: "Booking ID",border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Login'))
            ],
          ),
        ) 
      ),
    );
  }
}