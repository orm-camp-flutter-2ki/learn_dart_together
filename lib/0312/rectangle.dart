class Rectangle {
  double width; // 폭
  double height; // 높이
  double topLeftPoint; // 왼쪽 상단 점

  Rectangle({
    required this.width,
    required this.height,
    required this.topLeftPoint,
  });

  // 둘레 perimeter
  double perimeter() {
    return (2.0 * width) + (2.0 * height);
  }

  // 면적 area
  double area() {
    return width * height;
  }
}

void main() {
  Rectangle rec = Rectangle(width: 30.0, height: 30.0, topLeftPoint: 30.0);
  print('폭: ${rec.width}, 높이: ${rec.height}, 왼쪽 상단 점: ${rec.topLeftPoint}');
  print('넓이: ${rec.perimeter()}');
  print('면적: ${rec.area()}');
}
