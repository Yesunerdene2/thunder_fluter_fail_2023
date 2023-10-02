void main(){
  print('lesson day 06 functions');
  print(isOdd(5));
  print(isOdd(4));
  print(isOdd(13));
  print(isOdd(16));
}


bool isOdd(int a){
  if (a % 2 ==1){
    return true;
    if ( a % 2 ==0){
      return false;
    }
  }else {
    return false;
  }
}
