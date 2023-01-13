void main(List<String> args) {
  processData();
}

void processData() async {
  try {
    String name = await getDataName();
    int age = await getDataAge();

    print('My name is $name and $age years old');
  } catch (e) {
    print('error');
  }
}

Future<String> getDataName() async {
  String getName = await Future.delayed(
    Duration(seconds: 2),
    () => 'mahDyar',
  );
  return getName;
}

Future<int> getDataAge() async {
  int getAge = await Future.delayed(
    Duration(seconds: 3),
    () => 33,
  );
  return getAge;
}
