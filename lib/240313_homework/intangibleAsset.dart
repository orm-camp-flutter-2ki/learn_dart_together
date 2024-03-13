import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  IntangibleAsset({required super.name});

  @override
  void asset() {
    print('IntangibleAsset 입니다.');
  }
}
