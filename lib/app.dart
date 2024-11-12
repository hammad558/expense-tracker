import 'package:flutter/material.dart';
import 'package:my_app/app_view.dart'; // Assuming AppView is your main UI

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Replace with your app's title
      theme: ThemeData(
        // Customize your app's theme here
        primarySwatch: Colors.blue,
      ),
      home: const AppView(), // Replace with your main screen
    );
  }
}