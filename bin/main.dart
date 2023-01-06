void main() {
  List names = ['ali', 'mamad', 'reza'];
  int j = 0;

  for (var name in names) {
    j++;
    print('$j-$name');
  }

  for (var i = 1; i <= names.length; i++) {
    print(i);
  }
}
