void main() {
  List<String> mylist = ['a', 'b', 'c', 'd'];

  print(mylist);
  print(mylist.length);
  print(mylist[1]);

  mylist.add('e');
  print(mylist);

  mylist.addAll(['f', 'g']);
  print(mylist);

  mylist.insert(3, 'ss');
  print(mylist);

  // inserAll

  // update
  mylist[3] = 'u';

  // remove
  mylist.removeLast(); // last element
  mylist.removeAt(3);
  mylist.remove('a'); // value dhore remove

  // growale list = new item add korte parbo
  // uporer example 

  // fixed length list = new item add possible na
  const List<int> numbs= [10, 20, 30];
}