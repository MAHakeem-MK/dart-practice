import 'package:strategy_pattern/strategy_pattern.dart';
import 'package:test/test.dart';

void main() {
  test('duck main', () {
    WildDuck().run();
    RubberDuck().run();
  });
}
