import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {

  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: Colors.white,
        color: Color.fromARGB(255, 255, 255, 255),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },icon: Icon(Icons.close),)
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                      height: 195,
                      width: 250,
                      child: Icon(
                        Icons.qr_code_2_outlined,
                        size: 200,
                      )),
                ), //CircleAvatar
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                //SizedBox
                Text(
                  'Adith Ramdas',
                  style: GoogleFonts.dmSans(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 21), //Textstyle
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text.rich(
                        TextSpan(
                            text: 'College : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: 'CET TRIVANDRUM',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 0,top: 15),
                      child: Text.rich(
                        TextSpan(
                            text: 'Booking ID : ',
                            style: GoogleFonts.dmSans(
                                color: const Color.fromARGB(137, 8, 8, 8),
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: 'jddjfsdjd545',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                //Text
               
                //SizedBox
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
