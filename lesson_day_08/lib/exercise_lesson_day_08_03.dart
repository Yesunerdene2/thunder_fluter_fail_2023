void main(){
  print('Lesson day - 08 class constructor');
  final Student student = Student.freshman('john',10);
  print(student);
}

class Student{
  String? name;
  int? grade;
  Student(this.name, this.grade);
  Student.freshman(this.name,[this.grade=1]);

  @override
  String toString() {
    // TODO: implement toString
    return 'User{name:$name, grade:$grade}';
  }
}