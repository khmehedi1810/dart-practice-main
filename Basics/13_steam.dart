void main(){
  final stream = counter(20);

  stream.listen((event){
    print(event);
  });
}

Stream<int> counter(int count) async*{
  for(int i = 0; i < count; i++){
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}