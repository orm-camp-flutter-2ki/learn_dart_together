import 'package:learn_dart_together/24_03_25/data_source/subway_api.dart';
import 'package:learn_dart_together/24_03_25/subways/subway_info.dart';

void main() async {
  List<SubwayInfo> subwayInfo = await SubwayApi().getSubwayInfo();

  subwayInfo.forEach(print);
}
