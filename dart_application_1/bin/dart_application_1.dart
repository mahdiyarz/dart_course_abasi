void main() {
  var result = Future.delayed(
    Duration(seconds: 2),
    () => 'Web Result',
  );
  result.then((value) => print(value));
  print('The End');
}
