import 'dart:convert';
import 'package:xml/xml.dart' as xml;

class SubwayModel {
  final String rowNum;
  final String selectedCount;
  final String trainLineNm;
  final String statnNm;

  SubwayModel({
    required this.rowNum,
    required this.selectedCount,
    required this.trainLineNm,
    required this.statnNm,
  });

  @override
  String toString() {
    return 'rowNum: $rowNum trainLineNm: $trainLineNm';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  SubwayModel copyWith({String? rowNum, String? selectedCount, String? trainLineNm, String? statnNm}) {
    return SubwayModel(
        rowNum: rowNum ?? this.rowNum,
        selectedCount: selectedCount ?? this.selectedCount,
        trainLineNm: trainLineNm ?? this.trainLineNm,
        statnNm: statnNm ?? this.statnNm);
  }

  static List<SubwayModel> fromXml(String xmlString) {
    final document = xml.XmlDocument.parse(xmlString);
    final rowElements = document.findAllElements('row');

    List<SubwayModel> subwayModels = [];

    for (final rowElement in rowElements) {
      final subwayModel = SubwayModel(
        rowNum: rowElement.findElements('rowNum').single.text,
        selectedCount: rowElement.findElements('selectedCount').single.text,
        trainLineNm: rowElement.findElements('trainLineNm').single.text,
        statnNm: rowElement.findElements('statnNm').single.text,
      );
      subwayModels.add(subwayModel);
    }

    return subwayModels;
  }

  Map<String, dynamic> toXml() {
    return {
      'rowNum': rowNum,
      'selectedCount': selectedCount,
      'trainLineNm': trainLineNm,
      'statnNm': statnNm
    };
}
}
