// import 'package:flutter/material.dart';
// import 'package:travalacom/widget.dart/responsive.dart';

// class FloatingQuickAccessBar extends StatefulWidget {
//   const FloatingQuickAccessBar({
//     Key? key,
//     required this.screenSize,
//   }) : super(key: key);

//   final Size screenSize;

//   @override
//   _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
// }

// class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
//   List _isHovering = [false, false, false, false];
//   List<Widget> rowElements = [];

//   // List<String> items = ['Stays', 'Flights', 'Activities'];
//   // List<IconData> icons = [
//   //   Icons.apartment,
//   //   Icons.flight,
//   //   Icons.people,
//   //   Icons.wb_sunny
//   // ];

//   List<Widget> generateRowElements() {
//     // rowElements.clear();
//     // for (int i = 0; i < items.length; i++) {
//     //   Widget elementTile = InkWell(
//     //     splashColor: Color.fromARGB(0, 1, 11, 19),
//     //     hoverColor: Colors.transparent,
//     //     onHover: (value) {
//     //       setState(() {
//     //         value ? _isHovering[i] = true : _isHovering[i] = false;
//     //       });
//     //     },
//     //     onTap: () {},
//     //     child: Text(
//     //       items[i],
//     //       style: TextStyle(
//     //         color: _isHovering[i]
//     //             ? Theme.of(context).primaryTextTheme.button!.decorationColor
//     //             : Theme.of(context).primaryTextTheme.button!.backgroundColor,
//     //       ),
//     //     ),
//     //   );
//     //   Widget spacer = SizedBox(
//     //     height: widget.screenSize.height / 20,
//     //     child: VerticalDivider(
//     //       width: 1,
//     //       color: Colors.blueGrey[100],
//     //       thickness: 1,
//     //     ),
//     //   );
//     //   rowElements.add(elementTile);
//     //   if (i < items.length - 1) {
//     //     rowElements.add(spacer);
//     //   }
//     // }

//     return rowElements;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       heightFactor: 1,
//       child: Padding(
//         padding: EdgeInsets.only(
//           top: widget.screenSize.height * 0.40,
//           left: ResponsiveWidget.isSmallScreen(context)
//               ? widget.screenSize.width / 12
//               : widget.screenSize.width / 5,
//           right: ResponsiveWidget.isSmallScreen(context)
//               ? widget.screenSize.width / 12
//               : widget.screenSize.width / 5,
//         ),
//         child: ResponsiveWidget.isSmallScreen(context)
//             ? Column(
//                 children: [
//                   ...Iterable<int>.generate(items.length).map(
//                     (int pageIndex) => Padding(
//                       padding:
//                           EdgeInsets.only(top: widget.screenSize.height / 80),
//                       child: Card(
//                         color: Theme.of(context).cardColor,
//                         elevation: 4,
//                         child: Padding(
//                           padding: EdgeInsets.only(
//                               top: widget.screenSize.height / 45,
//                               bottom: widget.screenSize.height / 45,
//                               left: widget.screenSize.width / 20),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 icons[pageIndex],
//                                 color: Theme.of(context).iconTheme.color,
//                               ),
//                               SizedBox(width: widget.screenSize.width / 20),
//                               InkWell(
//                                 splashColor: Colors.transparent,
//                                 hoverColor: Colors.transparent,
//                                 onTap: () {},
//                                 child: Text(
//                                   items[pageIndex],
//                                   style: TextStyle(
//                                       color: Theme.of(context).primaryColor,
//                                       fontSize: 16),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             : Card(
//                 elevation: 5,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: widget.screenSize.height / 50,
//                     bottom: widget.screenSize.height / 50,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: generateRowElements(),
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:travalacom/widget.dart/Tabbar/Stays.dart';
import 'package:travalacom/widget.dart/Tabbar/flights.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  // const Text(
                  //   "BOOK HOTELS AND SAVE UP TO 40%",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18.0,
                  //       color: Colors.black),
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // const Text(
                  //   "Best Prices Guaranteed On 2,200,000+\n Hotels & Accommodations Worldwide",
                  //   style: TextStyle(fontSize: 14.0),
                  // ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  PreferredSize(
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                          //isScrollable: true,
                          //controller: _tabController,
                          labelColor: Colors.blue,
                          unselectedLabelColor:
                              Color.fromARGB(193, 138, 135, 135),
                          // controller: _tabController,
                          tabs: [
                            Tab(
                              text: "Stays",
                              icon: Icon(
                                Icons.hotel_outlined,
                              ),
                            ),
                            // SizedBox(
                            //   width: screenSize.width / 300,
                            // ),
                            Tab(
                              text: "Flights",
                              icon: Icon(
                                Icons.airplanemode_active,
                              ),
                            ),
                            Tab(
                              text: "Activities",
                              icon: Icon(
                                Icons.local_activity_outlined,
                              ),
                            ),
                          ],
                        ),
                      ),
                      preferredSize: screenSize),
                  // Container(
                  //   child: const TabBar(
                  //     isScrollable: true,
                  //     //controller: _tabController,
                  //     labelColor: Colors.blue,
                  //     unselectedLabelColor: Color.fromARGB(193, 138, 135, 135),
                  //     // controller: _tabController,
                  //     tabs: [
                  //       Tab(
                  //         text: "Stays",
                  //         icon: Icon(
                  //           Icons.hotel_outlined,
                  //         ),
                  //       ),
                  //       // SizedBox(
                  //       //   width: screenSize.width / 300,
                  //       // ),
                  //       Tab(
                  //         text: "Flights",
                  //         icon: Icon(
                  //           Icons.airplanemode_active,
                  //         ),
                  //       ),
                  //       Tab(
                  //         text: "Activities",
                  //         icon: Icon(
                  //           Icons.local_activity_outlined,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: double.maxFinite,
                    height: 300,
                    child: const TabBarView(
                        // controller: _tabController,
                        children: [Stays(), Flight(), Text('786')]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
