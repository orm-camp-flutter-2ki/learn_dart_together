abstract class TangibleAsset {
  String name;
  int price;
  String color;

  TangibleAsset(
    this.name,
    this.price,
    this.color,
  );

  String system();
}
