import 'package:flutter/material.dart';
import 'package:untitled/presentation/main/ui/screens/main_screen.dart';

/// иницилизация  проекта
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
