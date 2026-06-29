void main() {
  String item = 'Coffee';
  int qty = 3;
  double price = 4.99;
  double tax = 0.08;

  // TODO 1: Fix — variables are not interpolated (missing $)
  print('Item: $item, Quantity: $qty, Unit Price: $price');

  // TODO 2: Calculate subtotal and total using expression interpolation
  double subtotal = qty * price;
  double total = subtotal * (1 + tax);
  print('Subtotal: ${qty * price}');
  print('Total with tax: ${subtotal * (1 + tax)}');

  // TODO 3: Combine everything into one line with proper interpolation
  // Expected: "Coffee x 3 = $14.97 (total with tax: $16.17)"
  print('$item x $qty =  ${qty * price} (total with tax: ${(subtotal * (1 + tax)).toStringAsFixed(2)})');
}