import 'package:buget_sketch_app/sketch_page/models/input_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TransactionType { income, expense }

//* Notifier for chekbox
class InputControllerNotifier extends Notifier<TransactionType> {
  @override
  TransactionType build() {
    state = TransactionType.income;
    return TransactionType.income;
  }

  void saveTransactionType(TransactionType type) {
    state = type;
    print(state);
  }
}

//*Notifier for input fields

class InputFiledsControllerNotifier extends Notifier<InputFieldsModel> {
  @override
  InputFieldsModel build() {
    //* Base values
    return InputFieldsModel(
      amount: 0,
      category: 'Выберите категорию',
      note: 'Добавьте заметку',
    );
  }

  void setAmount(double amount) {
    state = state.copyWith(amount: amount);
    print(state);
  }

  void setCategory(String category) {
    state = state.copyWith(category: category);
    print(state);
  }

  void setNote(String note) {
    state = state.copyWith(note: note);
    print(state);
  }

  void saveTransaction(TransactionType type, double amount) {
    if (type == TransactionType.income) {
      state = state.copyWith(totalIncome: state.totalIncome + amount);
    } else {
      state = state.copyWith(totalExpense: state.totalExpense + amount);
    }

    print("Доход: ${state.totalIncome}");
    print("Расход: ${state.totalExpense}");
    print("Баланс: ${state.balance}");
  }

  void save(TransactionType type) {
    if (type == TransactionType.income) {
      state = state.copyWith(totalIncome: state.totalIncome + state.amount);
    } else {
      state = state.copyWith(totalExpense: state.totalExpense + state.amount);
    }

    print('Сохраняем данные:');
    print('Сумма: ${state.amount}');
    print('Категория: ${state.category}');
    print('Заметка: ${state.note}');
    print('Доход: ${state.totalIncome}');
    print('Расход: ${state.totalExpense}');
    print('Баланс: ${state.balance}');
  }

  void resetFields() {
    state = InputFieldsModel(
      amount: 0,
      category: 'Выберите категорию',
      note: 'Добавьте заметку',
      totalIncome: state.totalIncome,
      totalExpense: state.totalExpense,
    );
  }
}
