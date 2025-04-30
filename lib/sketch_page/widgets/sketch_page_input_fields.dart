import 'package:flutter/material.dart';

class SketchPageInputFields extends StatelessWidget {
  const SketchPageInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Сумма'),
        const SizedBox(height: 10),
        TextField(
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "0",
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 40),
        Text('Категория'),
        const SizedBox(height: 10),
        TextField(
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "Выберите категорию",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 40),
        Text('Заметка (необязательно)'),
        const SizedBox(height: 10),
        TextField(
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "Добавьте заметку",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 147, 51, 234),
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'сохранить',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
