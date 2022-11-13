import 'package:flutter/material.dart';
import 'package:utils_widget/utils_widget.dart';

class Flight extends StatefulWidget {
  const Flight({super.key});

  @override
  State<Flight> createState() => _FlightState();
}

class _FlightState extends State<Flight> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Card(
        elevation: 1,
        color: Colors.white,
        child: SizedBox(
          width: 500,
          height: 500,
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
                width: 300,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: const Text('Search'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
