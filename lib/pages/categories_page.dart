import 'package:flutter/material.dart';
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
            children: const [
              SizedBox(
                height: 20,
              ),
              TextWidget(
                title: 'Categories',
                size: 28,
                textcolor: Colors.black,
              ),
              CategoryGridWidget(),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                title: 'Venues',
                size: 28,
                textcolor: Colors.black,
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
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(
          8,
          (index) => Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.elliptical(15, 15),
              ),
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
    );
  }
}
