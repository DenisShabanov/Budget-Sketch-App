import 'package:buget_sketch_app/main_page/widgets/main_page_general_information.dart';
import 'package:buget_sketch_app/main_page/widgets/main_page_tranzaction_list_tile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              MainPageGeneralInformation(),
              const SizedBox(height: 40),
              Text(
                'Последние транзакции',
                style: TextTheme.of(context).labelLarge?.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 40),

              Expanded(child: MainPageTranzactionListTile()),
            ],
          ),
        ),
      ),
    );
  }
}
