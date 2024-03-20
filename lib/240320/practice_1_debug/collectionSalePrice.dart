class CollectionSalePrice {
  double price;
  String cvtDatetime;

  CollectionSalePrice(this.price, this.cvtDatetime);


  @override
  String toString() {
    return 'CollectionSalePrice{price: $price, cvtDatetime: $cvtDatetime}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionSalePrice &&
          runtimeType == other.runtimeType &&
          price == other.price &&
          cvtDatetime == other.cvtDatetime;

  @override
  int get hashCode => price.hashCode ^ cvtDatetime.hashCode;
}
