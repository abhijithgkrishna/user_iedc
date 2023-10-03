import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;
  final Widget route;
  const CategoryTitleWidget({
    required this.title,
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color(0xff2057E3),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => route)),
                  child: Text(
                    'View all',
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2057E3),
                    ),
                  )),
              const Icon(
                Icons.navigate_next,
                color: Color(0xff2057E3),
              )
            ],
          ),
        ],
      ),
    );
  }
}
