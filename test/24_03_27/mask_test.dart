import 'package:learn_dart_together/24_03_27/repository/mask_repository.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('mask test', () async {
    final MaskRepository repository = MaskRepositoryImpl();
    final masks = await repository.getMasks();

    print(masks);
  });
}
