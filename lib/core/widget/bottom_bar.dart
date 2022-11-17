// import 'package:flutter/material.dart';
// import 'package:travalacom/core/widget/bottom_bar_column.dart';
// import 'package:travalacom/core/widget/info_text.dart';
// import 'package:travalacom/core/widget/responsive.dart';

// class BottomBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<String> images = [
//       'assets/images/asia.jpg',
//       'assets/images/africa.jpg',
//       'assets/images/europe.jpg',
//       'assets/images/south_america.jpg',
//       'assets/images/australia.jpg',
//       'assets/images/antarctica.jpg',
//     ];
//     var screenSize = MediaQuery.of(context).size;

//     return Container(
//       padding: const EdgeInsets.all(30),
//       color: const Color.fromARGB(255, 4, 58, 150),
//       child: ResponsiveWidget.isSmallScreen(context)
//           ? Column(
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: const [
//                     BottomBarColumn(
//                       heading: 'ABOUT',
//                       s1: 'Contact Us',
//                       s2: 'About Us',
//                       s3: 'Careers',
//                     ),
//                     BottomBarColumn(
//                       heading: 'HELP',
//                       s1: 'Payment',
//                       s2: 'Cancellation',
//                       s3: 'FAQ',
//                     ),
//                     BottomBarColumn(
//                       heading: 'SOCIAL',
//                       s1: 'Twitter',
//                       s2: 'Facebook',
//                       s3: 'YouTube',
//                     ),
//                   ],
//                 ),
//                 Container(
//                   color: Colors.blueGrey,
//                   width: double.maxFinite,
//                   height: 1,
//                 ),
//                 const SizedBox(height: 20),
//                 InfoText(
//                   type: 'Email',
//                   text: 'travel@gmail.com',
//                 ),
//                 const SizedBox(height: 5),
//                 InfoText(
//                   type: 'Address',
//                   text: '128, Trymore Road, Delft, MN - 56124',
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   color: Colors.blueGrey,
//                   width: double.maxFinite,
//                   height: 1,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Copyright © 2022 | TRAVELA',
//                   style: TextStyle(
//                     color: Colors.blueGrey[300],
//                     fontSize: 14,
//                   ),
//                 ),
//               ],
//             )
//           : Column(
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Travala.com',
//                           style: TextStyle(
//                               fontSize: 30, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           width: screenSize.width / 5,
//                           child: const Text(
//                               'We accept Credit Card,Debit Card and Cryptocurrency payments.'),
//                         ),
//                         // GridView.builder(
//                         //   itemCount: images.length,
//                         //   gridDelegate:
//                         //       const SliverGridDelegateWithMaxCrossAxisExtent(
//                         //           maxCrossAxisExtent: 4),
//                         //   itemBuilder: (BuildContext context, int index) {
//                         //     return Image.asset(images[index]);
//                         //   },
//                         // )
//                       ],
//                     ),
//                     const BottomBarColumn(
//                       heading: 'ABOUT',
//                       s1: 'Contact Us',
//                       s2: 'About Us',
//                       s3: 'Careers',
//                     ),
//                     const BottomBarColumn(
//                       heading: 'HELP',
//                       s1: 'Payment',
//                       s2: 'Cancellation',
//                       s3: 'FAQ',
//                     ),
//                     const BottomBarColumn(
//                       heading: 'SOCIAL',
//                       s1: 'Twitter',
//                       s2: 'Facebook',
//                       s3: 'YouTube',
//                     ),
//                     Container(
//                       color: Colors.blueGrey,
//                       width: 2,
//                       height: 150,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InfoText(
//                           type: 'Email',
//                           text: 'traveala@gmail.com',
//                         ),
//                         const SizedBox(height: 5),
//                         InfoText(
//                           type: 'Address',
//                           text: '128, Trymore Road, Delft, MN - 56124',
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     color: Colors.blueGrey,
//                     width: double.maxFinite,
//                     height: 1,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   '© Copyright 2017-2022. Travala.com',
//                   style: TextStyle(
//                     color: Colors.blueGrey[300],
//                     fontSize: 14,
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:travalacom/core/widget/bottom_bar_column.dart';
import 'package:travalacom/core/widget/info_text.dart';
import 'package:travalacom/core/widget/responsive.dart';
import 'package:universal_html/html.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(255, 10, 2, 87),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Travala.com',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: const Text(
                      'We accept Credit Card, Debit Card and Cryptocurrency payments.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.86,
                      child: Column(
                        children: const [
                          Divider(
                            color: Colors.grey,
                          ),
                          ExpansionTile(
                            title: Text(
                              'TRAVALA.COM',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('About Us')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('AVA Token')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Smart Program')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Invite Program')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Affiliate Program')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Travel Credits')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Travel Gift Cards')),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          ExpansionTile(
                            title: Text(
                              'SUPPORT',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Help Centre')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('My Trip')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Help Centre')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Concierge')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Contact us')),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Help Centre')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Partnership')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Privacy Policy')),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          ExpansionTile(
                            title: Text(
                              'USEFUL LINKS',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Mobile App')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Business Travel')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Payment Options')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Binance Travel')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Partner Network')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Bug Report')),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          ExpansionTile(
                            title: Text(
                              'RESOURCES',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Official Blog')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Our Partners')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Travel Advices')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Travel Guides')),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Coin Listing')),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          ExpansionTile(
                            title: Text(
                              'COMMUNITY',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            children: [
                              Text(''),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                const SizedBox(height: 20),
                InfoText(
                  type: 'Email',
                  text: 'travel@gmail.com',
                ),
                const SizedBox(height: 5),
                InfoText(
                  type: 'Address',
                  text: '128, Trymore Road, Delft, MN - 56124',
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | TRAVELA',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'traveala@gmail.com',
                        ),
                        const SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '128, Trymore Road, Delft, MN - 56124',
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | TRAVALA',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
