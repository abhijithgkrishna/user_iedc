import 'package:flutter/material.dart';

class DevPop extends StatelessWidget {
  const DevPop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 400,
        width: 500,
        child: Card(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, int) => CircleAvatar(
              child: Image.network(
                'https://avatars.githubusercontent.com/u/55942632?v=4',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
