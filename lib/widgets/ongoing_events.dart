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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

   double cardHeight = screenHeight*0.39;
    double cardwidth = screenWidth*0.8;


    return Column(
      children: [
        SizedBox(
          height: big ? cardHeight : 255,
         // width: big? cardwidth: 100,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2
              ,
              top:2
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => EventCard(
              big: big,
              title: 'AI in mental Health',
              venue: 'Sargam Stage',
            ),
            separatorBuilder: (ctx, index) => const SizedBox(
              width: 20,
            
            ),
            itemCount: 10,
          ),
          
        ),
        
      ],
    );
    
  }
}
