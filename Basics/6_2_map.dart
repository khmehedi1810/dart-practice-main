void main(){
  Map<String, dynamic> mySelf = {
    'nam': "KH Mehedi",
    'age': 20,
    'from': 'Tangail'
  };
  // print(mySelf);

  // add element
  mySelf['coll'] = 'Stristy';
  print(mySelf);
  // addAll, 

  // keys
  print(mySelf.keys);
  // _CompactIterable<String> type er result dibe

  // values
  print(mySelf.values);

  // clear
  // mySelf.clear();
  // print(mySelf);

  // remove
  mySelf.remove('coll');
  print(mySelf);

}

anotherWayToCreateMap(){
  var devs = new Map();
  devs['nam'] = 'Devsnest LLC';
  devs['age'] = 3;
  print(devs);
}