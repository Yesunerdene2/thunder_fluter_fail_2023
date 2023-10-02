void main(){
  final Person dustin = Person();
  dustin.firstName = 'Dustin';
  dustin.lastName = 'Peterson';
  print(dustin.getFullName());
  dustin.shout();
}
class Person{
  String? firstName;
  String? lastName;
   String getFullName(){
     return "$firstName $lastName";
   }

   void shout(){
     print('Hiiiii My name is $firstName $lastName');
   }
}