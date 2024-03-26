import 'dart:io';

import 'package:csv/csv.dart';
import 'package:learn_dart_together/240325/data_source/asset.dart';

class AssetApi {
  List<Asset> getAsset() {
    final String sourcePath = 'lib/240325/listing_status.csv';
    final sourceFile = File(sourcePath);
    String sourceText = sourceFile.readAsStringSync();
    String str = sourceText;
    List<dynamic> dataList = const CsvToListConverter().convert(str);

    List<Asset> dataListMap = [];

    for (int i = 1; i < dataList.length; i++) {
      Map<String, dynamic> dataMap = {};
      for (int j = 0; j < dataList[i].length; j++) {
        dataMap[dataList[0][j]] = dataList[i][j];
      }
      dataListMap.add(Asset.fromJson(dataMap));
    }
    return dataListMap;
  }
}
