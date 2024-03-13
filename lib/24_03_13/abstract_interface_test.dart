interface class Inter {
  String nameInter = "";
  int tenInter() => 10;

// int numInter;
// int methodInter();
}

abstract class Abs {
  String nameAbs = "";
  int tenAbs() => 10;

  // int numAbs;
  int methodAbs();
}

abstract interface class AbsInter {
  String nameAbsInter = "";
  int tenAbsInter() => 10;

  // int numAbsInter; 
  int methodAbsInter();
}

class Test implements Inter {
  @override
  String nameInter = "";

  @override
  int methodAbs() {
    // TODO: implement methodAbs
    throw UnimplementedError();
  }

  @override
  int tenInter() {
    // TODO: implement tenInter
    throw UnimplementedError();
  }

}

class Test2 extends AbsInter {
  @override
  int methodAbsInter() {
    // TODO: implement methodAbsInter
    throw UnimplementedError();
  }

}

class Test3 implements AbsInter {
  @override
  String nameAbsInter = "";

  @override
  int methodAbsInter() {
    // TODO: implement methodAbsInter
    throw UnimplementedError();
  }

  @override
  int tenAbsInter() {
    // TODO: implement tenAbsInter
    throw UnimplementedError();
  }

}