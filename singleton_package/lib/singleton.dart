class Singleton {
  String data;
  static Singleton _instance;
  Singleton._();
  static Singleton get instance => _instance ??= Singleton._();

  @override
  String toString() {
    return data;
  }
}
