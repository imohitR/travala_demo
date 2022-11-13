import 'package:flutter/material.dart';
import 'package:travalacom/utils/app_sizes.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
        height: screenSize.height * 0.45,
        width: screenSize.width,
        child: Column(
          children: [
            const Text(
              "BOOK ACTIVITIES WORLDWIDE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Best Prices Guaranteed on 410,000+ Activities,Tours and Experiences, Worldwide ",
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 185,
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  width: 500,
                  height: 500,
                  child: Column(
                    children: [
                      const ListTile(
                        minLeadingWidth: 10,
                        leading: Icon(Icons.search),
                        title: Text('Find amazing things to do'),
                      ),
                      const ListTile(
                        minLeadingWidth: 10,
                        leading: Icon(Icons.date_range),
                        title: Text('17-Nov 2022-18 Nov 20222'),
                      ),
                      gapH20,
                      SizedBox(
                        width: 400,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.blue,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Text('Search'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
