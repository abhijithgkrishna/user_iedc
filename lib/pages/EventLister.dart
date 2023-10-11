import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_bloc/home_bloc.dart';

class EventList extends StatefulWidget {
  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });
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
                                          text: '9:00 AM - 10:00 AM',
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
                                      text: 'Status : ',
                                      style: GoogleFonts.dmSans(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Ongoing',
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
