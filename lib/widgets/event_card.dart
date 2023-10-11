import 'package:flutter/material.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/sanity/sanity_config.dart';

class EventCard extends StatelessWidget {
  final bool big;
  final String title;
  final String venue;
  final Map<String, dynamic> imgUrl;

  const EventCard({
    super.key,
    required this.big,
    required this.title,
    required this.venue,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    String truncatedText =
        title.length <= 18 ? title : title.substring(0, 18) + '...';

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double cardHeight = screenHeight * 0.75;
    // double cardwidth = screenWidth*0.65;

    double cardHeightPhoto = screenHeight * 0.259;
    double cardwidthPhoto = screenWidth * 0.65;

    return Center(
      child: Container(
        height: big ? cardHeight : 250,
        // width: big ? 340 : 245,
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
                  height: big ? cardHeightPhoto : 180,
                  width: big ? cardwidthPhoto : 226,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                      top: big ? 0 : 12,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        urlFor(SanityImage.fromJson(imgUrl))
                            .size(300, 300)
                            .url(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Center(
                    child: Text(truncatedText,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: big ? 20 : 18,
                        )),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 12, bottom: big ? 0 : 4),
                child: Text.rich(
                  TextSpan(
                      text: 'Venue : ',
                      style: GoogleFonts.dmSans(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: big ? 17 : 15,
                      ),
                      children: [
                        TextSpan(
                          text: venue,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: big ? 17 : 15,
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
