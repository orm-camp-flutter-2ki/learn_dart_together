class Subway {
  int rowNum;
  int subwayId;
  String trainLineNm;
  String statnNm;

  Subway(this.rowNum, this.subwayId, this.trainLineNm, this.statnNm);


  Subway.fromJson(Map<String, dynamic> json)
      : rowNum = json['rowNum'],
        subwayId = json['subwayId'],
        trainLineNm = json['trainLineNm'],
        statnNm = json['statnNm'];

  Map<String, dynamic> toJson() => {
    'rowNum' : rowNum,
    'subwayId' : subwayId,
    'trainLineNm' : trainLineNm,
    'statnNm' : statnNm,
  };

  @override
  String toString() {
    return 'Subway{rowNum: $rowNum, subwayId: $subwayId, trainLineNm: $trainLineNm, statnNm: $statnNm}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Subway &&
              runtimeType == other.runtimeType &&
              rowNum == other.rowNum &&
              subwayId == other.subwayId &&
              trainLineNm == other.trainLineNm &&
              statnNm == other.statnNm;

  @override
  int get hashCode =>
      rowNum.hashCode ^
      subwayId.hashCode ^
      trainLineNm.hashCode ^
      statnNm.hashCode;

  Subway copyWith({
    int? rowNum,
    int? subwayId,
    String? trainLineNm,
    String? statnNm,
  }) {
    return Subway(
      rowNum ?? this.rowNum,
      subwayId ?? this.subwayId,
      trainLineNm ?? this.trainLineNm,
      statnNm ?? this.statnNm,
    );
  }
}
