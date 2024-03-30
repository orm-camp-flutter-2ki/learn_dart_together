import 'dart:isolate';
import 'package:learn_dart_together/0329/task03/image.dart';

void main() async {
  String url1 = 'https://images.unsplash.com/photo-1573376670774-4427757f7963?q=80&w=4471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String url2 = 'https://images.unsplash.com/photo-1579019163248-e7761241d85a?q=80&w=4470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String url3 = 'https://images.unsplash.com/photo-1507027682794-35e6c12ad5b4?q=80&w=3744&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  ReceivePort receivePort = ReceivePort();
  var isolateFutures = [Isolate.spawn(downloadImageIsolateSendPort, [receivePort.sendPort, url1]), Isolate.spawn(downloadImageIsolateSendPort, [receivePort.sendPort, url2]), Isolate.spawn(downloadImageIsolateSendPort, [receivePort.sendPort, url3])];

  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  List<Isolate> isolates = await Future.wait(isolateFutures);
  stopwatch.stop();
  print('소요 시간: ${stopwatch.elapsed}');

  // receivePort.listen((message) {
  //   print(message);
  // });
}

void downloadImageIsolateSendPort (List<dynamic> params) async {
  var image = await downloadImage(params[1]);
  params[0].send(image);
}