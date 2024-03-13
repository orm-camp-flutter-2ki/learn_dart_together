import 'package:learn_dart_together/24_03_13/intangible_asset.dart';

class Patent extends InTangibleAsset{
  Patent(super.name, super.number, super.description);

  @override
  void descriptionInfo() {
    print('특허 번호 : $number의 특허 $name의 내용 : $description');
  }
}