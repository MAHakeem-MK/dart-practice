abstract class Observable {
  void add(Observer observer);
  void remove(Observer observer);
  void notify();
}

abstract class Observer {
  void update(Observable observable);
}

class DataClass implements Observable {
  String data;
  final List<Observer> observers = List();
  @override
  void add(Observer observer) {
    observers.add(observer);
  }

  @override
  void remove(Observer observer) {
    observers.remove(observer);
  }

  @override
  void notify() {
    observers.forEach((observer) => observer.update(this));
  }

  @override
  String toString() {
    return data;
  }
}

class UI extends Observer {
  String name;
  UI(this.name);
  @override
  void update(Observable observable) {
    DataClass dataClass = observable;
    print("$dataClass from ${this}");
  }
  @override
  String toString() {
    return name;
  }
}
