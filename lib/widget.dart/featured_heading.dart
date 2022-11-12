import 'package:flutter/material.dart';
import 'package:travalacom/widget.dart/responsive.dart';

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
                  'TOP COUNTRIES AND TERRITORIES',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Unique wildlife tours & destinations',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
                SizedBox(height: 10),
              ],
            )
          : Row(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              // children: [
              //   const Text(
              //     'TOP COUNTRIES AND TERRITORIES',
              //     style: TextStyle(
              //       fontSize: 40,
              //       fontFamily: 'Montserrat',
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   Expanded(
              //     child: Text(
              //       'Unique wildlife tours & destinations',
              //       textAlign: TextAlign.end,
              //       style: Theme.of(context).primaryTextTheme.subtitle1,
              //     ),
              //   ),
              // ],
              ),
    );
  }
}
