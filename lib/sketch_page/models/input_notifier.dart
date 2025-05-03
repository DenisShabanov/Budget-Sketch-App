class InputFieldsModel {
  final double amount;
  final String category;
  final String note;

  InputFieldsModel({
    required this.amount,
    required this.category,
    required this.note,
  });

  InputFieldsModel copyWith({double? amount, String? category, String? note}) {
    return InputFieldsModel(
      amount: amount ?? this.amount,
      category: category ?? this.category,
      note: note ?? this.note,
    );
  }
}
