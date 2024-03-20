import 'dart:convert';

import 'practice_1_debug/collectionChartDataList.dart';
import 'practice_1_debug/collectionSalePrice.dart';

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
  // String -> Map<String, dynamic>
  Map<String, dynamic> data = jsonDecode(json);
  // List 로 강제 형 변환
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