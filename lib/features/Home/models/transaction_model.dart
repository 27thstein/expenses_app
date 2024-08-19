class Transaction {
  final String description;
  final double amount;
  final DateTime date;

  Transaction({required this.description, required this.amount, required this.date});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      description: json['description'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
    );
  }
}