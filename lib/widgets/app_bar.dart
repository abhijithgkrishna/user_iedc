import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/widgets/profile._card.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFf9f9f9),
        ),
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12, top: 5, bottom: 10),
                child: Text.rich(
                  TextSpan(
                    text: "Track ",
                    style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    ),
                    children: [
                      TextSpan(
                          text: "What's Happening",
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF2057E3),
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => Dialog(
                                elevation: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ProfileCard(),
                              ));
                    },
                    icon: Icon(Icons.person_2),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
