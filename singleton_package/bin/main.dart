import 'package:singleton_package/singleton.dart';

void main(List<String> arguments) {
  var v1 = Singleton.instance;
  v1.data =  'Hello';
  var v2 = Singleton.instance;
  v2.data = 'Hi';
  print(v1);
  print(v2);
}
