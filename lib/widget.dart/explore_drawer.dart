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
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 6, 1, 24),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Discover',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 0, 0), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 0, 0), fontSize: 22),
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
    );
  }
}
