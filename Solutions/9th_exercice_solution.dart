// TODO 1: Fix return type — returns the larger of two numbers
int max(int a, int b) => a > b ? a : b ;

// TODO 2: Convert to arrow syntax — single expression
String repeat(String s, int n) {
  return s * n;
}

// TODO 3: Fix return type — this checks even/odd (true/false)
bool isEven(int n) {
  return n % 2 == 0;
}

// TODO 4: Return type does NOT match the returned value — fix it
String describeLength(String s) {
  return 'The string "${s}" has ${s.length} characters';
}

void main() {
  print(max(10, 5));
  print(repeat('Hi', 3));
  print(isEven(7));
  print(describeLength('Dart'));
}