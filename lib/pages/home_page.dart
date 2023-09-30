import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          color: Colors.white,
          height: 150,
          child: const AppBarWidget(),
        ),
      ),
      body: ListView(
        children: const [
          SearchWidget(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextWidget(
              title: 'Ongoing Events',
              size: 28,
            ),
          ),
          ScrollingCardWidget(
            width: 250,
            height: 250,
          ),
          CategoryTitleWidget(title: 'Categories'),
          CategoryScrollWidget(),
          CategoryTitleWidget(title: 'Events'),
          ScrollingCardWidget(
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

class CategoryScrollWidget extends StatelessWidget {
  const CategoryScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) => Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(77, 206, 202, 202),
                borderRadius: BorderRadius.all(Radius.elliptical(50, 50))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 16,
                  ),
                  Text('Workshops'),
                ],
              ),
            ),
          ),
          separatorBuilder: (ctx, index) => const SizedBox(
            width: 10,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class CategoryTitleWidget extends StatelessWidget {
  final String title;
  const CategoryTitleWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            title: title,
            size: 28,
          ),
          const Row(
            children: [
              TextWidget(
                title: 'view all',
                size: 20,
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ScrollingCardWidget extends StatelessWidget {
  final double width;
  final double height;
  const ScrollingCardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => CardWidget(
          width: width,
          height: height,
        ),
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 5,
        ),
        itemCount: 10,
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final double width;
  final double height;
  const CardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.yellow,
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoSearchTextField(
        backgroundColor: Colors.grey.withOpacity(0.5),
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: Colors.grey,
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: Colors.grey,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Track',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              TextWidget(
                title: "What's Happening",
                size: 28,
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.notifications_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final double size;
  const TextWidget({
    super.key,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.blue,
        fontSize: size,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
