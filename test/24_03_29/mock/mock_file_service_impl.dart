import 'dart:io';
import 'dart:typed_data';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:mockito/mockito.dart';

class MockFileServiceImpl extends Mock implements FileService {
  @override
  Future<File> asyncWriteToFileBytes(
          Uint8List fileBytes, String filename, String path) async =>
      super.noSuchMethod(Invocation.getter(#getImage),
          returnValue: getMockFile(), returnValueForMissingStub: getMockFile());
}

File getMockFile() => File('test/24_03_29/resource/icon.ico');
