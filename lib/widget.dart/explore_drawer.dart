import 'package:flutter/material.dart';

class TravalaDrawer extends StatefulWidget {
  const TravalaDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _TravalaDrawerState createState() => _TravalaDrawerState();
}

class _TravalaDrawerState extends State<TravalaDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: Stack(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_back),
                title: const Text(
                  'Become a Member',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                  // width: 300,
                  child: Text(
                      '  Sign up to see exclusive member prices and get crypto rewards!')),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text('Sign up or Login'),
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.75,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    'Explore',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                  const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Book a Stay'),
                    minLeadingWidth: 10,
                  ),
                  const ListTile(
                    leading: Icon(Icons.flight),
                    title: Text('Book a Flight'),
                    minLeadingWidth: 10,
                  ),
                  const ListTile(
                    leading: Icon(Icons.local_activity),
                    title: Text('Book an Activity '),
                    minLeadingWidth: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: Colors.grey,
                  ),
                  Text(
                    'Community',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    title: MaterialButton(
                      color: Colors.red,
                      onPressed: () {},
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        'Activate NFT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 2,
                  // ),
                  ListTile(
                    title: MaterialButton(
                      color: const Color.fromARGB(255, 5, 52, 90),
                      onPressed: () {},
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        'Explore NFT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                    child: ListTile(
                        onTap: () {},
                        leading: Icon(Icons.thumb_up),
                        minLeadingWidth: 10,
                        title: const Text(
                          'VOTE',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: Colors.grey,
                  ),
                  Text(
                    'My profile',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    minLeadingWidth: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.luggage),
                    title: Text('My Trip'),
                    minLeadingWidth: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: Colors.grey,
                  ),
                  Text(
                    'Setting',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Languages'),
                    trailing: Icon(Icons.flag),
                    minLeadingWidth: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.currency_bitcoin),
                    title: Text('Popular Currencies'),
                    minLeadingWidth: 10,
                    trailing: Text("US |USD"),
                  )
                ],
              )

              //  Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         width: double.maxFinite,
              //         child: TextButton(
              //           style: TextButton.styleFrom(
              //             foregroundColor: Colors.black,
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //           ),
              //           onPressed: () {},
              //           // shape: RoundedRectangleBorder(
              //           //   borderRadius: BorderRadius.circular(15),
              //           // ),
              //           child: const Padding(
              //             padding: EdgeInsets.only(
              //               top: 15.0,
              //               bottom: 15.0,
              //             ),
              //             child: Text(
              //               'Sign in',
              //               style: TextStyle(
              //                 fontSize: 15,
              //                 color: Color.fromARGB(255, 6, 1, 24),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       InkWell(
              //         onTap: () {},
              //         child: const Text(
              //           'Discover',
              //           style: TextStyle(
              //               color: Color.fromARGB(255, 14, 0, 0), fontSize: 22),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              //         child: Divider(
              //           color: Colors.blueGrey[400],
              //           thickness: 2,
              //         ),
              //       ),
              //       InkWell(
              //         onTap: () {},
              //         child: const Text(
              //           'Contact Us',
              //           style: TextStyle(
              //               color: Color.fromARGB(255, 8, 0, 0), fontSize: 22),
              //         ),
              //       ),
              //       Expanded(
              //         child: Align(
              //           alignment: Alignment.bottomCenter,
              //           child: Text(
              //             'Copyright © 2022 | Travala',
              //             style: TextStyle(
              //               color: Colors.blueGrey[300],
              //               fontSize: 14,
              //             ),
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ]),
      ),
    );
  }
}
