void main() {

  Car c1=Car();
  c1.start();
}

class Vehicle {
  String? _name;
  String? color;
  String? model;

  start() {
    print("Vehicle is start");
  }
}

class Car extends Vehicle {
  @override
  start() {
    print("car is start");
    // return super.start();
  }
}
