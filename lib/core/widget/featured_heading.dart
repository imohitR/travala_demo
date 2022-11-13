import 'package:flutter/material.dart';
import 'package:travalacom/core/widget/responsive.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(),
                const Text(
                  'Top Countries and Territories',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(height: 5),
                // Text(
                //   'Unique wildlife tours & destinations',
                //   textAlign: TextAlign.end,
                //   style: Theme.of(context).primaryTextTheme.subtitle1,
                // ),
                const SizedBox(height: 10),
              ],
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
                  '-- Discover --',
                  style: TextStyle(
                      fontSize: 25, color: Colors.grey.withOpacity(0.5)),
                ),
                const Text(
                  'Top Countries and Territories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
    );
  }
}
