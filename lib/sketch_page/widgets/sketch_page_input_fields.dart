import 'package:buget_sketch_app/sketch_page/provider/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SketchPageInputFields extends ConsumerWidget {
  const SketchPageInputFields({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaction = ref.watch(inputFieldsControllerProvider);
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
              ref.read(inputFieldsControllerProvider.notifier).save();
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
