import 'package:flutter/material.dart';
import 'package:utils_widget/utils_widget.dart';

class Stays extends StatefulWidget {
  const Stays({super.key});

  @override
  State<Stays> createState() => _StaysState();
}

class _StaysState extends State<Stays> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Center(
          child: CustomContainer(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for Places or Properties'),
                  ),
                  minLeadingWidth: 10,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: buildDateSelector('CHECK-IN', DateTime.now()),
                    ),
                    Expanded(
                        child: MaterialButton(
                      onPressed: () {},
                      child: buildDateSelector('CHECK-OUT', DateTime.now()),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const ListTile(
                  leading: Icon(Icons.family_restroom),
                  title: Text("1 room - 2 adults - 0 child"),
                  minLeadingWidth: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9))),
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

Widget buildDateSelector(String title, DateTime dateTime) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            dateTime.day.toString().padLeft(2, '0'),
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text('Fri'), Text('Nov')],
          )
        ],
      )
    ],
  );
}
