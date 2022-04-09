class FortuneCookie {
  final String message;

  const FortuneCookie(this.message);

  factory FortuneCookie.empty() {
    return const FortuneCookie('');
  }
}

class FortuneCookieBox {
  List<FortuneCookie> _cookies;

  FortuneCookieBox._internal(this._cookies);

  factory FortuneCookieBox.pushAll(List<String> messages) {
    List<FortuneCookie> fortuneCookies = [];

    for (var msg in messages) {
      fortuneCookies.add(FortuneCookie(msg));
    }

    return FortuneCookieBox._internal(fortuneCookies);
  }

  FortuneCookie pick(int pickingCount) {
    return _cookies[pickingCount];
  }

  bool isEmpty(int pickingCount) {
    return _cookies.length - 1 == pickingCount;
  }
}