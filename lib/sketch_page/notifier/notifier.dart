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

  void save() {
    // Тут можно передать данные в базу или другой список
    print('Сохраняем данные:');
    print('Сумма: ${state.amount}');
    print('Категория: ${state.category}');
    print('Заметка: ${state.note}');
  }
}
