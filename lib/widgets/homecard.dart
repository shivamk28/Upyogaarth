import 'package:flutter/material.dart';
import 'package:upyogaarth/utility_screens/flashlight.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width / 2 - 10,
        child: Card(
            elevation: 4,
            child: InkWell(
                onTap: openUtility,
                child: Center(
                  child: Text(widget.title),
                ))));
  }

  openUtility() {
    switch (widget.title) {
      case "Flashlight":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FlashlightScreen()));
    }
  }
}
