import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/categories_page.dart';
import 'package:user_iedc/widgets/pop-up.dart';

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
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          color: Colors.white,
          height: 150,
          child:  AppBarWidget(),
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
                  'Ongoing Events: ',
                  style: GoogleFonts.dmSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2057E3)),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                showDialog(context: context, builder: (context)=>Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                  child:PopUp() ,
                ));
              },
              child: const ScrollingCardWidget(
                big: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: CategoryTitleWidget(
                title: 'Categories:',
                route: CategoriesPage(),
              ),
            ),
            const CategoryScrollWidget(
              category: 'Panel Discussion',
            ),
            const CategoryTitleWidget(
              title: 'Events',
              route: EventList(),
            ),
            const ScrollingCardWidget(
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
