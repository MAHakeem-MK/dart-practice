import 'package:strategy_pattern/strategy_pattern.dart';
import 'package:test/test.dart';

void main() {
  test('duck main', () {
    WildDuck().run();
    RubberDuck().run();
  });

  test('description', (){
    String message = WildDuck().toString();
    String testMessage = message.split(" ").last.replaceAll("'", "");
    print(testMessage);
    expect(testMessage, "WildDuck");
  });
}
