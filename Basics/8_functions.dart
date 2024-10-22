void main(){
  // Define a function
  addNumbers(){
    print(10+20);
  }
  // addNumbers();

  // Arrow function or One line function
  var arrFunc = () => print('KH Mehedi');
  // arrFunc();

  //return from function
  funRet(int a, int b){
    return a + b;
  }
  // print(funRet(10, 6));

  // Optional positional parameter
  funcOptionalPos(a, b, c, [d, e]){
    print(a);
    print(b);
    print(c);
    print(d);
    print(e);
  }
  // funcOptionalPos(a, b, c, [d = 5, e]){
  // funcOptionalPos(10, 30, 20, 4, 2);

  // Optional named parameter
  funcOptionalNamed(a, b, c, {d, e}){
    print(a);
    print(b);
    print(c);
    print(d);
    print(e);
  }
  // funcOptionalNamed(a, b, c, {d, e = 4}){
  // funcOptionalNamed(10, 20, 40, e: 4);

  // call higher order function
  // funcHigher()();

  // call function as parameter
  mynam(){
    print('KH Mehedi');
  }
  funcAsPara(mynam);
}

  // higher order function
  funcHigher(){
    return () => print("KH Mehedi");
  }

  // function as parameter
  funcAsPara(Function function){
    function();
  }

  