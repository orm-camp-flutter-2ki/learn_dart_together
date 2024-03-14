abstract class Asset {
  String name;
  int price;

  Asset(
    this.name,
    this.price,
  );

  String system() => 'Name: $name, Price: $price';
}
