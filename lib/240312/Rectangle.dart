import 'Point.dart';

class Rectagle {
  double width;
  double height;

  // Point topLeft;

  Rectagle({
    required this.width,
    required this.height,
    // required this.topLeft,
  });

  double area() {
    double value = width * height;
    print('면적:$value');
    return value;
  }

  double round() {
    double value = (width + height) * 2;
    print('넓이 : $value');
    return value;
  }
}
