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
  final HomeBloc homebloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final List eventlist = homebloc.getEventList();
    double cardHeight = screenHeight * 0.39;
    //double cardwidth = screenWidth * 0.8;

    bool condition(Events event) {
      return event.status == "ongoing";
    }

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
              if (event.status == "ongoing") {
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
              ),
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
