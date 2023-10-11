import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/categories_page.dart';

import '../home_bloc/home_bloc.dart';
import '../widgets/app_bar.dart';
import '../widgets/category_tile.dart';
import '../widgets/category_title.dart';
import '../widgets/ongoing_events.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
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
            ScrollingCardWidget(
              big: true,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: CategoryTitleWidget(
                title: 'Categories:',
                route: CategoriesPage(),
              ),
            ),
            CategoryScrollWidget(),
            const CategoryTitleWidget(
              title: 'Events',
              route: EventList(),
            ),
            ScrollingCardWidget(
              big: false,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
