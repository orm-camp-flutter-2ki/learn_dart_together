import 'package:learn_dart_together/0313/tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;
  int ramGB;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required this.ramGB,
  });

  @override
  void assetInfo() {
    super.assetInfo();
    print('브랜드:$makerName, 램:${ramGB}GB');
  }

  // 검색 문구 출력
  void search(String searchValue) {
    print('$searchValue를 검색합니다.');
  }

  // 온라인게임
  void playOnlineGame(bool playNow) {
    if (playNow) {
      print('게임을 시작합니다');
      return;
    }
    print('게임을 종료합니다');
  }
}

void main() {
  Computer computer = Computer(
    name: 'MacBook Pro',
    price: 2300000,
    color: 'white',
    makerName: 'Apple',
    ramGB: 16,
  );

  computer.assetInfo();
  computer.search('김치찌개 맛있게 끓이는 방법');
  computer.playOnlineGame(true);
  computer.buy(false);
}
