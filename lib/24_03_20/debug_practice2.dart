import 'package:intl/intl.dart';

enum YukymTimeModel {
  ty1('갑자1국'),
  ty2('갑자2국'),
  ty3('갑자3국'),
  ty4('갑자4국'),
  ty5('갑자5국'),
  ty6('갑자6국'),
  ty7('갑자7국'),
  ty8('갑자8국'),
  ty9('갑자9국'),
  ty10('갑자10국'),
  ty11('갑자11국'),
  ty12('갑자12국');

  const YukymTimeModel(this.type);

  final String type;
}

class YukymController {
  String nowDate = DateFormat('yyyy-mm-dd').format(DateTime.now());

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  static String getTyA() {
    final month = DateTime.now().month;

    if (month == 1 || month == 2) {
      return '경오1국';
    } else if (month == 3 || month == 4) {
      return '경오2국';
    } else if (month == 5 || month == 6) {
      return '경오3국';
    } else if (month == 7 || month == 8) {
      return '경오4국';
    } else if (month == 9 || month == 10) {
      return '경오5국';
    } else if (month == 11 || month == 12) {
      return '경오6국';
    }

    return YukymTimeModel.ty1.type;
  }

  static String getTyB() {
    final nowTime = DateTime.now();

    if (nowTime.hour >= 0 && nowTime.hour < 2) {
      return YukymTimeModel.ty1.type;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return YukymTimeModel.ty4.type;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return YukymTimeModel.ty5.type;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return YukymTimeModel.ty6.type;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return YukymTimeModel.ty7.type;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return YukymTimeModel.ty8.type;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return YukymTimeModel.ty9.type;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return YukymTimeModel.ty10.type;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return YukymTimeModel.ty11.type;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return YukymTimeModel.ty12.type;
    }

    return YukymTimeModel.ty12.type;
  }
}
