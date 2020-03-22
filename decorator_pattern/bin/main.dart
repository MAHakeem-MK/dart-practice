
import '../lib/decorator_pattern.dart';

void main(List<String> arguments) {
  Number number = Number();
  number.value = 3;
  print(Doubler(number));
  print(Tripler(number));
  print(Tripler(Doubler(number)));
}
