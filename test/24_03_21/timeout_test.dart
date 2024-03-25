import 'package:learn_dart_together/24_03_21/timeout.dart';

void main() async {
  var result = await timeoutFuture()
      .timeout(const Duration(seconds: 5), onTimeout: () => 'timeout');
  print(result);
}
