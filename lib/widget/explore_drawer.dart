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
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Become a Member',
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 0, 0), fontSize: 22),
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 10, end: 10),
                    width: 500,
                    height: 40,
                    color: Color.fromARGB(255, 10, 19, 73),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up or Login',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Divider(
                    color: Colors.blueGrey[400],
                    thickness: 1,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Copyright © 2022 | Travala',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
