class Point {
  int _x;
  int _y;

  Point(this._x, this._y);
}

class Rectangle {
  int _width;
  int _height;
  Point _topLeft;

  Rectangle(this._width, this._height, this._topLeft);

  int area() => _width * _height;

  int perimeter() => (_width + _height) * 2;
}

class Circle {
  int _diameter;
  Point _origin;

  Circle(this._diameter, this._origin);

  double area() => _diameter * _diameter * 3.14;

  double perimeter() => _diameter * 3.14 * 2;
}
