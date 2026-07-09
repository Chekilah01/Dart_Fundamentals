class PaymentException {
  final String code;
  final String message;
  PaymentException(this.code, this.message);
  @override
  String toString() => '[$code] $message';
}

bool transfer(String from, String to, double amount) {
  if (amount <= 0) {
    // TODO 1: Throw a PaymentException with code 'AMT' and message 'Amount must be positive'
    throw PaymentException("AMT", "Amount must be positive");
    //print('Amount must be positive'); // not good enough — execution continues!
  }
  if (amount > 10000) {
    throw PaymentException('LIMIT', 'Transfer limit exceeded');
  }
  print('Transferred \$$amount from $from to $to');
  return true;
}

double parseAmount(String input) {
  // TODO 2: This can throw FormatException — let it propagate (the caller handles it)
      return double.parse(input);
}

void main() {
  List<String> operations = [
    'process:-50:Alice:Bob',
    'process:999999:Alice:Bob',
    'parse:not-a-number',
  ];

  for (var op in operations) {
    // TODO 3: Wrap in try/catch. Catch PaymentException, FormatException,
    // then any other exception. Add finally for audit log.
    try {
      var parts = op.split(':');
    if (parts[0] == 'process') {
      double amt = double.parse(parts[1]);
      transfer(parts[2], parts[3], amt);
    } else if (parts[0] == 'parse') {
      parseAmount(parts[1]);
    }
    } on FormatException catch(e){
      print("FormatException : ${e.message}");
    }on PaymentException catch(e){
      print(e);
    }catch(e){
      print("Unexpected error: $e");
    }finally{
      print("--- Transaction ended ---");
    }
  }
}