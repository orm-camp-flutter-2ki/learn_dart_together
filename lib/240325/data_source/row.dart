// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:collection/collection.dart';

class Row {
  final String rowNum;
  final String selectedCount;
  final String subwayId;
  final String updnLine;
  final String trainLineNm;
  final String statnFid;
  final String statnTid;
  final String statnId;
  final String statnNm;
  final String trnsitCo;
  final String ordkey;
  final String subwayList;
  final String statnList;
  final String btrainSttus;
  final String barvlDt;
  final String btrainNo;
  final String bstatnId;
  final String bstatnNm;
  final String recptnDt;
  final String arvlMsg2;
  final String arvlMsg3;
  final String arvlCd;
  Row({
    required this.rowNum,
    required this.selectedCount,
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

  Row copyWith({
    String? rowNum,
    String? selectedCount,
    String? subwayId,
    String? updnLine,
    String? trainLineNm,
    String? statnFid,
    String? statnTid,
    String? statnId,
    String? statnNm,
    String? trnsitCo,
    String? ordkey,
    String? subwayList,
    String? statnList,
    String? btrainSttus,
    String? barvlDt,
    String? btrainNo,
    String? bstatnId,
    String? bstatnNm,
    String? recptnDt,
    String? arvlMsg2,
    String? arvlMsg3,
    String? arvlCd,
  }) {
    return Row(
      rowNum: rowNum ?? this.rowNum,
      selectedCount: selectedCount ?? this.selectedCount,
      subwayId: subwayId ?? this.subwayId,
      updnLine: updnLine ?? this.updnLine,
      trainLineNm: trainLineNm ?? this.trainLineNm,
      statnFid: statnFid ?? this.statnFid,
      statnTid: statnTid ?? this.statnTid,
      statnId: statnId ?? this.statnId,
      statnNm: statnNm ?? this.statnNm,
      trnsitCo: trnsitCo ?? this.trnsitCo,
      ordkey: ordkey ?? this.ordkey,
      subwayList: subwayList ?? this.subwayList,
      statnList: statnList ?? this.statnList,
      btrainSttus: btrainSttus ?? this.btrainSttus,
      barvlDt: barvlDt ?? this.barvlDt,
      btrainNo: btrainNo ?? this.btrainNo,
      bstatnId: bstatnId ?? this.bstatnId,
      bstatnNm: bstatnNm ?? this.bstatnNm,
      recptnDt: recptnDt ?? this.recptnDt,
      arvlMsg2: arvlMsg2 ?? this.arvlMsg2,
      arvlMsg3: arvlMsg3 ?? this.arvlMsg3,
      arvlCd: arvlCd ?? this.arvlCd,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'rowNum': rowNum,
      'selectedCount': selectedCount,
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
  }

  Row.fromJson(Map<String, dynamic> map)
      : rowNum = map['rowNum'] as String,
        selectedCount = map['selectedCount'] as String,
        subwayId = map['subwayId'] as String,
        updnLine = map['updnLine'] as String,
        trainLineNm = map['trainLineNm'] as String,
        statnFid = map['statnFid'] as String,
        statnTid = map['statnTid'] as String,
        statnId = map['statnId'] as String,
        statnNm = map['statnNm'] as String,
        trnsitCo = map['trnsitCo'] as String,
        ordkey = map['ordkey'] as String,
        subwayList = map['subwayList'] as String,
        statnList = map['statnList'] as String,
        btrainSttus = map['btrainSttus'] as String,
        barvlDt = map['barvlDt'] as String,
        btrainNo = map['btrainNo'] as String,
        bstatnId = map['bstatnId'] as String,
        bstatnNm = map['bstatnNm'] as String,
        recptnDt = map['recptnDt'] as String,
        arvlMsg2 = map['arvlMsg2'] as String,
        arvlMsg3 = map['arvlMsg3'] as String,
        arvlCd = map['arvlCd'] as String;

  @override
  String toString() {
    return 'Row(rowNum: $rowNum, selectedCount: $selectedCount, subwayId: $subwayId, updnLine: $updnLine, trainLineNm: $trainLineNm, statnFid: $statnFid, statnTid: $statnTid, statnId: $statnId, statnNm: $statnNm, trnsitCo: $trnsitCo, ordkey: $ordkey, subwayList: $subwayList, statnList: $statnList, btrainSttus: $btrainSttus, barvlDt: $barvlDt, btrainNo: $btrainNo, bstatnId: $bstatnId, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: $arvlMsg2, arvlMsg3: $arvlMsg3, arvlCd: $arvlCd)';
  }

  @override
  bool operator ==(covariant Row other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.rowNum == rowNum &&
        other.selectedCount == selectedCount &&
        other.subwayId == subwayId &&
        other.updnLine == updnLine &&
        other.trainLineNm == trainLineNm &&
        other.statnFid == statnFid &&
        other.statnTid == statnTid &&
        other.statnId == statnId &&
        other.statnNm == statnNm &&
        other.trnsitCo == trnsitCo &&
        other.ordkey == ordkey &&
        listEquals(other.subwayList, subwayList) &&
        listEquals(other.statnList, statnList) &&
        other.btrainSttus == btrainSttus &&
        other.barvlDt == barvlDt &&
        other.btrainNo == btrainNo &&
        other.bstatnId == bstatnId &&
        other.bstatnNm == bstatnNm &&
        other.recptnDt == recptnDt &&
        other.arvlMsg2 == arvlMsg2 &&
        other.arvlMsg3 == arvlMsg3 &&
        other.arvlCd == arvlCd;
  }

  @override
  int get hashCode {
    return rowNum.hashCode ^
        selectedCount.hashCode ^
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
}
