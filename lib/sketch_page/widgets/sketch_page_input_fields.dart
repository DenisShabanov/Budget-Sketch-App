import 'package:buget_sketch_app/sketch_page/provider/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SketchPageInputFields extends ConsumerWidget {
  SketchPageInputFields({super.key});
  final amountController = TextEditingController();
  final categoryController = TextEditingController();
  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaction = ref.watch(inputFieldsControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Сумма'),
        const SizedBox(height: 10),
        TextField(
          controller: amountController,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "0",
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            final parsed = double.tryParse(value);
            if (parsed != null) {
              ref
                  .read(inputFieldsControllerProvider.notifier)
                  .setAmount(parsed);
            }
          },
        ),
        const SizedBox(height: 40),
        Text('Категория'),
        const SizedBox(height: 10),
        TextField(
          controller: categoryController,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "Выберите категорию",
            border: OutlineInputBorder(),
          ),
          onChanged: (category) {
            ref
                .read(inputFieldsControllerProvider.notifier)
                .setCategory(category);
          },
        ),
        const SizedBox(height: 40),
        Text('Заметка (необязательно)'),
        const SizedBox(height: 10),
        TextField(
          controller: noteController,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: "Добавьте заметку",
            border: OutlineInputBorder(),
          ),
          onChanged: (note) {
            ref.read(inputFieldsControllerProvider.notifier).setNote(note);
          },
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              final transactionType = ref.read(inputControllerProvider);
              final notifier = ref.read(inputFieldsControllerProvider.notifier);

              notifier.save(transactionType); // сохраняем
              notifier.resetFields();

              amountController.clear();
              categoryController.clear();
              noteController.clear();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Транзакция сохранена!'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                ),
              );

              Navigator.of(context).pop();
            },
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
