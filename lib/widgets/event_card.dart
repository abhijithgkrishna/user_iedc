import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  final bool big;
  final String title;
  final String venue;

  const EventCard({
    super.key,
    required this.big,
    required this.title,
    required this.venue,
  });

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Container(
        height: big ? 340 : 250,
        width: big ? 340 : 245,
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
          padding: EdgeInsets.only(
            left: big ? 13 : 9,
            right: big ? 13 : 9,
            top: big ? 13 : 9,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: big ? 227 : 180,
                  width: big ? 313 : 226,
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
                child: Text(title,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: big ? 25 : 18,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, bottom: big ? 0 : 4),
                child: Text.rich(
                  TextSpan(
                      text: 'Venue : ',
                      style: GoogleFonts.dmSans(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: big ? 22 : 15,
                      ),
                      children: [
                        TextSpan(
                          text: venue,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: big ? 22 : 15,
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
