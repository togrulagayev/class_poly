import 'model/encapsulation.dart';
import 'model/polymorphism.dart';

// void main() {
//   Human human = Human(name: "Elvin", age: 26);
//   human.showInfo();
//   print('-' * 10);
//   Student student = Student(
//       name: "Rəhman", age: 25, studentId: 123, field: "Computer Science");
//   student.showInfo();
// }

void main() {
  Car car = Car(model: 'X7', color: 'Black', year: 2020);
  car.setter = false;
  print(car.getter);
  print(car.model);
}
