import 'package:flutter/material.dart';

class SketchPageChekBox extends StatefulWidget {
  const SketchPageChekBox({super.key});

  @override
  State<SketchPageChekBox> createState() => _SketchPageChekBoxState();
}

enum TransactionType { income, expense }

class _SketchPageChekBoxState extends State<SketchPageChekBox> {
  TransactionType? _selectedType;
  void onChanged(TransactionType? value) {
    setState(() {
      _selectedType = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<TransactionType>(
          value: TransactionType.income,
          groupValue: _selectedType,
          onChanged: onChanged,
          activeColor: Color.fromARGB(255, 147, 51, 234),
          visualDensity: VisualDensity(horizontal: -4),
        ),
        const Text("Доход"),

        Radio<TransactionType>(
          value: TransactionType.expense,
          groupValue: _selectedType,
          onChanged: onChanged,
          activeColor: Color.fromARGB(255, 147, 51, 234),
          visualDensity: VisualDensity(horizontal: -4),
        ),
        const Text("Расход"),
      ],
    );
  }
}
