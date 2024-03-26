// null 값이 문제
// json 을 class로 역질렬화(decoding)
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
  // json -> class
  Map<String, dynamic> jsonData = jsonDecode(json);
  //collectionSalePrice를 class로 변환
  // List decodingString =
  List collectionSalePrice = jsonData['collectionSalePrice'];
  List<String> results = collectionSalePrice.map((e) => e.toString()).toList();
  print(results);
}
