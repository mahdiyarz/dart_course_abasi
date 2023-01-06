void main() {
  PetrolEngine().start();
  DieselEngine().start();
  Platform().start();
  BenzS500();
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

class BenzS500 extends Platform {
  BenzS500() {
    horsePower = 400;
    print('horse power is $horsePower');
    print('cylinders are $cylinder');
  }
}
