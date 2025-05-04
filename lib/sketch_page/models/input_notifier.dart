class InputFieldsModel {
  final double amount;
  final String category;
  final String note;

  final double totalIncome;
  final double totalExpense;

  InputFieldsModel({
    required this.amount,
    required this.category,
    required this.note,
    this.totalIncome = 0,
    this.totalExpense = 0,
  });
  double get balance => totalIncome - totalExpense;

  InputFieldsModel copyWith({
    double? amount,
    String? category,
    String? note,
    double? totalIncome,
    double? totalExpense,
  }) {
    return InputFieldsModel(
      amount: amount ?? this.amount,
      category: category ?? this.category,
      note: note ?? this.note,
      totalIncome: totalIncome ?? this.totalIncome,
      totalExpense: totalExpense ?? this.totalExpense,
    );
  }
}
