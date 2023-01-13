import 'package:fkaa_donation/screen/login%20student/loginstudent.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FKAA E-Donation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loginstudent(),
    );
  }
}
