void main(){
  var account = Account.personal('Rabbi', 25);
}


class Account{
  String? name;
  int? age;

  Account(this.name, this.age){
    display();
  } //normal constructor
  // Account.personal(this.name, this.age); // names constructor

  // constructor forwarding
  Account.personal(name, age): this(name, age);

  display(){
    print(this.name);
    print(this.age);
  }
}