void main() {
  var result = Future.value(2);
  result.then((value) => print(value));
  print('The End');
}
