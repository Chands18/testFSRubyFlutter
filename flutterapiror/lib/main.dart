import 'package:flutter/material.dart';
import 'package:flutterapiror/ui/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
      // // home: ChangeNotifierProvider(
      //   // create: (context) => HttpProvider(),
      //   // child: HomeProvider(),
      // ),
    );
  }
}
