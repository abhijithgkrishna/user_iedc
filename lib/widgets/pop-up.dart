
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
        elevation: 80,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Colors.white,
        color: Color.fromARGB(255, 255, 255, 255),
        child: SizedBox(
          width: 400,
          height: 680,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 227,
                    width: 313,
                    child: Image.asset(
                      "assets/image1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ), //CircleAvatar
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                //SizedBox
                Text(
                  'AI In mental health',
                 style: GoogleFonts.dmSans(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w500,fontSize: 22),//Textstyle
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text.rich(
                        TextSpan(
                            text: 'Venue : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: 'DJ Hall',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text.rich(
                        TextSpan(
                            text: 'Time : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: '9:00 AM - 10:00 AM',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text.rich(
                        TextSpan(
                            text: 'Status : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: 'Ongoing',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text.rich(
                        TextSpan(
                            text: 'Speaker : ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: 'Dr Swaminathan',
                                style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                //Text
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry ',
                    style: GoogleFonts.dmSans(fontWeight: FontWeight.w500),
                  ),
                  
                ),
                SizedBox(
                  height: 50,
                ),
                //SizedBox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Go to venue',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 3, 102, 183),
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: const Color.fromARGB(255, 3, 102, 183),
                    )
                  ],
                ),
                SizedBox(
                  width: 100,

            
                ) 
              ],
            ), 
          ), 
        ), 
      ), 
    ));
  }
}
