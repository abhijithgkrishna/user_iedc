import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_iedc/pages/error_page.dart';
import 'package:user_iedc/pages/home_page.dart';
import 'package:user_iedc/widgets/app_bar.dart';
import 'package:user_iedc/widgets/profile._card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class IdEnteringPage extends StatefulWidget {
  IdEnteringPage({super.key,});

  @override
  State<IdEnteringPage> createState() => _IdEnteringPageState();
}
class _IdEnteringPageState extends State<IdEnteringPage> {
  final bookingIDController = TextEditingController();
  String mobile = '';
  bool isLoading = false;
  String data = '';

  Future<void> firebaseChecking() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("bookingId",bookingIDController.text);
    setState(() {
      isLoading = true;
    });

    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('attendees')
          .doc(bookingIDController.text)
          .get();

      if (documentSnapshot.exists) {
        final data = documentSnapshot.data() as Map<String, dynamic>;
        final mobile = data['mobile'] ?? "Mobile not found";

        setState(() {
          this.mobile = mobile;
        });

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ErrorPage()),
        );
      }
    } catch (e) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ErrorPage()),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 30),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
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
                              ),
                            )
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
                          borderSide: BorderSide(
                            color: const Color(0xFF2057E3),
                          ),
                        ),
                        hintText: 'Enter your booking id',
                        hintStyle: TextStyle(color: Colors.black54),
                        labelText: 'Booking ID',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: isLoading ? null : firebaseChecking,
                    child:Text('Login'),
                    
                  ),
                  isLoading
                        ? CircularProgressIndicator()
                        : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}