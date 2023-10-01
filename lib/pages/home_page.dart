import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/categories_page.dart';
import 'package:user_iedc/widgets/event_card.dart';

import '../widgets/app_bar.dart';
import '../widgets/category_tile.dart';
import '../widgets/category_title.dart';
import '../widgets/ongoing_events.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          color: Colors.white,
          height: 150,
          child: const AppBarWidget(),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SearchWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  bottom: 10,
                ),
                child: Text(
                  'Ongoing Events :',
                  style: GoogleFonts.dmSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2057E3)),
                ),
              ),
            ),
            const ScrollingCardWidget(
              big: true,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: CategoryTitleWidget(
                title: 'Categories:',
                route: CategoriesPage(),
              ),
            ),
            CategoryScrollWidget(
              category: 'Panel Discussion',
            ),
            Container(
              child: CategoryTitleWidget(
                title: 'Events',
                route: CategoriesPage(),
              ),
            ),
            ScrollingCardWidget(
              big: false,
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final double width;
  final double height;
  const CardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.yellow,
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final double size;
  final Color textcolor;
  const TextWidget({
    super.key,
    required this.title,
    required this.size,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: textcolor,
        fontSize: size,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
