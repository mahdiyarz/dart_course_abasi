void main() {
  var result = Future.error(Exception('Future has error'));
  result.then((value) => print(value));
  print('The End');
}
