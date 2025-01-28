import 'dart:async';

Future<void> line1() async {
  await Future.delayed(Duration(seconds: 5));
  print('Pernahkah kau merasa');
}

Future<void> line2() async {
  await Future.delayed(Duration(seconds: 3));
  print('Pernahkah kau merasa');
}

Future<void> line3() async {
  await Future.delayed(Duration(seconds: 2));
  print('Pernahkah kau merasa');
}

Future<void> line4() async {
  await Future.delayed(Duration(seconds: 1));
  print('Hatimu hampa, pernahkah kau merasa, hatimu kosong');
}

void main(List<String> args) async {
  print("Ready, sing");
  await line1();
  await line2();
  await line3();
  await line4();
}
