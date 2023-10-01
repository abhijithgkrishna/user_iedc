import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesEvent extends StatefulWidget {
  const CategoriesEvent({super.key});

  @override
  State<CategoriesEvent> createState() => _CategoriesEventState();
}

class _CategoriesEventState extends State<CategoriesEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Card(
          elevation: 80,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          shadowColor: Colors.white,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 500,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:25),
                        child: Text.rich(
                          TextSpan(
                              text: 'Events under ',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: 'Workshops',
                                  style: GoogleFonts.dmSans(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        // Wrap the ListView.builder with Expanded
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 30,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height:
                                  95, // Set the desired height of the ListTile
                              child: ListTile(
                                trailing: const Icon(
                                  Icons.arrow_right_sharp,
                                  size: 40,
                                ),
                                title: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                          "assets/image1.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            text: 'AI IN MENTAL HEALTH',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Venue : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'DJ Hall',
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Time : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '9:00 AM - 10:00 AM',
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Status : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Ongoing',
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
