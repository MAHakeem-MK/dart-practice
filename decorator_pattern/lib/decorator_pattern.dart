class Number {
  int _number;
  Number();
  void set value(int value) => _number = value;
  int get value => _number;
}

class ValueDecorator extends Number {
  @override
  String toString() {
    return this.value.toString();
  }
}

class Doubler extends ValueDecorator {
  Doubler(Number number) {
    this.value = number.value * 2;
  }
}

class Tripler extends ValueDecorator {
  Tripler(Number number) {
    this.value = number.value * 3;
  }
}


