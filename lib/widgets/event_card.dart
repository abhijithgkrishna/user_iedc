import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 341,
      width: 339,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
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
                height: 227,
                width: 313,
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
