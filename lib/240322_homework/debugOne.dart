import 'dart:convert';

final String jsonString = '''{
 "collectionChartDataList": [
   {
     "collectionName": null,
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
         "price": 60,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

void main() {
  final Map<String, dynamic> json = jsonDecode(jsonString);
  Data data = Data.fromJson(json);

  Collection collection = data.collectionChartDataList.first;

  print(collection.collectionName.length);
}

class CollectionSalePrice {
  num price;
  String cvtDatetime;

  CollectionSalePrice(this.price, this.cvtDatetime);

  CollectionSalePrice.fromJson(Map<String, dynamic> json)
      : price = json['price'],
        cvtDatetime = json['cvtDatetime'];
}

class Collection {
  String collectionName;
  List<CollectionSalePrice> collectionSalePrice;

  Collection(this.collectionName, this.collectionSalePrice);

  Collection.fromJson(Map<String, dynamic> json)
      : collectionName = json['collectionName'] ?? '',
        collectionSalePrice = json['collectionSalePrice'] == null
            ? []
            : (json['collectionSalePrice'] as List)
                .map((e) => CollectionSalePrice.fromJson(e))
                .toList();
}

class Data {
  List<Collection> collectionChartDataList;

  Data(this.collectionChartDataList);

  Data.fromJson(Map<String, dynamic> json)
      : collectionChartDataList = (json['collectionChartDataList'] as List)
            .map((e) => Collection.fromJson(e))
            .toList();
}

//선생님 답안
// class CollectionSalePrice {
//   num price;
//   String cvtDatetime;
//
//   CollectionSalePrice(this.price, this.cvtDatetime);
//
//   CollectionSalePrice.fromJson(Map<String, dynamic> json)
//       : price = json['price'],
//         cvtDatetime = json['cvtDatetime'];
// }
//
// class Collection {
//   String collectionName;
//   List<CollectionSalePrice> collectionSalePrice;
//
//   Collection(this.collectionName, this.collectionSalePrice);
//
//   Collection.fromJson(Map<String, dynamic> json)
//       : collectionName = json['collectionName'] ?? '',
//         collectionSalePrice = json['collectionSalePrice'] == null
//             ? []
//             : (json['collectionSalePrice'] as List)
//                 .map((e) => CollectionSalePrice.fromJson(e))
//                 .toList();
// }
//
// class Data {
//   List<Collection> collectionChartDataList;
//
//   Data(this.collectionChartDataList);
//
//   Data.fromJson(Map<String, dynamic> json)
//       : collectionChartDataList = (json['collectionChartDataList'] as List)
//             .map((e) => Collection.fromJson(e))
//             .toList();
// }
