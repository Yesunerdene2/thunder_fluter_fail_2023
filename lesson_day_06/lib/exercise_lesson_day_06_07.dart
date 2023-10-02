void main(){
  print('lesson day 06 functions');
  print(isDivisibleByFive(25));
  print(isDivisibleByFive(10));
  print(isDivisibleByFive(21));
}



bool isDivisibleByFive(int number){
  if(number %5 ==0){
    return true;
    if(number % 5 ==1){
      return false;
    }
  }else{
    return false;
  }
}