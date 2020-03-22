import '../lib/observer_pattern.dart';

void main(List<String> arguments) {
  print('inside main');
  DataClass dataClass = DataClass();
  Observer ui1 = UI('ui1');
  Observer ui2 = UI('ui2');
  dataClass.add(ui1);
  dataClass.add(ui2);
  dataClass.data = "Hello";
  dataClass.notify();
}
