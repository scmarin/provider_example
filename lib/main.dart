import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/second_page.dart';

import 'home_page.dart';
import 'data_class.dart';

void main() { // handles ChangeNotifier
  runApp(ChangeNotifierProvider(
    create: (context) => DataClass(), // create instance of Provider Model Class where we store data
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // common MaterialApp composition with routes
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/second": (context) => SecondPage()
        });
  }
}
