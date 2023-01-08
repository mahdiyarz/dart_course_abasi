void main() {
  var result = Future.delayed(
    Duration(seconds: 2),
    () => Exception('Web Result Error'),
  );
  result
      .then((successValue) => print('Value is: $successValue'))
      .catchError((errorValue) => print('Error is: $errorValue'))
      .whenComplete(() => print('job done'));
  print('The End');
}
