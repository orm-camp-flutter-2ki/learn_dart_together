import 'dart:io';

import '../model/csv_model.dart';

Future<List<CSVModel>> csvApi() async {
  final csv = File('listing_status.csv');
  final lines = await csv.readAsLines();

  final List<CSVModel> datas = [];

  for (final line in lines) {
    datas.addAll(CSVModel.fromCSV(line));
  }

  return datas;
}

void main() async {
  final List<CSVModel> csv = await csvApi();
  for(final line in csv) {
    print(line);
  }
}