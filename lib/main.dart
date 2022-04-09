import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const FortuneCookie());
}

class FortuneCookie extends StatefulWidget {
  const FortuneCookie({Key? key}) : super(key: key);

  @override
  State<FortuneCookie> createState() => _FortuneCookieState();
}

class _FortuneCookieState extends State<FortuneCookie> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
