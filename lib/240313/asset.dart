abstract class Asset {
  String name;

  Asset({required this.name});

  void show() {
    print('이름 : $name');
  }
}
