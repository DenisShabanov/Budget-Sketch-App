import 'package:buget_sketch_app/tranzaction_page/widgets/tranzaction_page_list_tile.dart';
import 'package:flutter/material.dart';

class TranzactionPage extends StatelessWidget {
  const TranzactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,

      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Транзакции', style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: 20),
              Expanded(child: TranzactionPageListTile()),
            ],
          ),
        ),
      ),
    );
  }
}
