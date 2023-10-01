import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/categories_page.dart';
import 'package:user_iedc/widgets/event_card.dart';

import '../widgets/app_bar.dart';
import '../widgets/category_tile.dart';
import '../widgets/category_title.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
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
              width: 340,
              height: 340,
            ),
            const SizedBox(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 17),
              child: CategoryTitleWidget(
                title: 'Categories:',
                route: CategoriesPage(),
              ),
            ),
            CategoryScrollWidget(),
            CategoryTitleWidget(
              title: 'Events',
              route: CategoriesPage(),
            ),
            ScrollingCardWidget(
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollingCardWidget extends StatelessWidget {
  final double width;
  final double height;
  const ScrollingCardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => EventCard(
          big: true,
        ),
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 8,
        ),
        itemCount: 10,
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
