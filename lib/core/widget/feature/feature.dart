import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:travalacom/components/components.dart';

import '../../../components/icons.dart';
import '../../widget/responsive.dart';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:travalacom/components/components.dart';
import '../../../components/icons.dart';
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
                  SizedBox(width: screenSize.width / 50),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.height / 2,
                              width: screenSize.width / 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.contain,
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
                SizedBox(
                  height: screenSize.height / 4,
                  width: screenSize.width / 3.8,
                  child: ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text("24/7 Customer Support",
                              style: headlineSecondaryTextStyle,
                              textAlign: TextAlign.center),
                        ),
                        Text(
                            "Do you need help or have a question? Contact our proactive 24/7 customer support team via live chat, email, hotline or online ticket system.",
                            style: bodyTextStyle,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 4,
                  width: screenSize.width / 3.8,
                  child: ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text("Competitive Pricing",
                              style: headlineSecondaryTextStyle,
                              textAlign: TextAlign.center),
                        ),
                        Text(
                            "With access to unique tours and experiences, you benefit from extremely competitive pricing on 410,000+ activities worldwide.",
                            style: bodyTextStyle,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 4,
                  width: screenSize.width / 3.8,
                  child: ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text("Multi-Payment Options",
                              style: headlineSecondaryTextStyle,
                              textAlign: TextAlign.center),
                        ),
                        Text(
                            "We offer various payment methods to make a booking with us. Choose from Credit and Debit Cards, and the leading Cryptocurrencies.",
                            style: bodyTextStyle,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
