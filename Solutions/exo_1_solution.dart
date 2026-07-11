
void main() {
  // TODO 1: price should be 29.99 — fix both the type and the value
  double price = 29.99;

  // TODO 2: quantity is a count, it should be a whole number
  int quantity = 2;

  // TODO 3: discount is 10% — 0.1 is not an int
  double discount = 0.1;

  // TODO 4: The formula ignores discount. Fix it:
  // total = price * quantity * (1 - discount)
  double total = price * quantity * (1 - discount);

  print('Total after discount: \$${total.toStringAsFixed(2)}');
}