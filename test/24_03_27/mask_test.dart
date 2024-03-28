import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/store.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'mask_map.dart';

void main() {
  test('mask test', () async {
    Mask mask = await MaskRepositoryImpl(MaskApi()).getMask();

    final expectedData = expected.map((e) => Store.fromJson(e)).toList();

    expect(mask.stores.equals(expectedData), true);
  });
}
