import 'dart:async';

class IntegerStream {
  var _count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
  IntegerStream() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_count < 5) {
        _controller.sink.add(_count);
        _count++;
      } else {
        _controller.done;
        _controller.close();
      }
    });
  }
}
