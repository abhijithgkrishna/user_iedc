import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_iedc/home_bloc/home_bloc.dart';

import 'event_card.dart';

class ScrollingCardWidget extends StatelessWidget {
  final bool big;
  const ScrollingCardWidget({
    required this.big,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetchData());
    });
    return SizedBox(
      height: big ? 345 : 255,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => EventCard(
              big: big,
              title: state.data[index].eventname,
              venue: state.data[index].venue,
            ),
            separatorBuilder: (ctx, index) => const SizedBox(
              width: 8,
            ),
            itemCount: state.data.length,
          );
        },
      ),
    );
  }
}
