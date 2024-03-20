import 'collectionSalePrice.dart';

class CollectionChartDataList {
  String collectionName;
  List<CollectionSalePrice>? collectionSalePrice;

  CollectionChartDataList(this.collectionName, this.collectionSalePrice);


  @override
  String toString() {
    return 'CollectionChartDataList{collectionName: $collectionName, collectionSalePrice: $collectionSalePrice}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionChartDataList &&
          runtimeType == other.runtimeType &&
          collectionName == other.collectionName &&
          collectionSalePrice == other.collectionSalePrice;

  @override
  int get hashCode => collectionName.hashCode ^ collectionSalePrice.hashCode;
}
