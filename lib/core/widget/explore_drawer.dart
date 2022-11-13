import 'package:flutter/material.dart';

class TravalaDrawer extends StatefulWidget {
  const TravalaDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _TravalaDrawerState createState() => _TravalaDrawerState();
}

class _TravalaDrawerState extends State<TravalaDrawer> {
  //bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      title: const Text(
                        'Become a Member',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 3),
                      child: const Text(
                          'Sign up to see exclusive member prices and get crypto rewards!'),
                    ),
                    const SizedBox(
                      height: 15,
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
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Explore',
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
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
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Community',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: MaterialButton(
                            color: const Color.fromARGB(255, 177, 22, 11),
                            onPressed: () {},
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              'Activate NFT',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: MaterialButton(
                            color: const Color.fromARGB(200, 27, 0, 122),
                            onPressed: () {},
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              'Explore NFT',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                              onTap: () {},
                              leading: const Icon(Icons.thumb_up),
                              minLeadingWidth: 10,
                              title: const Text(
                                'Vote',
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'My profile',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.luggage),
                          title: Text('My Trip'),
                          minLeadingWidth: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Information',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.paste),
                          title: Text('About Us'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Invite Program'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.verified),
                          title: Text('Best Price Gurantee'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.verified_user),
                          title: Text('TravelSmart Protection'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.card_giftcard),
                          title: Text('Travel Gift Cards'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.payment),
                          title: Text('Payment Options'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.privacy_tip),
                          title: Text('Privacy Policy'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.cookie),
                          title: Text('Cookie Policy'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.contact_mail),
                          title: Text('Contact'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.file_copy),
                          title: Text('Terms And Conditions'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.telegram),
                          title: Text('Blog'),
                          minLeadingWidth: 10,
                        ),
                        const ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help'),
                          minLeadingWidth: 10,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.75,
                          color: Colors.grey.withOpacity(0.3),
                        ),
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
          ),
        ),
      ),
    );
  }
}
