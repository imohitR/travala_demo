import 'package:flutter/material.dart';
import 'package:travalacom/utils/app_sizes.dart';

class Stays extends StatefulWidget {
  const Stays({super.key});

  @override
  State<Stays> createState() => _StaysState();
}

class _StaysState extends State<Stays> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        color: Colors.white,
        child: SizedBox(
          width: 500,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      onPressed: () {},
                      child: buildDateSelector('CHECK-IN', DateTime.now()),
                    ),
                    gapW32,
                    Center(
                      child: MaterialButton(
                        onPressed: () {},
                        child: buildDateSelector('CHECK-OUT', DateTime.now()),
                      ),
                    )
                  ],
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                const ListTile(
                  leading: Icon(Icons.family_restroom),
                  title: Text("1 room - 2 adults - 0 child"),
                  minLeadingWidth: 10,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                SizedBox(
                  width: 300,
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
      ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [Text('Fri'), Text('Nov')],
          )
        ],
      )
    ],
  );
}
