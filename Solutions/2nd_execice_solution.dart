void main() {
  dynamic name = 'Alice';
  name = 42;           // compile error: String can't hold int

  dynamic score = 95.5;
  score = 'A';         // compile error: double can't hold String

  num items = 3;
  items = 3.0;         // compile error: int can't hold double

  Object isDone = false;
  isDone = 'yes';      // compile error: bool can't hold String

  print('$name scored $score with $items items (done: $isDone)');
}