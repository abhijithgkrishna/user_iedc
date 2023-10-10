import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/utils/category_list.dart';

import '../widgets/event-categories.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  final List categories = Categories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 18,
                ),
                child: Text(
                  'Categories:',
                  style: GoogleFonts.dmSans(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const CategoryGridWidget(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 27,
                ),
                child: Text(
                  'Venues:',
                  style: GoogleFonts.dmSans(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  VenueWidget(location: 'DJ Hall'),
                  VenueWidget(location: 'CETAA Hall'),
                  VenueWidget(location: 'EC Seminar Hall'),
                  VenueWidget(location: 'Sargam Stage'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VenueWidget extends StatelessWidget {
  final String location;
  const VenueWidget({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              child: CategoriesEvent(
                categoryname: location,
                isCategory: false,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 1), blurRadius: 1, color: Colors.grey),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/pin.svg'),
                ),
                Text(location),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List categories = Categories;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 30,
        children: List.generate(
          categories.length,
          (index) => InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)),
                        child: CategoriesEvent(
                            categoryname: categories[index], isCategory: true),
                      ));
            },
            child: Container(
              height: 110,
              width: 96,
              decoration: BoxDecoration(
                  color: Color(0xff2763FF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(68, 0, 0, 0),
                        offset: Offset(0, 0.5),
                        blurRadius: 4)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/gear1.svg'),
                  ),
                  Text(
                    categories[index],
                    style: GoogleFonts.dmSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
