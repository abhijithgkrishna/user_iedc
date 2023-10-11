import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_iedc/home_bloc/home_bloc.dart';
import 'package:user_iedc/widgets/pop-up.dart';

import '../models/eventmodel/events.dart';
import 'event_card.dart';

class ScrollingCardWidget extends StatelessWidget {
  final bool big;
  ScrollingCardWidget({
    required this.big,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = screenHeight * 0.39;
    //double cardwidth = screenWidth * 0.8;

    return SizedBox(
      height: big ? cardHeight : 255,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final eventlist = state.data;
          List ongoingEvents = [];
          if (!big) {
            ongoingEvents = eventlist;
          } else {
            for (Events event in eventlist) {
              DateTime start = DateTime.parse(event.starttime);
              DateTime end = DateTime.parse(event.endtime);

              // if (start.isAfter(
              //         DateTime.now().subtract(Duration(minutes: 30))) &&
              //     end.isBefore(DateTime.now().add(Duration(minutes: 5)))) {
              //   ongoingEvents.add(event);
              // }
              if (start
                      .subtract(Duration(minutes: 30))
                      .isBefore(DateTime.now()) &&
                  start.add(Duration(minutes: 5)).isAfter(DateTime.now())) {
                ongoingEvents.add(event);
              }
            }
          }

          return ListView.separated(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
              top: 2,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          child: PopUp(
                            event: ongoingEvents[index],
                          ),
                        ));
              },
              child: EventCard(
                  big: big,
                  title: ongoingEvents[index].eventname,
                  venue: ongoingEvents[index].venue,
                  imgUrl: ongoingEvents[index].posterurl),
            ),
            separatorBuilder: (ctx, index) => const SizedBox(
              width: 20,
            ),
            itemCount: ongoingEvents.length,
          );
        },
      ),
    );
  }
}
