mixin DuckSpeakingBehaviour {
  void speak(Duck duck) {
    if (duck is WildDuck) {
      print('quak..quak');
    } else if (duck is RubberDuck) {
      print('pee..pee');
    } else {
      print("I don't know!");
    }
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

class WildDuck extends Duck with DuckWalkingBehaviour,DuckSpeakingBehaviour,DuckEatingBehaviour,DuckFlyingBehaviour,DuckSwimmingBehaviour {
  @override
  void run() {
    walk();
    eat();
    fly();
    speak(this);
    swim();
  }
}

class RubberDuck extends Duck with DuckSwimmingBehaviour,DuckSpeakingBehaviour {
  @override
  void run() {
    swim();
    speak(this);
  }
}