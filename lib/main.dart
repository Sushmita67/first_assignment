import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arithmetic.dart';
import 'package:first_assignment/view/dashboard.dart';
import 'package:first_assignment/view/simple_interest_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardScreen(),
        '/arithmetic': (context) => ArithmeticScreen(),
        '/simple_interest': (context) => SimpleInterestScreen(),
        '/area_of_circle': (context) => AreaOfCircleScreen(),
      },
    );
  }
}
