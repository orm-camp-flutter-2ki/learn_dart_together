import 'dart:convert';

/// 다음과 같은 데이터를 서버에서 받아서 처리해야 한다. 문제점이 있다면 생각해 보고 해결 방안을 도출하시오

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
  print(jsonDecode(json));

  Map<String, dynamic> jsonData = jsonDecode(json);
  List<dynamic> jsonList = jsonData['collectionChartDataList'];

  List<CollectionChart> chartList = [];

  for (var data in jsonList) {
    CollectionChart csp = CollectionChart.fromJson(data);

    chartList.add(csp);
  }

  for (var element in chartList) {
    print(element.toString());
  }
}

class CollectionSalePrice {
  final num price; // dart에서는 숫자는 거의 무조건적으로 num을 안정적으로 쓴다
  final DateTime cvtDateTime;

  CollectionSalePrice(this.price, this.cvtDateTime);

  CollectionSalePrice.fromJson(Map<String, dynamic> json)
      : price = json['price'],
        cvtDateTime = DateTime.parse(json['cvtDatetime']);

  Map<String, dynamic> toJson() => {
        'price': price,
        'cvtDatetime': cvtDateTime,
      };

  @override
  String toString() {
    return 'Price: $price, Date: $cvtDateTime';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionSalePrice &&
          runtimeType == other.runtimeType &&
          price == other.price &&
          cvtDateTime == other.cvtDateTime;

  @override
  int get hashCode => price.hashCode ^ cvtDateTime.hashCode;

  CollectionSalePrice copyWith({
    num? price,
    DateTime? cvtDateTime,
  }) {
    return CollectionSalePrice(
      price ?? this.price,
      cvtDateTime ?? this.cvtDateTime,
    );
  }
}

class CollectionChart {
  final String collectionName;
  final List<CollectionSalePrice> collectionSalePrices;

  CollectionChart(this.collectionName, this.collectionSalePrices);

  CollectionChart copyWith({
    String? collectionName,
    List<CollectionSalePrice>? collectionSalePrices,
  }) {
    return CollectionChart(
      collectionName ?? this.collectionName,
      collectionSalePrices ?? this.collectionSalePrices,
    );
  }

  factory CollectionChart.fromJson(Map<String, dynamic> json) {
    String collectionName = json['collectionName'];
    List<CollectionSalePrice>? collectionSalePriceData =
        json['collectionSalePrice'] == null
            ? []
            : (json['collectionSalePrice'] as List)
                .map((e) => CollectionSalePrice.fromJson(e))
                .toList();

    return CollectionChart(collectionName, collectionSalePriceData);
  }

  Map<String, dynamic> toJson() => {
        'collectionName': collectionName,
        'collectionSalePrice': collectionSalePrices,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionChart &&
          runtimeType == other.runtimeType &&
          collectionName == other.collectionName &&
          collectionSalePrices == other.collectionSalePrices;

  @override
  int get hashCode => collectionName.hashCode ^ collectionSalePrices.hashCode;

  @override
  String toString() {
    return 'CollectionChart{collectionName: $collectionName, collectionSalePrices: $collectionSalePrices}';
  }
}

//!는 null이 아님을 보증하는 것.
