void main(){
  // try, on, catch, stack-trace, finally

  // Format exception
  try{
    int res = int.parse('44');
    print(res.runtimeType);
  }catch(e, s){
    // s means stack-trace = kon kon library break hoyeche ei error e ta print korbe
    print(e);
    print(s);
  }

  // Division by zero
  try{
    var result = 10~/0;
  }on IntegerDivisionByZeroException{
    print("Cannot divide by zero");
    // on block e dhukle catch e jabe na
  }catch(e){
    print(e);
  }finally{
    print("Result is: 1");
  }

  // Custom Exception
  checkValue(4);
}

class Value implements Exception {
  String lessThanVal(){
    return 'value is Smaller';
  }
  String graterThanVal(){
    return 'value is Bigger';
  }
}

checkValue(num){
  if(num < 5){
    throw Value().lessThanVal();
  }else if(num > 10){
    throw Value().graterThanVal();
  }else{
    print('Success');
  }
}