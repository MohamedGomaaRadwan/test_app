import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen/view/home_screen.dart';

/// The main application widget.
/// This is the root of the application and serves as the entry point.
class MyApp extends StatelessWidget {
  /// Creates a new instance of `MyApp`.
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
