import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: CupertinoSearchTextField(
        padding: const EdgeInsets.only(
          bottom: 9,
          top: 9,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(18, 0, 0, 0),
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: Padding(
          padding:
              const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 2),
          child: SvgPicture.asset('assets/search_bell.svg'),
        ),
        placeholder: 'Search Events...',
        style: GoogleFonts.darkerGrotesque(
            color: const Color(0x18000000),
            fontSize: 22,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
