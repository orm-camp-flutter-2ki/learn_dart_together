import 'package:learn_dart_together/240325/model/xml/result.dart';
import 'package:learn_dart_together/240325/model/xml/row.dart';

class RealtimeStationArrival {
  final Result result;
  final List<Row> rows;

  RealtimeStationArrival(this.result, this.rows);

  RealtimeStationArrival.fromJson(Map<String, dynamic> json)
      : result = Result.fromJson(json['RESULT']),
        rows = (json['row'] as List).map((e) => Row.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
    'RESULT': result,
    'row': rows
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RealtimeStationArrival &&
          runtimeType == other.runtimeType &&
          result == other.result &&
          rows == other.rows;

  @override
  int get hashCode => result.hashCode ^ rows.hashCode;

  @override
  String toString() {
    return 'RealtimeStationArrival{result: $result, rows: $rows}';
  }
}