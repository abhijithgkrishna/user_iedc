import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/pages/home_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 27,
                ),
                child: Text(
                  'Categories:',
                  style: GoogleFonts.dmSans(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              CategoryGridWidget(),
              SizedBox(
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
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  VenueWidget(
                    location: 'DJ HALL',
                  ),
                  VenueWidget(
                    location: 'Sargam Stage',
                  )
                ],
              ),
              Row(
                children: [
                  VenueWidget(
                    location: 'CEETA HALL',
                  ),
                  VenueWidget(
                    location: 'DJ HALL',
                  )
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
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(77, 206, 202, 202),
            borderRadius: BorderRadius.all(Radius.elliptical(50, 50))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
              ),
              Text(location),
            ],
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          children: List.generate(
            8,
            (index) => Container(
              height: 110,
              width: 96,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    'Workshops',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '3 events',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
