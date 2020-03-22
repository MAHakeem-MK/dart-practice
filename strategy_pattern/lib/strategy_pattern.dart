mixin DuckSpeakingBehaviour {
  void speak() {
    print('quak..quak..');
  }
}

mixin DuckWalkingBehaviour {
  void walk() {
    print('walking');
  }
}

mixin DuckEatingBehaviour {
  void eat() {
    print('eating');
  }
}

mixin DuckFlyingBehaviour {
  void fly() {
    print('fly');
  }
}

mixin DuckSwimmingBehaviour {
  void swim() {
    print('swim');
  }
}

abstract class Duck {
  void run();
}

class WildDuck extends Duck with DuckWalkingBehaviour,DuckEatingBehaviour,DuckFlyingBehaviour,DuckSpeakingBehaviour,DuckSwimmingBehaviour{
  @override
  void run() {
    walk();
    eat();
    fly();
    speak();
    swim();
  }
}

class RubberDuck extends Duck with DuckSwimmingBehaviour,DuckSpeakingBehaviour {
  @override
  void run() {
    swim();
    speak();
  }
  
}