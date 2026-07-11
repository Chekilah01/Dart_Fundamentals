
void main() {
  // TODO 1: value should hold String, int, and bool but stay type-safe
  Object value = 'Hello';
  value = 42;    // compile error
  value = true;  // compile error

  if (value is String) {
    print(value.toUpperCase());
  } else {
    print(value);
  }

  // TODO 2: flexible should hold any type without safety
  dynamic flexible = 'Start';
  flexible = 99;
  flexible = true;
  print(flexible);

  // TODO 3: number should hold both int and double (type-safe parents)
  num number = 10;
  number = 10.5;  // compile error
  print(number);
}