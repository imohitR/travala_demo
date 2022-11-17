import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:travalacom/core/home_view.dart';
import 'package:travalacom/theme/utils/app_sizes.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  final bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Travala.com',
                  style: TextStyle(
                    // color: Colors.indigo,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                  ),
                ),
                gapW24,
                Container(
                  color: Colors.blueGrey,
                  width: 1,
                  height: 40,
                ),
                gapW24,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Stays',
                                style: TextStyle(
                                  color: _isHovering[0]
                                      ? Colors.indigo
                                      : Colors.black,
                                )),
                            const SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                      gapW24,
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Flights',
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.indigo
                                    : Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                      gapW24,
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Activities',
                              style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.indigo
                                    : Colors.black,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 500,
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              color: Colors.red,
                              onPressed: () {},
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: const Text(
                                'Activate NFT',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        color: Colors.blueGrey,
                        width: 1,
                        height: 32,
                      ),
                      SizedBox(width: 20),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              color: const Color.fromARGB(255, 5, 52, 90),
                              onPressed: () {},
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: const Text(
                                'Explore NFT',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(width: 20),
                      Container(
                        color: Colors.blueGrey,
                        width: 1,
                        height: 32,
                      ),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'MY TRIP',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 17, 85, 52)),
                                )),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        color: Colors.blueGrey,
                        width: 1,
                        height: 32,
                      ),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'VOTE',
                                  style: TextStyle(color: Colors.black),
                                )),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.blueGrey,
                        width: 1,
                        height: 32,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.language,
                          color: Colors.black,
                        ),
                      ),
                      // SizedBox(
                      //   width: screenSize.width / 30,
                      // ),

                      Container(
                        color: Colors.blueGrey,
                        width: 1,
                        height: 32,
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(color: Colors.black),
                                )),
                            const SizedBox(height: 3),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),

                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          side: const BorderSide(
                                              color: Colors.blue)))),
                              child: const Text(
                                'Sign Up Now',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
