abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });

  // 정보 출력 메소드
  void assetInfo() {
    print('[$name] 가격:$price원');
  }

  // 가시 판단 메소드
  void isVisibility(bool isVisibility) {
    if (isVisibility) {
      print('$name은 유형재산입니다.');
      return;
    }
    print('$name은 무형재산입니다.');
  }
}
