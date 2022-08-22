void main() {
  print("Print numbers divisible by 3:");
  print("Print once every 9 seconds, please wait ...");
  Stream<int> numberStream = makeSecondStream(maxNumber: 100);
  readStream1(numberStream: numberStream);
}

Stream<int> makeSecondStream({required int maxNumber}) async* {
  for (int number = 1; number <= maxNumber; number++) {
    await Future.delayed(Duration(seconds: 3));
    yield number;
  }
}

readStream1({required Stream<int> numberStream}) {
  numberStream.listen((number) {
    if (number % 3 == 0) print(number);
  });
}
