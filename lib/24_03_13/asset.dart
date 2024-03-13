abstract class Asset {
  String name; // 이름
  String ownership; // 소유권
  String value; // 가치

  Asset({
    required this.name,
    required this.ownership,
    required this.value
  });
}