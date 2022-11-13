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
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      RadioListTile(
                          title: Text('Return'),
                          //leading:
                          // Radio(
                          value: "searchsomethingnew",
                          groupValue: "_hii",
                          onChanged: (value) {})
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
