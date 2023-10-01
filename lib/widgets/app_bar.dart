import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFE9E9E9),
        ),
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 55),
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
                          color: Color(0xFF2057E3),
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ))
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/bell.svg'),
                SizedBox(
                  width: 23,
                ),
                SvgPicture.asset('assets/avatar.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}