import 'package:flutter/material.dart';
import 'package:user_iedc/pages/idPage.dart';

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
            Icon(Icons.error,size: 120,color: const Color.fromARGB(255, 138, 22, 14),),
            SizedBox(height: 10,),
            Text('Wrong Booking ID',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20),),
            SizedBox(height: 10,),
           ElevatedButton(onPressed: (){
            
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IdEnteringPage()));
           }, child: Text('Back To Login Page'))
          ],
        ),
      )),
    );
  }
}