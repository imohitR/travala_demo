import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.height * 0.45,
        width: screenSize.width,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         colorFilter: ColorFilter.mode(
        //             Colors.black.withOpacity(0.2), BlendMode.dstATop),
        //         image: const AssetImage(
        //           'assets/images/cover.jpg',
        //         ))),
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
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 185,
              // width not set try to do this

              // width: screenSize.width / 12,
              child: Card(
                color: Colors.white,
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text('Search'),
                        color: Colors.blue,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
