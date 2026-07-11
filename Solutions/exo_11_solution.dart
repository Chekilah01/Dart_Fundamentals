void main() {
  // --- Task 1: Remove duplicates ---
  // TODO 1: Convert to Set so duplicates are removed, but keep the variable as List<String>
  List<String> tags = ['dart', 'flutter', 'dart', 'mobile', 'flutter'];
  List<String> uniqueTags = tags.toSet().toList(); // fix this
  print('Unique tags: $uniqueTags');

  // --- Task 2: Fix Map type params ---
  // TODO 2: Add correct type parameters (String keys, int values)
  Map<String, int> ratings = {
    'Song A': 5,
    'Song B': 3,
  };
  print('Ratings: $ratings');
  print('Song A rating: ${ratings['Song A']}');

  // --- Task 3: Fix collection-if ---
  bool isPremium = false;
  // TODO 3: Fix the condition and understand why 'Premium' should NOT appear
  List<String> queue = [
    'Intro',
    if (isPremium == true) 'Premium Track', // bug: = instead of ==
    'Outro',
  ];
  print('Queue: $queue');

  // --- Task 4: Collection-for with formatting ---
  List<String> artists = ['Singer X', 'Singer Y'];
  // TODO 4: Generate 'Artist: Singer X' and 'Artist: Singer Y' using collection-for
  List<String> labels = [for(var artist in artists) "Artist : $artist"]; // fix this
  print('Labels: $labels');
  // or List<String> labels = [for(int i = 0 ; i < artists.length; i++ ) "Artist : ${artists[i]}"]; // fix this
  //print('Labels: $labels');

  // --- Task 5: Null-aware spread ---
  List<String>? extraSongs = null;
  // TODO 5: Safely combine queue and extraSongs — handle null
  List<String> fullList = [...queue, ...?extraSongs];
  print('Full list: $fullList');

  // --- Task 6: Filter + Map chaining ---
  List<double> prices = [5.99, 12.49, 3.49, 25.00, 8.99];
  // TODO 6: Keep only prices >= 10, then format as '\$12.49'
  List<String> formatted = prices
      .where((p) => p >= 10)  // fix condition
      .map((p) => '\$${p.toStringAsFixed(2)}')      // fix formatting
      .toList();
  print('Formatted prices: $formatted');
}