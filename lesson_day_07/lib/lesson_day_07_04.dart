void main(){
  final Student john = Student();
  john.name ='john';
  john.studentId = '6821028';
  john.grade = 90;
  john.showStudentInfo();

}




class Student{
  String? name;
  String? studentId;
  double? grade;
void showStudentInfo(){
  print('The student name is $name.''She has student id: $studentId.''She has the grade$grade');
}

}