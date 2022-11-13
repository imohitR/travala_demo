import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:travalacom/components/components.dart';

import '../../components/icons.dart';
import '../../widget/responsive.dart';

class Featured extends StatelessWidget {
  Featured({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/w1.png',
    'assets/images/w2.png',
    'assets/images/w3.png',
  ];

  final List<String> title = [
    'Trekking',
    'Animals',
    'Photography',
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1!
                                      .color,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => Column(
                    children: [
                      SizedBox(
                        height: screenSize.width / 6,
                        width: screenSize.width / 3.8,
                        child: ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: buildMaterialIconCircle(
                                    "assets/images/icon_development.png", 68),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 16),
                                child: Text("Fast Development",
                                    style: headlineSecondaryTextStyle,
                                    textAlign: TextAlign.center),
                              ),
                              const Text(
                                  "Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.",
                                  style: bodyTextStyle,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: screenSize.height / 70,
                      //   ),
                      //   child: Text(
                      //     title[pageIndex],
                      //     style: TextStyle(
                      //       fontSize: 16,
                      //       fontFamily: 'Montserrat',
                      //       fontWeight: FontWeight.w500,
                      //       color: Theme.of(context)
                      //           .primaryTextTheme
                      //           .subtitle1!
                      //           .color,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
