import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../home_bloc/home_bloc.dart';
import '../models/eventmodel/events.dart';
import '../sanity/sanity_config.dart';

class CategoriesEvent extends StatelessWidget {
  final String categoryname;
  final bool isCategory;
  const CategoriesEvent(
      {super.key, required this.categoryname, required this.isCategory});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double cardHeight = screenHeight * 0.65;
    double cardWidth = screenWidth * 0.8;

    return SingleChildScrollView(
      child: Card(
        elevation: 80,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Colors.white,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: cardHeight,
            width: cardWidth,
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
                                        child: Image.network(
                                          urlFor(SanityImage.fromJson(
                                                  categoryEvent[index]
                                                      .posterurl))
                                              .size(300, 300)
                                              .url(),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            categoryEvent[index]
                                                        .eventname
                                                        .length <
                                                    12
                                                ? categoryEvent[index].eventname
                                                : '${categoryEvent[index].eventname.substring(0, 12)}...',
                                            overflow: TextOverflow.fade,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: GoogleFonts.dmSans(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w800,
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
                                                  text: categoryEvent[index]
                                                      .venue,
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
                                                  text: DateFormat.jm().format(
                                                      DateTime.parse(
                                                              categoryEvent[
                                                                      index]
                                                                  .starttime)
                                                          .add(Duration(
                                                              hours: 5,
                                                              minutes: 30))),
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
                                              text: 'Speaker : ',
                                              style: GoogleFonts.dmSans(
                                                color: Colors.blue,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: categoryEvent[index]
                                                      .speaker,
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
