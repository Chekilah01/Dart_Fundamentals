// Simulates async data loading — might return null
Future<List<Map<String, dynamic>>?> loadStudents() async {
  await Future.delayed(Duration(seconds: 1));
  return [
    {'name': 'Alice', 'grade': 92.0, 'email': 'alice@school.com'},
    {'name': 'Bob', 'grade': 78.0},
    {'name': 'Charlie', 'grade': 88.0, 'email': 'charlie@school.com'},
    {'name': 'Diana', 'grade': 65.0},
  ];
}

// TODO 1: Fix return type — might return null AND might receive null
List<Map<String, dynamic>>? filterTop(List<Map<String, dynamic>>? students) {
  // TODO 2: Handle null students safely — return null instead of crashing
  if(students == null) return null ;
  return students.where((s) {
    double grade = s['grade'] as double;
    return grade >= 80.0;
  }).toList();
}

// TODO 3: Fix return type — empty list or null should return null, not 0.0
double? computeAverage(List<Map<String, dynamic>>? students) {
  if (students == null || students.isEmpty ) return null ;
  double sum = 0 ;
  for (var s in students) {
    sum += s['grade'] as double;
  }
  return sum / students.length;
}

String describeStudent(Map<String, dynamic> s){
  String name = s['name'] as String;
  double grade = s['grade'] as double;
  // TODO 4: Get email safely — show 'N/A' if missing. Cast to String? first.
  String email = (s['email'] as String?) ?? "N/A";
  return '$name (Grade: $grade, Email: $email)';
}

Future<void> main() async {
  try {
    print('Loading...');
    List<Map<String, dynamic>>? data = await loadStudents();

    // TODO 5: Handle null data — print 'No data loaded' and exit early
      if(data == null){
        print("No data loaded");
        return;
      }
    print('\n--- All Students ---');
    for (var s in data) { // might crash if data is null
      print(describeStudent(s));
    }

    // TODO 6: Safely get top students
    var top = filterTop(data);
    print('\n--- Top Students (grade >= 80) ---');
    for (var s in top ?? []) {
      print('  - ${s['name']}');
    }

    // TODO 7: Compute and print average — handle null return
    double? avg = computeAverage(data);
    print('\nClass average: ${avg?.toStringAsFixed(1)}');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Done.');
  }
}