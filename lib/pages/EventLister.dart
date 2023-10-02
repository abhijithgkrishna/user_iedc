import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventList extends StatefulWidget {
  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text.rich(TextSpan(
                
                text: 'All Events',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              )),
            ),
            Expanded(
              // Wrap the ListView.builder with Expanded
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 95, // Set the desired height of the ListTile
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
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          ],
        ),
      ),
    );
  }
}
