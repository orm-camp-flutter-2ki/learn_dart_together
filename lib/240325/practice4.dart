import 'package:learn_dart_together/data_source/subway_api.dart';

class Subway {
  final String trainLine;
  final String station;
  final String arrivalTime;

  Subway(
    this.trainLine,
    this.station,
    this.arrivalTime,
  );

  Subway copyWith({
    String? trainLine,
    String? station,
    String? arrivalTime,
  }) {
    return Subway(
      trainLine ?? this.trainLine,
      station ?? this.station,
      arrivalTime ?? this.arrivalTime,
    );
  }

  Subway.fromXml(Map<String, dynamic> json)
      : trainLine = json['trainLine'],
        station = json['station'],
        arrivalTime = json['arrivalTime'];

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toXml() => {
        'trainLine': trainLine,
        'station': station,
        'arrivalTime': arrivalTime,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subway &&
          runtimeType == other.runtimeType &&
          trainLine == other.trainLine &&
          station == other.station &&
          arrivalTime == other.arrivalTime;

  @override
  int get hashCode =>
      trainLine.hashCode ^ station.hashCode ^ arrivalTime.hashCode;

  @override
  String toString() {
    return 'Subway{trainLine: $trainLine, station: $station, arrivalTime: $arrivalTime}';
  }
}

void main() async {
  List<Subway> subwayData = await SubwayApi().getRealTimeXml();
  print(subwayData);
}
