void main() {
  // TODO 1: This string literal is known at compile time
  const appVersion = 'v2.5.0';

  // TODO 2: DateTime.now() is only known at runtime
  final startedAt = DateTime.now();

  // TODO 3: 9.81 is a literal — known at compile time
  const gravity = 9.81;

  // TODO 4: 100 * 3 is a constant expression — it CAN be const
  const maxScore = 100 * 3;

  // TODO 5: This should be set once and never reassigned
  const theme = 'dark';

  print('$appVersion started at $startedAt');
  print('Gravity: $gravity, Max score: $maxScore');
  print('Theme: $theme');
}