import 'package:json_annotation/json_annotation.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String rowNum;
  final String selectedCount;
  final String totalCount;
  final String subwayId;
  final String undnLine;
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

  Row(
      this.rowNum,
      this.selectedCount,
      this.totalCount,
      this.subwayId,
      this.undnLine,
      this.trainLineNm,
      this.statnFid,
      this.statnTid,
      this.statnId,
      this.statnNm,
      this.trnsitCo,
      this.ordkey,
      this.subwayList,
      this.statnList,
      this.btrainSttus,
      this.barvlDt,
      this.btrainNo,
      this.bstatnId,
      this.bstatnNm,
      this.recptnDt,
      this.arvlMsg2,
      this.arvlMsg3,
      this.arvlCd);

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
  Map<String, dynamic> toJson() => _$RowToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Row &&
          runtimeType == other.runtimeType &&
          rowNum == other.rowNum &&
          selectedCount == other.selectedCount &&
          totalCount == other.totalCount &&
          subwayId == other.subwayId &&
          undnLine == other.undnLine &&
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
      undnLine.hashCode ^
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

  @override
  String toString() {
    return 'Row{rowNum: $rowNum, selectedCount: $selectedCount, totalCount: $totalCount, subwayId: $subwayId, undnLine: $undnLine, trainLineNm: $trainLineNm, statnFid: $statnFid, statnTid: $statnTid, statnId: $statnId, statnNm: $statnNm, trnsitCo: $trnsitCo, ordkey: $ordkey, subwayList: $subwayList, statnList: $statnList, btrainSttus: $btrainSttus, barvlDt: $barvlDt, btrainNo: $btrainNo, bstatnId: $bstatnId, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: $arvlMsg2, arvlMsg3: $arvlMsg3, arvlCd: $arvlCd}';
  }
}