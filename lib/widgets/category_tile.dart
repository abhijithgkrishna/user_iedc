import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:user_iedc/widgets/event-categories.dart';

import '../home_bloc/home_bloc.dart';

class CategoryScrollWidget extends StatelessWidget {
  CategoryScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List categories;
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      categories = state.categories;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 35,
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                    child: CategoriesEvent(
                      categoryname: categories[index],
                      isCategory: true,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(166, 158, 158, 158),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0, 2, 0),
                      child: SvgPicture.asset('assets/gear.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 6, 0),
                      child: Text(
                        categories[index],
                        style: GoogleFonts.dmSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 7,
              height: 10,
            ),
            itemCount: categories.length,
          ),
        ),
      );
    });
  }
}
