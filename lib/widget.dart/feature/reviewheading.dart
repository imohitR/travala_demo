import 'package:flutter/material.dart';
import 'package:travalacom/widget.dart/responsive.dart';

class ReviewHeading extends StatelessWidget {
  const ReviewHeading({
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
                  'WHAT OUR CUSTOMERS SAY',
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
                  '-- Customer Reviews --',
                  style: TextStyle(
                      fontSize: 25, color: Colors.grey.withOpacity(0.5)),
                ),
                Text(
                  'What Our Customer Say',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
    );
    //  Row(
    //     mainAxisSize: MainAxisSize.max,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       const Text(
    //         '-- Customer Reviews --\n',
    //         style: TextStyle(
    //           color: Colors.grey,
    //           fontSize: 27,
    //           fontFamily: 'Montserrat',
    //           // fontWeight: FontWeight.bold,
    //         ),
    //       ),

    //       Text(
    //         'What Our Customer Say',
    //         style: TextStyle(
    //           fontSize: 24,
    //           fontFamily: 'Montserrat',
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       // Expanded(
    //       //   child: Text(
    //       //     'WHAT OUR CUSTOMERS SAY',
    //       //     textAlign: TextAlign.end,
    //       //     style: Theme.of(context).primaryTextTheme.subtitle1,
    //       //   ),
    //       // ),
    //     ],
    //   ),
    //);
  }
}
