void main() {
  // PetrolEngine().start();
  // DieselEngine().start();
  // Platform().start();
  // BenzS500().benzS500();
  // BenzS500().drive();
  BenzS500().newBenzS500('red');
}

abstract class Engine {
  int cylinder = 4;
  late int horsePower;
  void start();
}

class PetrolEngine extends Engine {
  @override
  void start() {
    print('Petrol engine start...');
  }
}

class DieselEngine extends Engine {
  @override
  void start() {
    print('Diesel engine start...');
  }
}

class Platform extends PetrolEngine {
  @override
  void start() {
    print('This car has air conditioner');
    super.start();
  }
}

class Seat {
  void configSeat() {}
}

mixin Remote {
  void lock() {
    print('Lock doors');
  }

  void unlock() {
    print('Unlock doors');
  }
}

class BenzS500 extends Platform with Remote implements Seat {
  late String color;

  benzS500() {
    horsePower = 400;
    print('horse power is $horsePower');
    print('cylinders are $cylinder');
  }

  @override
  void configSeat() {
    print('Config seat by driver');
  }

  void drive() {
    unlock();
    configSeat();
    print('enjoy your driving');
  }

  newBenzS500(String customColor) {
    super.horsePower = 500;
    this.color = customColor;
    print('This is my car. it has $horsePower horse power and it\'s $color');
    drive();
  }
}
