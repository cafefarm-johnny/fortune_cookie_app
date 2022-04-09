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
    return MaterialApp(
      // TODO: 18. DEBUG 배너를 제거해주세요. (Hot reload가 안되면 앱을 재시작해주세요.)
      home: HomePage(),
    );
  }
}
