class Subway {
  String subwayId;
  String updnLine;
  String trainLineNm;
  String btrainSttus;
  String bstatnNm;
  DateTime recptnDt;
  String arvlMsg2;

  Subway({
    required this.subwayId,
    required this.updnLine,
    required this.trainLineNm,
    required this.btrainSttus,
    required this.bstatnNm,
    required this.recptnDt,
    required this.arvlMsg2,
  });

  @override
  String toString() {
    return 'Subway{subwayId: $subwayId, updnLine: $updnLine, trainLineNm: $trainLineNm, btrainSttus: $btrainSttus, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: $arvlMsg2}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subway &&
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

  Subway copyWith({
    String? subwayId,
    String? updnLine,
    String? trainLineNm,
    String? btrainSttus,
    String? bstatnNm,
    DateTime? recptnDt,
    String? arvlMsg2,
  }) {
    return Subway(
      subwayId: subwayId ?? this.subwayId,
      updnLine: updnLine ?? this.updnLine,
      trainLineNm: trainLineNm ?? this.trainLineNm,
      btrainSttus: btrainSttus ?? this.btrainSttus,
      bstatnNm: bstatnNm ?? this.bstatnNm,
      recptnDt: recptnDt ?? this.recptnDt,
      arvlMsg2: arvlMsg2 ?? this.arvlMsg2,
    );
  }

  Map<String, dynamic> toJson() => {
        'subwayId': subwayId,
        'updnLine': updnLine,
        'trainLineNm': trainLineNm,
        'btrainSttus': btrainSttus,
        'bstatnNm': bstatnNm,
        'recptnDt': recptnDt,
        'arvlMsg2': arvlMsg2,
      };

  Subway.fromJson(Map<String, dynamic> json)
      : subwayId = json['subwayId'].toString(),
        updnLine = json['updnLine'].toString(),
        trainLineNm = json['trainLineNm'],
        btrainSttus = json['btrainSttus'],
        bstatnNm = json['bstatnNm'],
        recptnDt = DateTime.parse(json['recptnDt']),
        arvlMsg2 = json['arvlMsg2'];
}
