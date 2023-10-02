import 'dart:io';
void main(){
  String singleQouted = 'This is a singke-quoted string.';
  String doubleQuoted = "this is a double-quoted string.";
  String firstName = 'john';
  String lastName = 'Doe';
  String fullName = firstName + ' ' + lastName;
  String name = 'Alice';
  String greeting = 'Hello, $name!';
  String text = 'Hello,World!';
  int lenght = text.length;
  String sentence = ' Dart programming is fun!  ';
  String trimmed = sentence.trim();
  String str1 = 'apple';
  String str2 = 'apple';
  bool isEqual = str1 == str2;
  String multiline = '''
  This is a
  multiline 
  string
  ''';
  String rawString = r'This is a \n raw string';
  String numberStr = '42';
  int parsedInt = int.parse(numberStr);
  String doubleStr = '45.6';
  double parseDouble = double.parse(doubleStr);

  bool isEven = true;
  bool isOdd = false;
  bool result = ( 5 == 5);
  result = 6>7;
  result = 8>=7;
  result = 7<= 8;
  int age = 24;
  result = 5 < age && age < 25;
  String nationity = 'Mongolian';
  String gender = 'man';
  result = (nationity == 'Mongolian' || gender == 'man');
  result = (nationity != 'Mongolian');
  print (result);
  print ("Enter an integer");
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("$number is positive.");
  }else if (number < 0) {
    print("$number is negative");
  } else {
    print("$number is zero.");
    String b = 'Mongolian';
    switch (b) {
      case 'Moroccian':
        print ('You are motoccian');
        break;
      case 'Turkish':
        print('You are Turkish');
        break;
      default: {
        print ('Your nationality is not included');

      }
    }
  }



}

