import 'package:dart_application_1/integer_stream.dart';

void main() {
  IntegerStream()
      .stream
      .where((event) => event % 2 == 1)
      .map((event) => 'Stream Value is $event')
      .listen(
    (event) {
      print(event);
    },
    onError: (error) => print('Error'),
    onDone: () => print('done'),
  );
}
