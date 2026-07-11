void main() {
  // TODO 1: Create a stream that emits 0, 1, 2, 3, 4, 5 (one per second)
  Stream<int>? timer;
  timer = Stream.periodic(Duration(seconds: 1) , (count) => count ).take(6) ;
  

  // TODO 2: Take 6 values, then use .where() to keep only even numbers.
  // Listen with onDone that prints 'Countdown complete!'
  timer?.take(6).where((v) => v.isEven).listen( (val)=> print(val) ,    onDone: () => print("Countdown complete!")  );

  // TODO 3: Handle the faulty stream's error with onError
  Stream<int> faulty = Stream.error('Timer hardware failure');
  faulty.listen(
    (v) => print(v),
    // add onError here
    onError: (error) => print("Error : $error"),
  );
}