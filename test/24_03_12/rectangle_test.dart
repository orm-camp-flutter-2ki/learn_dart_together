

import 'package:learn_dart_together/24_03_12/point.dart';
import 'package:learn_dart_together/24_03_12/rectangle.dart';
import 'package:test/test.dart';

void main(){

  test('Rectangle Test', () {

 Point point1 = Point(1,7);
 Point point2 = Point(6,4);
 Rectangle rectangle = Rectangle(point1, point2);
 print(rectangle.getExtent());
 print(rectangle.getRound());


  });

}
