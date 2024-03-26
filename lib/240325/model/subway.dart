class Subway {
  final num rowNum;
  final num selectedCount;
  final num totalCount;
  final num subwayId;
  final String updnLine;
  final String trainLineNm;
  final num statnFid;
  final num statnTid;
  final num statnId;
  final String statnNm;
  final num trnsitCo;
  final String ordkey;
  final List<num> subwayList;
  final List<num> statnList;
  final String btrainSttus;
  final num barvlDt;
  final String btrainNo;
  final num bstatnId;
  final String bstatnNm;
  final String recptnDt;
  final String arvlMsg2;
  final String arvlMsg3;
  final num arvlCd;

  Subway({
    required this.rowNum,
    required this.selectedCount,
    required this.totalCount,
    required this.subwayId,
    required this.updnLine,
    required this.trainLineNm,
    required this.statnFid,
    required this.statnTid,
    required this.statnId,
    required this.statnNm,
    required this.trnsitCo,
    required this.ordkey,
    required this.subwayList,
    required this.statnList,
    required this.btrainSttus,
    required this.barvlDt,
    required this.btrainNo,
    required this.bstatnId,
    required this.bstatnNm,
    required this.recptnDt,
    required this.arvlMsg2,
    required this.arvlMsg3,
    required this.arvlCd,
  });

  Subway.fromJson(Map<String, dynamic> json)
      : rowNum = json['rowNum'],
        selectedCount = json['selectedCount'],
        totalCount = json['totalCount'],
        subwayId = json['subwayId'],
        updnLine = json['updnLine'],
        trainLineNm = json['trainLineNm'],
        statnFid = json['statnFid'],
        statnTid = json['statnTid'],
        statnId = json['statnId'],
        statnNm = json['statnNm'],
        trnsitCo = json['trnsitCo'],
        ordkey = json['ordkey'],
        subwayList =
            json['subwayList'].split(',').map((e) => int.parse(e)).toList(),
        statnList =
            json['statnList'].split(',').map((e) => int.parse(e)).toList(),
        btrainSttus = json['btrainSttus'],
        barvlDt = json['barvlDt'],
        btrainNo = json['btrainNo'],
        bstatnId = json['bstatnId'],
        bstatnNm = json['bstatnNm'],
        recptnDt = json['recptnDt'],
        arvlMsg2 = json['arvlMsg2'],
        arvlMsg3 = json['arvlMsg3'],
        arvlCd = json['arvlCd'];

  Map<String, dynamic> toJson() => {
        'rowNum': rowNum,
        'selectedCount': selectedCount,
        'totalCount': totalCount,
        'subwayId': subwayId,
        'updnLine': updnLine,
        'trainLineNm': trainLineNm,
        'statnFid': statnFid,
        'statnTid': statnTid,
        'statnId': statnId,
        'statnNm': statnNm,
        'trnsitCo': trnsitCo,
        'ordkey': ordkey,
        'subwayList': subwayList,
        'statnList': statnList,
        'btrainSttus': btrainSttus,
        'barvlDt': barvlDt,
        'btrainNo': btrainNo,
        'bstatnId': bstatnId,
        'bstatnNm': bstatnNm,
        'recptnDt': recptnDt,
        'arvlMsg2': arvlMsg2,
        'arvlMsg3': arvlMsg3,
        'arvlCd': arvlCd,
      };

  @override
  String toString() {
    return 'Subway{rowNum: $rowNum, selectedCount: $selectedCount, totalCount: '
        '$totalCount, subwayId: $subwayId, updnLine: $updnLine, trainLineNm: '
        '$trainLineNm, statnFid: $statnFid, statnTid: $statnTid, statnId: '
        '$statnId, statnNm: $statnNm, trnsitCo: $trnsitCo, ordkey: $ordkey, '
        'subwayList: $subwayList, statnList: $statnList, btrainSttus: '
        '$btrainSttus, barvlDt: $barvlDt, btrainNo: $btrainNo, bstatnId: '
        '$bstatnId, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: '
        '$arvlMsg2, arvlMsg3: $arvlMsg3, arvlCd: $arvlCd}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subway &&
          runtimeType == other.runtimeType &&
          rowNum == other.rowNum &&
          selectedCount == other.selectedCount &&
          totalCount == other.totalCount &&
          subwayId == other.subwayId &&
          updnLine == other.updnLine &&
          trainLineNm == other.trainLineNm &&
          statnFid == other.statnFid &&
          statnTid == other.statnTid &&
          statnId == other.statnId &&
          statnNm == other.statnNm &&
          trnsitCo == other.trnsitCo &&
          ordkey == other.ordkey &&
          subwayList == other.subwayList &&
          statnList == other.statnList &&
          btrainSttus == other.btrainSttus &&
          barvlDt == other.barvlDt &&
          btrainNo == other.btrainNo &&
          bstatnId == other.bstatnId &&
          bstatnNm == other.bstatnNm &&
          recptnDt == other.recptnDt &&
          arvlMsg2 == other.arvlMsg2 &&
          arvlMsg3 == other.arvlMsg3 &&
          arvlCd == other.arvlCd;

  @override
  int get hashCode =>
      rowNum.hashCode ^
      selectedCount.hashCode ^
      totalCount.hashCode ^
      subwayId.hashCode ^
      updnLine.hashCode ^
      trainLineNm.hashCode ^
      statnFid.hashCode ^
      statnTid.hashCode ^
      statnId.hashCode ^
      statnNm.hashCode ^
      trnsitCo.hashCode ^
      ordkey.hashCode ^
      subwayList.hashCode ^
      statnList.hashCode ^
      btrainSttus.hashCode ^
      barvlDt.hashCode ^
      btrainNo.hashCode ^
      bstatnId.hashCode ^
      bstatnNm.hashCode ^
      recptnDt.hashCode ^
      arvlMsg2.hashCode ^
      arvlMsg3.hashCode ^
      arvlCd.hashCode;
}
