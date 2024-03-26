import 'package:xml/xml.dart';

class SubwayInfo {
  final String subwayId;
  final String updnLine;
  final String trainLineNm;
  final String btrainSttus;
  final String bstatnNm;
  final DateTime recptnDt;
  final String arvlMsg2;

  SubwayInfo(
    this.subwayId,
    this.updnLine,
    this.trainLineNm,
    this.btrainSttus,
    this.bstatnNm,
    this.recptnDt,
    this.arvlMsg2,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubwayInfo &&
          runtimeType == other.runtimeType &&
          subwayId == other.subwayId &&
          updnLine == other.updnLine &&
          trainLineNm == other.trainLineNm &&
          btrainSttus == other.btrainSttus &&
          bstatnNm == other.bstatnNm &&
          recptnDt == other.recptnDt &&
          arvlMsg2 == other.arvlMsg2;

  @override
  int get hashCode =>
      subwayId.hashCode ^
      updnLine.hashCode ^
      trainLineNm.hashCode ^
      btrainSttus.hashCode ^
      bstatnNm.hashCode ^
      recptnDt.hashCode ^
      arvlMsg2.hashCode;

  @override
  String toString() {
    return 'Subway {subwayId: $subwayId, updnLine: $updnLine, trainLineNm: $trainLineNm, btrainSttus: $btrainSttus, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: $arvlMsg2}';
  }

  SubwayInfo copyWith({
    String? subwayId,
    String? updnLine,
    String? trainLineNm,
    String? btrainSttus,
    String? bstatnNm,
    DateTime? recptnDt,
    String? arvlMsg2,
  }) {
    return SubwayInfo(
      subwayId ?? this.subwayId,
      updnLine ?? this.updnLine,
      trainLineNm ?? this.trainLineNm,
      btrainSttus ?? this.btrainSttus,
      bstatnNm ?? this.bstatnNm,
      recptnDt ?? this.recptnDt,
      arvlMsg2 ?? this.arvlMsg2,
    );
  }

  SubwayInfo.fromXml(XmlElement row)
      : subwayId = row.findElements('subwayId').single.innerText,
        updnLine = row.findElements('updnLine').single.innerText,
        trainLineNm = row.findElements('trainLineNm').single.innerText,
        btrainSttus = row.findElements('btrainSttus').single.innerText,
        bstatnNm = row.findElements('bstatnNm').single.innerText,
        recptnDt =
            DateTime.parse(row.findElements('recptnDt').single.innerText),
        arvlMsg2 = row.findElements('arvlMsg2').single.innerText;

// toXml이 가능한가?

// Map<String, dynamic> toJson() => {
//       'subwayId': subwayId,
//       'updnLine': updnLine,
//       'trainLineNm': trainLineNm,
//       'btrainSttus': btrainSttus,
//       'bstatnNm': bstatnNm,
//       'recptnDt': recptnDt,
//       'arvlMsg2': arvlMsg2,
//     };
}
