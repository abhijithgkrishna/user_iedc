import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../home_bloc/home_bloc.dart';
import '../sanity/sanity_config.dart';

class EventList extends StatefulWidget {
  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text.rich(TextSpan(
                  text: 'All Events',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                // Wrap the ListView.builder with Expanded
                child:
                    BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                  return ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                    itemCount: state.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 95, // Set the desired height of the ListTile
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
                                            state.data[index].posterurl))
                                        .size(300, 300)
                                        .url(),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: state.data[index].eventname,
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontSize: 15,
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: state.data[index].venue,
                                          style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              '${DateFormat.jm().format(DateTime.parse(state.data[index].starttime))} - ${DateFormat.jm().format(DateTime.parse(state.data[index].endtime))}',
                                          style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: state.data[index].speaker,
                                          style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
