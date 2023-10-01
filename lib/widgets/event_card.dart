import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  final bool big;

  const EventCard({
    super.key,
    required this.big,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: big ? 340 : 240,
      width: big ? 340 : 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 13,
          right: 13,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: big ? 227 : 180,
                width: big ? 313 : 220,
                child: Image.asset(
                  "assets/image1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("AI in mental health",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text.rich(
                TextSpan(
                    text: 'Venue : ',
                    style: GoogleFonts.dmSans(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: 'DJ Hall',
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
