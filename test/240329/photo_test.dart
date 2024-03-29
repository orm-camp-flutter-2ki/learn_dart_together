import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/240321/file_manager.dart';
import 'package:learn_dart_together/240329/data_source/photo_api.dart';
import 'package:test/test.dart';

void main() {
  test('', () async {
    final Uint8List uint8list = await PhotoApi().downloadImage('https://alimipro.com/favicon.ico');
    final file = PhotoApi().saveFile(uint8list, 'icon.ico');

    File file1 = File('lib/240329/image/icon.ico');
    final saved = file1.readAsBytesSync();
    print(saved.runtimeType);
    print(uint8list.runtimeType);
    expect(saved, uint8list);
  });
  test('', () async {
    final Uint8List uint8list = await PhotoApi().downloadImage(
        'https://www.google.com/search?q=%EA%B3%A0%EC%96%91%EC%9D%B4&sca_esv=6dba56f94bcc106c&sca_upv=1&sxsrf=ACQVn0_FckNX5LiSaJNPzhSD34XBDXDPeg:1711712326615&tbm=isch&source=iu&ictx=1&vet=1&fir=dL5FLpR6VH3wlM%252CwSQ6Ue94ijOfPM%252C%252Fm%252F01yrx%253BsDiEjeRwQrSTcM%252CFIVAl-Pt0-9lEM%252C_%253B1Y6bwWMHGsc2jM%252CFIVAl-Pt0-9lEM%252C_%253BiwSSoMC6gttaxM%252CSLs1ywtInfLqyM%252C_%253B2oT0RojRphoBCM%252ClrHZrbfz37smVM%252C_%253BB7_0OUJBGuaqIM%252CsAq9zDI5yKL2XM%252C_&usg=AI4_-kQvZBUmiR_n4RAkMAzfLZ-Guy4nsw&sa=X&ved=2ahUKEwjfyr2psZmFAxUulq8BHaCsBDIQ_B16BAg_EAE#imgrc=dL5FLpR6VH3wlM');
    final file = PhotoApi().saveFile(uint8list, 'icon.ico');

    File file1 = File('lib/240329/image/icon.ico');
    final saved = file1.readAsBytesSync();
    expect(saved != uint8list, isTrue);
  });
}
