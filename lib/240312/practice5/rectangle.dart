import 'package:learn_dart_together/240312/practice5/point.dart';

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle({
    required this.topLeft,
    required this.bottomRight
  });

  int get width {
    if (topLeft.x >= bottomRight.x)  {
      return topLeft.x - bottomRight.x;
    } else {
      return bottomRight.x - topLeft.x;
    }
  }

  int get height {
    if (topLeft.y >= bottomRight.y)  {
      return topLeft.y - bottomRight.y;
    } else {
      return bottomRight.y - topLeft.y;
    }
  }

  int getArea() {
    return width * height;
  }

  int getRound() {
    return (width + height) * 2;
  }
}