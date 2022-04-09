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
          Container(
            child: Image.asset("assets/images/fortune-cookie.jpg"),
            // TODO: margin이 아닌 alignment로는 조정할 수 없을까? 수치값 개념을 모르니 써먹기 힘든데..
            margin: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 50
            ),
          ),
          Container(
            child: Text(
                _cookie.message,
                style: const TextStyle(fontSize: 18)
            ),
            // TODO: margin의 값은 어떤 기준으로 나뉘는걸까?
            // TODO: 화면을 100으로 잡고 각 요소마다 분담해서 가지게 되나?
            margin: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 20
            ),
          ),
          Container(
            child: MaterialButton(
              child: const Text(
                "Lucky!",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.red,
              height: 50,
              minWidth: 300,
              onPressed: () {
                _pick();
              },
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 30
            ),
          )
        ],
      )
    );
  }
}
