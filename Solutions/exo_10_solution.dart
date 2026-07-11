// TODO 1: Convert to NAMED parameters.
// name is required, age is required, country defaults to 'Unknown'
void printPerson({required String name, required int age, String country = "Unknown"}) {
  print('$name ($age) from $country');
}

// TODO 2: Convert title to OPTIONAL POSITIONAL with default 'Guest'
void printBadge(String name, [String title = "Guest"]) {
  print('$name — $title');
}

void main() {
  // TODO 3: Update these calls to match the new signatures
  printPerson(name:'Alice',age: 30, country: 'Canada');
  printPerson(name: 'Bob',age:  25);
  printBadge('Alice', 'Admin');
  printBadge('Bob');
}