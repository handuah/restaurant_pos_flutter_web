import 'package:flutter/material.dart';
import 'package:restaurant_pos_flutter_web/screens/signInPage.dart';
// TO RUN ON WEB WITH IMAGES
// flutter run -d chrome --webserver html

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant POS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SignInPage(),
    );
  }
}
