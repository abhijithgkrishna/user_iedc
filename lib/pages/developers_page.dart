import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DevPop extends StatelessWidget {
  DevPop({super.key});

  final List<Dev> developers = [
    Dev(name: "Sreenath K P", image: "assets/devs/sreenath.jpg"),
    Dev(name: "Nahal Roshan", image: "assets/devs/nahal.jpg"),
    Dev(name: "Binto Joseph", image: "assets/devs/binto.jpg"),
    Dev(name: "Abhijith G", image: "assets/devs/abhijith.jpg"),
    Dev(name: "Rahul Das P", image: "assets/devs/rahul.jpg"),
    Dev(name: "Maheen Kabeer", image: "assets/devs/maheen.jpg"),
    Dev(name: "Adwaid", image: "assets/devs/adwaid.jpg"),
  ];
  void shuffle() {
    developers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    developers.shuffle();
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.75,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Made with ",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF2057E3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color(0xFF2057E3),
                      ),
                    ],
                  ),
                ),

                StaggeredGrid.count(
                  axisDirection: AxisDirection.down,
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  children: List.generate(
                    developers.length,
                    (index) => Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(developers[index].image),
                          maxRadius: 30,
                          minRadius: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            developers[index].name,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF2057E3),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   child: GridView.builder(
                //     itemCount: developers.length,
                //     padding: EdgeInsets.all(0),
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //     ),
                //     itemBuilder: (context, int) => Column(
                //       children: [
                //         CircleAvatar(
                //           backgroundImage: NetworkImage(developers[int].image),
                //           maxRadius: 30,
                //           minRadius: 20,
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(0.0),
                //           child: Text(
                //             developers[int].name,
                //             overflow: TextOverflow.ellipsis,
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //               fontSize: 12,
                //               color: Color(0xFF2057E3),
                //               fontWeight: FontWeight.w700,
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Dev {
  final String name;
  final String image;
  Dev({required this.name, required this.image});
}
