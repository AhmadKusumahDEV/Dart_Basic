// ignore_for_file: avoid_print

class Orang {
  final int x;
  final int y;

  const Orang(this.x, this.y);
}

void main() {
  var per = const Orang(1, 2);
  var per2 = const Orang(1, 2);

  print(per == per2);
}
