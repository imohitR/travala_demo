import 'package:flutter/material.dart';

import '../../widget/responsive.dart';

class ReviewDetail extends StatefulWidget {
  const ReviewDetail({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  State<ReviewDetail> createState() => _ReviewDetailState();
}

class _ReviewDetailState extends State<ReviewDetail> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    'assets/images/qw1.png',
    'assets/images/qw2.png',
    'assets/images/qw3.png',
    // 'assets/images/qw4.png',
  ];
  final List<String> assets = [
    'assets/images/rq1.png',
    'assets/images/rq2.png',
    'assets/images/rq3.png',
    // 'assets/images/qw4.png',
  ];

  final List<String> title = [
    'review1',
    'review2',
    'review3',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
      color: Colors.white38,
          child: Padding(
              padding: EdgeInsets.only(top: widget.screenSize.height / 100),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: widget.screenSize.width / 5),
                    ...Iterable<int>.generate(assets.length).map(
                      (int pageIndex) => Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: widget.screenSize.width / 2.5,
                                width: widget.screenSize.width / 1.5,
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
                                  top: widget.screenSize.height / 70,
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
                          SizedBox(width: widget.screenSize.width / 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        )
        : Container(
      color: Colors.white38,
          child: Padding(
              padding: EdgeInsets.only(
                top: widget.screenSize.height * 0.06,
                left: widget.screenSize.width / 15,
                right: widget.screenSize.width / 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        // height: 1000,
                        // width: 1500,
                        height: widget.screenSize.height / 1.50,
                        width: widget.screenSize.width / 1.20,
                        child: PageView.builder(
                          controller: controller,
                          onPageChanged: (index) {
                            setState(() {
                              currentIndex = index % images.length;
                            });
                          },
                          itemBuilder: (context, index) {
                            return Container(

                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset(
                                  images[index % images.length],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < images.length; i++)
                            buildIndicator(currentIndex == i)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
        );
  }
}

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 12 : 10,
      width: isSelected ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    ),
  );
}
