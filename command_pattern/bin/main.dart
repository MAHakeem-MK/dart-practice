import 'package:command_pattern/command_pattern.dart';

void main(List<String> arguments) {
  var adder = AdderCommand(2);
  var invoker = Invoker();
  invoker.command = adder;

  invoker.doAction();
  print(adder);
  invoker.undoAction();
  print(adder);
  var invoker2 = Invoker();
  invoker2.command = adder;
  invoker2.doAction();
  print(adder);
}
