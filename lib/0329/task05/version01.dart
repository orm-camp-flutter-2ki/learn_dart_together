import 'package:learn_dart_together/0329/task03/image.dart';

void main() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  var downloadImage1 = await downloadImage('https://images.unsplash.com/photo-1573376670774-4427757f7963?q=80&w=4471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  var downloadImage2 = await downloadImage('https://images.unsplash.com/photo-1579019163248-e7761241d85a?q=80&w=4470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  var downloadImage3 = await downloadImage('https://images.unsplash.com/photo-1507027682794-35e6c12ad5b4?q=80&w=3744&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  stopwatch.stop();
  print('소요 시간: ${stopwatch.elapsed}');
}