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
  Map<String, dynamic> jsonData = jsonDecode(json);
  List collectionSalePrice = jsonData['collectionSalePrice'];
  List<String> results = collectionSalePrice.map((e) => e.toString()).toList();
  print(results);
  // 오류가 걸리는 이유는 collectionSalePrice에 값이 null이 들어가서
}
