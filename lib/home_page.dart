import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/fortune_cookie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FortuneCookieBox _box = FortuneCookieBox.pushAll([
    '한줄 코드라도 서로 거들면 낫다.',
    '팀장 한마디에 천줄코드 안써도 된다.',
    '버그를 잡으려다 잡은버그 놓친다.',
    '아니쓴 코드에 오류날까?',
    '길고 짧은 것은 strlen을 써봐야 안다.',
    '보기 좋은 코드가 디버깅 하기 좋다.',
    '버그보고 놀란가슴 오타보고 놀란다.',
    '제 코드 구린줄 모른다.',
    '개 같이 코딩해서 정승처럼 사표쓴다.',
    '될성부른 코드는 들여쓰기부터 안다.'
  ]);
  FortuneCookie _cookie = FortuneCookie.empty();
  int _pickingCount = 0;

  @override
  void initState() {
    super.initState();
    _pick();
  }

  void _pick() {
    setState(() {
      _cookie = _box.pick(_pickingCount);
      _increasePickingCount();
    });
  }

  void _increasePickingCount() {
    if (_box.isPickedAll(_pickingCount)) {
      _pickingCount = 0;
      return;
    }

    _pickingCount++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Fortune Cookie")),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/fortune-cookie.jpg"),
          Text(
              _cookie.message,
              style: const TextStyle(fontSize: 18)
          ),
          MaterialButton(
            child: const Text(
              "Lucky!",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.red,
            height: 50,
            minWidth: 300,
            onPressed: () {
              _pick();
            },
          )
        ],
      )
    );
  }
}
