import 'package:flutter/material.dart';
import 'package:travalacom/widget.dart/responsive.dart';

class WorldWideDestination extends StatelessWidget {
  const WorldWideDestination({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 20,
              bottom: screenSize.height / 20,
            ),
            width: screenSize.width,
            // color: Colors.black,
            child: const Text(
              'WORLDWIDE DESTINATIONS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 10,
              bottom: screenSize.height / 15,
            ),
            width: screenSize.width,
            // color: Colors.black,
            child: Column(children: [
              Text(
                '--Choose your--',
                style: TextStyle(
                    fontSize: 25, color: Colors.grey.withOpacity(0.5)),
              ),
              Text(
                'Worldwide Destinations',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          );
  }
}
