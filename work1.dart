import 'ex1.dart';

class Vehicle {
  String? brand;
  String? model;

  Vehicle(this.brand,this.model);
  String toString() => 'ชื่อ : $brand รุ่น : $model ';
  void drive() => print('Vehicle is driveing');
}

class Car extends Vehicle{
  int? numOfDoors;

  
  Car(brand,model,this.numOfDoors):super(brand,model);
  String toString() => 'ชื่อ : $brand รุ่น : $model  ประตู : $numOfDoors';
  void drive() => print('Car is driving.');

}

void main(List<String> args) {
 var car = Car('BMW', 'Z320', 2);
 var vehicle = Vehicle('NISSAN', 'R32'); 
 car.drive();
 vehicle.drive();
 print(car);
 print(vehicle);
 
 }