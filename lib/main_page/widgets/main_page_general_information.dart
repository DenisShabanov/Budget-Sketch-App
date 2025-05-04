import 'package:buget_sketch_app/sketch_page/notifier/notifier.dart';
import 'package:buget_sketch_app/sketch_page/provider/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPageGeneralInformation extends ConsumerStatefulWidget {
  const MainPageGeneralInformation({super.key});

  @override
  ConsumerState<MainPageGeneralInformation> createState() =>
      _MainPageGeneralInformationState();
}

class _MainPageGeneralInformationState
    extends ConsumerState<MainPageGeneralInformation> {
  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(inputFieldsControllerProvider);

    final income = inputState.totalIncome;
    final expense = inputState.totalExpense;
    final balance = inputState.balance;
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 147, 51, 234),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Мой баланс",
              style: TextTheme.of(
                context,
              ).bodyLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              "\$${balance.toStringAsFixed(2)}",
              style: TextTheme.of(
                context,
              ).labelLarge?.copyWith(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.red),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Расходы',
                          style: TextTheme.of(
                            context,
                          ).bodyMedium?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${expense.toStringAsFixed(2)}',
                          style: TextTheme.of(context).bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Доходы',
                          style: TextTheme.of(
                            context,
                          ).bodyMedium?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${income.toStringAsFixed(2)}',
                          style: TextTheme.of(context).bodySmall,
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_drop_up, color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
