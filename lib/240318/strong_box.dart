class StrongBox<T> {
  T? _thing;

  void put(T thing) {
    if (_thing == null) {
      _thing = thing;
      print('저장되었습니다!');
    } else {
      print('저장실패');
    }
  }

  T? get() {
    if (_thing != null) {
      T? thing = _thing;
      _thing = null;
      return thing;
      // print('${thing}을 얻었다!!');
    } else {
      print('아무것도없어!');
      return null;
    }
  }
}
