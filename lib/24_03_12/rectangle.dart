import 'package:learn_dart_together/24_03_12/point.dart';

class Rectangle {

   final Point topLeft;
   final Point bottomRight;

  Rectangle(this.topLeft, this.bottomRight);


  int get width {
    return bottomRight.x - (topLeft.x);
  }

  int get height {
    return topLeft.y - (bottomRight.y);
  }

  int getExtent() {
    int result = width * height;
    return result;
  }

  int getRound() {
    int result = 2 * (width + height);
    return result;
  }
}



