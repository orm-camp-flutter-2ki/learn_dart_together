import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/240321/file_manager.dart';
import 'package:learn_dart_together/240329/data_source/photo_api.dart';
import 'package:test/test.dart';

void main() {
  test('다운 대상 파일과 다운받은 파일 내용 비교', () async {
    final Uint8List uint8list = await PhotoApi().downloadImage('https://alimipro.com/favicon.ico');
    final file = PhotoApi().saveFile(uint8list, 'icon.ico');

    File file1 = File('lib/240329/image/icon.ico');
    final saved = file1.readAsBytesSync();
    print(saved.runtimeType);
    print(uint8list.runtimeType);
    expect(saved, uint8list); // 통과 안됨..
  });
  test('별개의 파일과 다운받은 파일 내용 비교', () async {
    final Uint8List uint8list = await PhotoApi().downloadImage(
        'https://www.google.com/search?q=%EA%B3%A0%EC%96%91%EC%9D%B4&sca_esv=6dba56f94bcc106c&sca_upv=1&sxsrf=ACQVn0_FckNX5LiSaJNPzhSD34XBDXDPeg:1711712326615&tbm=isch&source=iu&ictx=1&vet=1&fir=dL5FLpR6VH3wlM%252CwSQ6Ue94ijOfPM%252C%252Fm%252F01yrx%253BsDiEjeRwQrSTcM%252CFIVAl-Pt0-9lEM%252C_%253B1Y6bwWMHGsc2jM%252CFIVAl-Pt0-9lEM%252C_%253BiwSSoMC6gttaxM%252CSLs1ywtInfLqyM%252C_%253B2oT0RojRphoBCM%252ClrHZrbfz37smVM%252C_%253BB7_0OUJBGuaqIM%252CsAq9zDI5yKL2XM%252C_&usg=AI4_-kQvZBUmiR_n4RAkMAzfLZ-Guy4nsw&sa=X&ved=2ahUKEwjfyr2psZmFAxUulq8BHaCsBDIQ_B16BAg_EAE#imgrc=dL5FLpR6VH3wlM');
    final file = PhotoApi().saveFile(uint8list, 'icon.ico');

    File file1 = File('lib/240329/image/icon.ico');
    final saved = file1.readAsBytesSync();
    expect(saved != uint8list, isTrue); // 통과 안됨..
  });
  Stopwatch stopwatch = Stopwatch();
  test('비동기/동기 파일 다운로드 소요시간 비교', () async {
    stopwatch.start();
    final synch = PhotoApi().synchronousPicture();
    stopwatch.stop();
    print('synchronous 소요시간 :  ${stopwatch.elapsed}');

    stopwatch.start();
    final async = PhotoApi().asynchronousPicture();
    stopwatch.stop();
    print('asynchronous 소요시간 :  ${stopwatch.elapsed}');
  });
}
