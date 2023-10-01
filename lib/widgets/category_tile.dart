import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScrollWidget extends StatelessWidget {
  const CategoryScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 27,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 0, 2, 0),
                  child: SvgPicture.asset('assets/gear.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text(
                    'Workshops',
                    style: GoogleFonts.dmSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 7,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
