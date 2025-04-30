import 'package:flutter/material.dart';

class TranzactionPageListTile extends StatefulWidget {
  const TranzactionPageListTile({super.key});

  @override
  State<TranzactionPageListTile> createState() =>
      _TranzactionPageListTileState();
}

class _TranzactionPageListTileState extends State<TranzactionPageListTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400),
            ),
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              title: Text("Продукты"),
              subtitle: Text('data'),
              trailing: Text('-2500'),
            ),
          );
        },
      ),
    );
  }
}
