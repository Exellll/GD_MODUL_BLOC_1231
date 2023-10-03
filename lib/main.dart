import 'package:flutter/material.dart';
import 'package:gd_modul_bloc_1231/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginview(),
    );
  }
}
