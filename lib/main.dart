import 'package:bloc_practice/routes/route_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.teal),
      ),
      // initialRoute: RouteManager.home,
      onGenerateRoute: RouteManager.onGenerateRoute,
    );
  }
}
