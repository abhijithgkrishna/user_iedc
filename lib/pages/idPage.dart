import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/widgets/app_bar.dart';
import 'package:user_iedc/widgets/profile._card.dart';

class IdEnteringPage extends StatelessWidget {
  IdEnteringPage({super.key,});
  final  bookingIDController = TextEditingController();
  final String data='';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 120.0, left: 30),
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text.rich(
                          TextSpan(
                            text: "Enter Your Booking ID",
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                            ),
                            children: [
                              TextSpan(
                                  text: "",
                                  style: GoogleFonts.dmSans(
                                    color: const Color(0xFF2057E3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 21,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 270,
                      child: TextFormField(
                        controller: bookingIDController,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: const Color(0xFF2057E3))),
                            hintText: 'Enter your booking id',
                            hintStyle: TextStyle(color: Colors.black54),
                            label: Text('Booking ID')),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FloatingActionButton(
                      // When the user presses the button, show an alert dialog containing
                      // the text that the user has entered into the text field.
                     // onPressed: () {
                     //  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage(data:bookingIDController.text)));
                      //},
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      tooltip: 'Show me the value!',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('login'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
