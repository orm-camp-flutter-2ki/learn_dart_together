import 'dart:math';

void main() {
  int tries = 10000000 ;
  int hits = 0;
  int r = 5;

  for (int i = 0; i < tries; i++) {
    double x = Random().nextDouble() * 2 - 1;
    double y = Random().nextDouble() * 2 - 1;
    if (sqrt((0 - x) * (0 - y) + (0 - y) * (0 - y)) < r) {
      hits++;
    }
  }  
  print('hits:$hits');
  double piEstimate = 4*hits/tries;;
  print(piEstimate);
}
