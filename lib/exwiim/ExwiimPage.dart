class A {
  a1() {
    _aa();
  }

  _aa() {}
}

class B {
  b1() {}
}

class B2 {
  b2() {}
}

abstract class C1 {
  c1() {}
}

class C2 {
  c2() {}
}

class S extends A with B, B2 implements C1, C2 {
  @override
  a1() {
    return super.a1();
  }

  @override
  b1() {
    return super.b1();
  }

  @override
  b2() {
    return super.b2();
  }

  @override
  c1() {

  }

  @override
  c2() {

  }


}

class SS {
  ss() {
    S().a1();
    S()._aa();
    S().b1();
    S().b2();
    S().c1();
    S().c2();
  }
}
