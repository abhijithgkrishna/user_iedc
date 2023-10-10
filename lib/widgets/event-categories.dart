import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_bloc/home_bloc.dart';
import '../models/eventmodel/events.dart';

class CategoriesEvent extends StatelessWidget {
  final String categoryname;
  final bool isCategory;
  const CategoriesEvent(
      {super.key, required this.categoryname, required this.isCategory});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 80,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Colors.white,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 500,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text.rich(
                        TextSpan(
                            text: isCategory ? 'Events under ' : 'Events at ',
                            style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: categoryname,
                                style: GoogleFonts.dmSans(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                        final eventlist = state.data;

                        List<Events> categoryEvent = [];
                        if (isCategory) {
                          for (Events event in eventlist) {
                            if (event.category == categoryname) {
                              categoryEvent.add(event);
                            }
                          }
                        } else {
                          for (Events event in eventlist) {
                            if (event.venue == categoryname) {
                              categoryEvent.add(event);
                            }
                          }
                        }
                        return ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 30,
                          ),
                          itemCount: categoryEvent.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height:
                                  95, // Set the desired height of the ListTile
                              child: ListTile(
                                title: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                          "assets/image1.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            text:
                                                categoryEvent[index].eventname,
                                            style: GoogleFonts.dmSans(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Venue : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    categoryEvent[index].venue,
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Time : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: categoryEvent[index]
                                                    .starttime,
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: 'Status : ',
                                            style: GoogleFonts.dmSans(
                                              color: Colors.blue,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    categoryEvent[index].status,
                                                style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
