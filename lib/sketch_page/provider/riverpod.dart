import 'package:buget_sketch_app/sketch_page/models/input_notifier.dart';
import 'package:buget_sketch_app/sketch_page/notifier/notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inputControllerProvider =
    NotifierProvider<InputControllerNotifier, TransactionType>(
      InputControllerNotifier.new,
    );

final inputFieldsControllerProvider =
    NotifierProvider<InputFiledsControllerNotifier, InputFieldsModel>(
      InputFiledsControllerNotifier.new,
    );
