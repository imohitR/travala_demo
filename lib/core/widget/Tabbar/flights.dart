import 'package:flutter/material.dart';

class Flight extends StatefulWidget {
  const Flight({super.key});

  @override
  State<Flight> createState() => _FlightState();
}

class _FlightState extends State<Flight> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.height * 0.45,
        width: screenSize.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: const AssetImage(
                  'assets/images/cover.jpg',
                ))),
        child: Column(
          children: [
            const Text(
              "BOOK FLIGHT WORLDWIDE",
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
              "Instantly Search and Book with over 600+ Airlines",
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "searchsomethingnew",
                            groupValue: "_hii",
                            onChanged: (value) {}),
                        const Text('Return'),
                        Radio(
                            //title: const Text('Return'),
                            value: "searchsomethingnew",
                            groupValue: "_hii",
                            onChanged: (value) {}),
                        const Text('One way'),
                      ],
                    ),
                    const ListTile(
                      leading: Icon(Icons.flight_outlined),
                      title: Text('Flying from'),
                      trailing: Icon(Icons.swap_horiz),
                    ),
                    const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Flying to'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('17-Nov 2022-18 Nov 20222'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.chair_alt),
                      title: Text('1 Passenger,Economy'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text('Search'),
                        color: Colors.blue,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
