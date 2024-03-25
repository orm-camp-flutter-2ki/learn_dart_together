// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'result.dart';
import 'row.dart';

Map<String, dynamic> aa = {'code': 'INFO - 000', 'developerMessage': true, 'link': true, 'message': '정상 처리되었습니다.', 'status': 200, 'total': 4};

class RealTimeStationArrival {
  final Result? result;
  final List<Row>? row;
  RealTimeStationArrival({
    required this.result,
    required this.row,
  });

  RealTimeStationArrival copyWith({
    Result? result,
    List<Row>? row,
  }) {
    return RealTimeStationArrival(
      result: result ?? this.result,
      row: row ?? this.row,
    );
  }

  RealTimeStationArrival.fromJson(Map<String, dynamic> json)
      : result = Result.fromJson(json['RESULT'] as Map<String, dynamic>),
        //result = Result.fromJson(aa),
        row = List<Row>.from(
          (json['row']).map<Row>(
            (e) => Row.fromJson(e as Map<String, dynamic>),
          ),
        );
  //row = Row.fromJson(aa);

  @override
  String toString() => 'RealTimeStationArrival(result: $result, row: $row)';

  @override
  bool operator ==(covariant RealTimeStationArrival other) {
    if (identical(this, other)) return true;

    return other.result == result && other.row == row;
  }

  @override
  int get hashCode => result.hashCode ^ row.hashCode;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result?.toJson(),
      'row': row != null ? row!.map((e) => e.toJson()).toList() : [],
    };
  }
}
