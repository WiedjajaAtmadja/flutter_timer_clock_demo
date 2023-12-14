import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _clock = DateTime.now().toIso8601String();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _clock = DateTime.now().toIso8601String();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(_clock, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
