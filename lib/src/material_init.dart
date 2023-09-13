import 'package:flutter/material.dart';
import 'package:login_dio/src/pages/home_page.dart';
import 'package:login_dio/src/pages/login_page.dart';

class InitApp extends StatefulWidget {
  const InitApp({super.key});

  @override
  State<InitApp> createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => const Home(),
      },
    );
  }
}