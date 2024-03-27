import 'package:learn_dart_together/240327/practice5_mask_repository.dart';

void main() async {
  final maskRepository = MaskRepository();

  final mask = await maskRepository.getMaskInfo();
  print(mask);
}
