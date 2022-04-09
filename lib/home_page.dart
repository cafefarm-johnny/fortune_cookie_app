import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: 14. FortuneCookieBox 변수를 선언하고 초기화 해주세요.
  // TODO: 15. 현재 표시 중인 쿠키를 가르키는 _cookie 변수를 선언해주세요.

  // TODO: 16. 앱 실행 시 표시될 쿠키를 초기화해주세요. (Hint! initState 메서드를 오버라이드 해주세요.)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. AppBar를 추가해주세요.
      // TODO: 2. AppBar 타이틀을 "Fortune Cookie"로 하고 중앙 정렬 해주세요.
      appBar: AppBar(
        title: const Center(child: Text("Fortune Cookie")),
      ),
      
      // TODO: 4. 화면에 fortune-cookie.jpg 이미지를 표시해주세요.
      // TODO: 5. 이미지 아래에 텍스트를 추가하고 글자 크기를 18으로 설정해주세요.
      // TODO: 6. 텍스트 아래에 붉은색 버튼(가로 300, 높이 50)을 추가해주세요. (Hint! Column을 사용하세요.)
      // TODO: 7. 버튼 텍스트는 Lucky!로, 글자 크기를 20, 색상을 흰색으로 설정해주세요.

      // TODO: 17. 버튼이 클릭되면 텍스트 메시지가 업데이트되도록 처리해주세요. (Hint! 상태 갱신은 setState 메서드를 사용하세요.)
      body: Image.asset("assets/images/fortune-cookie.jpg"),
    );
  }
}

// TODO: 8. 새 파일에 FortuneCookie 클래스를 만들어주세요. 파일명은 스네이크 케이스가 관례입니다.
// TODO: 9. FortuneCookie 클래스는 문자열 message와 상수 생성자를 갖습니다.

// TODO: 10. FortuneCookieBox 클래스 만들어주세요.
// TODO: 11. FortuneCookieBox 클래스에 List<FortuneCookie> _cookies 멤버를 추가해주세요.
// TODO: 12. 아래 메세지를 이용해서 FortuneCookie 인수를 만들고 _cookies에 추가해주세요.
/*
한줄 코드라도 서로 거들면 낫다.
팀장 한마디에 천줄코드 안써도 된다.
버그를 잡으려다 잡은버그 놓친다.
아니쓴 코드에 오류날까?
길고 짧은 것은 strlen을 써봐야 안다.
보기 좋은 코드가 디버깅 하기 좋다.
버그보고 놀란가슴 오타보고 놀란다.
제 코드 구린줄 모른다.
개 같이 코딩해서 정승처럼 사표쓴다.
될성부른 코드는 들여쓰기부터 안다.
*/
// TODO: 13. FortuneCookieBox 클래스에 pick getter를 추가하여 FortuneCookie를 순서대로 반 반환해주세요.

// TODO: 19. 이제 각자의 취향대로 앱을 꾸며주세요!
