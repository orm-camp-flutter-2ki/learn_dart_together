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

class CollectionPrice {
  num price;
  String cvtDatetime;

  CollectionPrice({required this.price, required this.cvtDatetime});

  CollectionPrice.fromJson(Map<String, dynamic> json)
      : price = json['price'],
        cvtDatetime = json['cvtDatetime'];

  Map<String, dynamic> toJson() => {'price': price, 'cvtDatetime': cvtDatetime};

  @override
  String toString() {
    return 'CollectionPrice{price: $price, cvtDatetime: $cvtDatetime}';
  }
}

class ChartItem {
  String collectionName;
  List<CollectionPrice> collectionPrice;

  ChartItem({required this.collectionName, required this.collectionPrice});

  ChartItem.fromJson(Map<String, dynamic> json)
      : collectionName = json['collectionName'],
        collectionPrice = json['collectionSalePrice'] == null
            ? []
            : (json['collectionSalePrice'] as List)
                .map((e) => CollectionPrice.fromJson(e))
                .toList();

  @override
  String toString() {
    return 'ChartItem{collectionName: $collectionName, collectionPrice: $collectionPrice}';
  }
}

class Chart {
  List<ChartItem> chartList;

  Chart({required this.chartList});

  Chart.fromJson(Map<String, dynamic> json)
      : chartList = (json['collectionChartDataList'] as List)
            .map((e) => ChartItem.fromJson(e))
            .toList();

  @override
  String toString() {
    return 'Chart{chartList: $chartList}';
  }
}

void main() {
  Map<String, dynamic> decoded = jsonDecode(json);
  Chart chartData = Chart.fromJson(decoded);

  for (var i = 0; i < chartData.chartList.length; i++) {
    print(chartData.chartList[i].collectionName);
    print(chartData.chartList[i].collectionPrice);
  }
}
