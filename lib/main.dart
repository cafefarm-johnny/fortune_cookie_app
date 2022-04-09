import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const FortuneCookieApp());
}

class FortuneCookieApp extends StatefulWidget {
  const FortuneCookieApp({Key? key}) : super(key: key);

  @override
  State<FortuneCookieApp> createState() => _FortuneCookieAppState();
}

class _FortuneCookieAppState extends State<FortuneCookieApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
