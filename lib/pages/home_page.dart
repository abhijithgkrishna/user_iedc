import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/EventLister.dart';
import 'package:user_iedc/pages/categories_page.dart';
import 'package:user_iedc/pages/developers_page.dart';

import '../home_bloc/home_bloc.dart';
import '../widgets/app_bar.dart';
import '../widgets/category_tile.dart';
import '../widgets/category_title.dart';
import '../widgets/ongoing_events.dart';
import '../widgets/profile._card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(70),
      //   child: Container(
      //     color: Colors.white,
      //     height: 150,
      //     child: const AppBarWidget(),
      //   ),
      // ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff9f9f9),
        title: SvgPicture.asset('assets/title.svg'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: DevPop(),
                  ),
                );
              },
              icon: Icon(
                Icons.info_outline_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
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
              icon: SvgPicture.asset('assets/avatar.svg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
          },
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
      ),
    );
  }
}
