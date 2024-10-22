abstract class Vehicle{
  String? model;
  String? engine;

  Vehicle(this.model, this.engine);

  void carBody();
  void cartWheel();
}

class Corola extends Vehicle{
  Corola(String model, String engine): super(model, engine){
    // super diye parent constructor e value pass hoise
    print(super.model);
    print(super.engine);
  }

  @override
  void carBody() {
    print('Metal build');
  }

  @override
  void cartWheel() {
    print('4 wheels');
  }
}

void main() {
  var corola = new Corola("2020", "12cc");
  corola.carBody();
  corola.cartWheel();
}