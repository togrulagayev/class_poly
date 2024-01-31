import 'model/model_class.dart';

void main() {
  Human human = Human(name: "Elvin", age: 26);
  human.showInfo();
  print('-' * 10);
  Student student = Student(
      name: "Rəhman", age: 25, studentId: 123, field: "Computer Science");
  student.showInfo();
}
