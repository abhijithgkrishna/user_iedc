import 'package:flutter/material.dart';

import 'event_card.dart';

class ScrollingCardWidget extends StatelessWidget {
  final bool big;
  const ScrollingCardWidget({
    required this.big,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: big ? 345 : 255,
      child: ListView.separated(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => EventCard(
          big: big,
          title: 'AI in mental Health',
          venue: 'Sargam Stage',
        ),
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 8,
        ),
        itemCount: 10,
      ),
    );
  }
}
