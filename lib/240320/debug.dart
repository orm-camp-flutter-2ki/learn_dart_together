import 'dart:convert';

final String json = '''{
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

void main() {
  Map<String, dynamic> data = jsonDecode(json);

  List collectionChartDataList = data['collectionChartDataList'] as List;

  var result = collectionChartDataList.map(dataMapping).toList();

  print(result);
}
// 일급 함수
var innerDataMapping = (dynamic data) {
  return CollectionSalePrice(data['price'], data['cvtDatetime']);
};

var dataMapping = (dynamic data) {
  if (data['collectionSalePrice'] != null) {
    return CollectionChartDataList(
      data['collectionName'],
        (data['collectionSalePrice'] as List).map(innerDataMapping).toList()
    );
  }
  return CollectionChartDataList(data['collectionName'], null);
};

class CollectionChartDataList {
  String collectionName;
  List<CollectionSalePrice>? collectionSalePrice;

  CollectionChartDataList(this.collectionName, this.collectionSalePrice);

  @override
  String toString() {
    return 'CollectionChartDataList{collectionName: $collectionName, collectionSalePrice: $collectionSalePrice}';
  }
}

class CollectionSalePrice {
  double price;
  String cvtDatetime;

  CollectionSalePrice(this.price, this.cvtDatetime);

  @override
  String toString() {
    return 'CollectionSalePrice{price: $price, cvtDatetime: $cvtDatetime}';
  }
}
