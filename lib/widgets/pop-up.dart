import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_iedc/models/eventmodel/events.dart';
import '../home_bloc/home_bloc.dart';

class PopUp extends StatelessWidget {
  final Events event;

  const PopUp({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });

    return SingleChildScrollView(
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return Card(
          elevation: 80,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          shadowColor: Colors.white,
          color: Color.fromARGB(255, 255, 255, 255),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 180,
                      width: 250,
                      child: Image.asset(
                        "assets/image1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //SizedBox
                  Text(
                    event.eventname,
                    style: GoogleFonts.dmSans(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 19), //Textstyle
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text.rich(
                          TextSpan(
                              text: 'Venue : ',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: event.venue,
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text.rich(
                          TextSpan(
                              text: 'Time : ',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: event.starttime,
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text.rich(
                          TextSpan(
                              text: 'Status : ',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: event.status,
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text.rich(
                          TextSpan(
                              text: 'Speaker : ',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: event.speaker,
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                  //Text
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry ',
                      style: GoogleFonts.dmSans(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //SizedBox

                  SizedBox(
                    width: 100,
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
