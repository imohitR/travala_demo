import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity);

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

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Travala.com',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(width: screenSize.width / 55),
            Container(
              color: Colors.blueGrey,
              width: 1,
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: screenSize.width / 35),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        child: Text('Stays',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue[200]
                                  : Colors.indigo,
                            )),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[0],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 30),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Flights',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.indigo,
                            ),
                          )),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 30),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Activities',
                            style: TextStyle(
                              color: _isHovering[2]
                                  ? Colors.blue[200]
                                  : Colors.indigo,
                            ),
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
                SizedBox(
                  height: screenSize.height / 15,
                  width: screenSize.width / 10,
                  child: MaterialButton(
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
                SizedBox(width: screenSize.width / 35),
                SizedBox(
                  height: screenSize.height / 15,
                  width: screenSize.width / 10,
                  child: MaterialButton(
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
                // const SizedBox(
                //   width: 10,
                // ),
                SizedBox(
                  height: screenSize.height / 12,
                  width: screenSize.width / 12,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'MY TRIP',
                        style:
                            TextStyle(color: Color.fromARGB(255, 17, 85, 52)),
                      )),
                ),
                // SizedBox(
                //   width: screenSize.width / 20,
                // ),
                SizedBox(
                  height: 34,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'VOTE',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                // const SizedBox(
                //   width: 10,
                // ),
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
                SizedBox(
                  height: 34,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  width: screenSize.width / 25,
                ),
                SizedBox(
                    height: screenSize.height / 15,
                    width: screenSize.width / 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(color: Colors.blue)))),
                      child: const Text(
                        'Sign Up Now',
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              ],
            ),

            // SizedBox(
            //   height: 34,
            //   width: 80,
            //   child: MaterialButton(
            //     color: Colors.red,
            //     onPressed: () {},
            //     shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(5))),
            //     child: const Text(
            //       'Activate NFT',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),

            // InkWell(
            //     child: Text(
            //   'Sign in',
            //   style: TextStyle(
            //     color: _isHovering[3] ? Colors.white : Colors.indigo,
            //   ),
            // )),
          ],
        ),
      ),
    );
  }
}
