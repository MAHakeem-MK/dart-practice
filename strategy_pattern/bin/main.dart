import 'package:strategy_pattern/strategy_pattern.dart';

void main(List<String> arguments) {
  var wildDuck = WildDuck();
  var rubberDuck = RubberDuck();

  wildDuck.run();
  rubberDuck.run();
}
