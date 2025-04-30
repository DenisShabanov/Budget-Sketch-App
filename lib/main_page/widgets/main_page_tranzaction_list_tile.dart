import 'package:flutter/material.dart';

class MainPageTranzactionListTile extends StatefulWidget {
  const MainPageTranzactionListTile({super.key});

  @override
  State<MainPageTranzactionListTile> createState() =>
      _MainPageTranzactionListTileState();
}

class _MainPageTranzactionListTileState
    extends State<MainPageTranzactionListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(Icons.arrow_downward_rounded),
              title: Text('Продукты'),
              subtitle: Text('Сегодня'),
              trailing: Text('-₽2,500'),
            ),
          );
        },
      ),
    );
  }
}
