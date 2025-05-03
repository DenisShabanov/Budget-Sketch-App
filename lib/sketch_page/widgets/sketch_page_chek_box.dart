import 'package:buget_sketch_app/sketch_page/notifier/notifier.dart';
import 'package:buget_sketch_app/sketch_page/provider/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SketchPageChekBox extends ConsumerStatefulWidget {
  const SketchPageChekBox({super.key});

  @override
  ConsumerState<SketchPageChekBox> createState() => _SketchPageChekBoxState();
}

class _SketchPageChekBoxState extends ConsumerState<SketchPageChekBox> {
  @override
  Widget build(BuildContext context) {
    final pickChekBox = ref.watch(inputControllerProvider);

    return Row(
      children: [
        Radio<TransactionType>(
          value: TransactionType.income,
          groupValue: pickChekBox,
          onChanged: (value) {
            if (value != null) {
              ref
                  .read(inputControllerProvider.notifier)
                  .saveTransactionType(value);
            }
          },

          activeColor: Color.fromARGB(255, 147, 51, 234),
          visualDensity: VisualDensity(horizontal: -4),
        ),
        const Text("Доход"),

        Radio<TransactionType>(
          value: TransactionType.expense,
          groupValue: pickChekBox,
          onChanged: (value) {
            if (value != null) {
              ref
                  .read(inputControllerProvider.notifier)
                  .saveTransactionType(value);
            }
          },
          activeColor: Color.fromARGB(255, 147, 51, 234),
          visualDensity: VisualDensity(horizontal: -4),
        ),
        const Text("Расход"),
      ],
    );
  }
}
