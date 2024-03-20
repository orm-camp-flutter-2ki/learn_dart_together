import 'package:intl/intl.dart';

import 'YukymTimeModel.dart';

class YukymController {
  String? _dateTime;

  set setDateTime(DateTime value) =>
      _dateTime = DateFormat('yyyy-MM-dd-HH').format(value);


  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(_dateTime!);

    if (timeDataOne.isNotEmpty) {
      String nowTime = timeDataOne.first.ty1;

      final month = _dateTime!.substring(5, 7);
      if (month == '01' || month == '02') {
        return '경오1국';
      } else if (month == '03' || month == '04') {
        return '경오2국';
      } else if (month == '05' || month == '06') {
        return '경오3국';
      } else if (month == '07' || month == '08') {
        return '경오4국';
      } else if (month == '09' || month == '10') {
        return '경오5국';
      } else if (month == '11' || month == '12') {
        return '경오6국';
      }
      return nowTime;
    } else {
      // Handle the case when the list is empty
      return '경오7국'; // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(_dateTime!);
    String result = timeDataOne.first.ty12;

    // final nowTime = DateTime.now();
    // 테스트를 위한 nowTime
    final nowTime = DateTime(2024, 1, 1, int.parse(_dateTime!.split('-').last));

    if (nowTime.hour >= 0 && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    } else if (nowTime.hour >= 2 && nowTime.hour < 4) {
      return timeDataOne.first.ty2;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return timeDataOne.first.ty3;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return timeDataOne.first.ty4;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return timeDataOne.first.ty5;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return timeDataOne.first.ty6;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return timeDataOne.first.ty7;
    } else if (nowTime.hour >= 14 && nowTime.hour < 16) {
      return timeDataOne.first.ty8;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return timeDataOne.first.ty9;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return timeDataOne.first.ty10;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return timeDataOne.first.ty11;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return timeDataOne.first.ty12;
    }

    return result;
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}