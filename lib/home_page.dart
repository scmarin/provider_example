import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'second_page.dart';
import 'data_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // display counter value
              Consumer<DataClass>(builder: (context, data, child) {
                return Text(
                  '${data.x}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              }),
              Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              // add button
              ElevatedButton(
                  onPressed: () {
                    if (context.read<DataClass>().x > 5) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Can only add up to 5.")));
                    } else {
                      Provider.of<DataClass>(context, listen: false)
                          .incrementX();
                    }
                  },
                  child: Text("ADD")),
              Spacer(),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      // next page button
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/second");
                          },
                          child: Text(
                            "Next Page",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      Spacer(),
                      Icon(Icons.skip_next, color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
