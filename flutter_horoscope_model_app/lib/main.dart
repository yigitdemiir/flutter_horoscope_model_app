// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_burc_projesi/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
