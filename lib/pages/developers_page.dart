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
                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fapi.brusselstimes.com%2Fwp-content%2Fuploads%2F2019%2F05%2Fvddriessche-c-stamp-media.jpg&tbnid=i9oXReHMgrz-7M&vet=12ahUKEwjzg-qlpu2BAxU-5DgGHaL9AdgQMygSegQIARBl..i&imgrefurl=https%3A%2F%2Fwww.brusselstimes.com%2F57558%2Fvlaams-belang-put-up-dummy-female-candidates-to-ensure-election-of-men&docid=Mm-lKFlBvmNxZM&w=800&h=600&q=dummy%20image%20person&ved=2ahUKEwjzg-qlpu2BAxU-5DgGHaL9AdgQMygSegQIARBl'),
            ),
          ),
        ),
      ),
    );
  }
}
