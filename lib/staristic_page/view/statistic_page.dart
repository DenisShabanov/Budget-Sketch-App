import 'package:buget_sketch_app/staristic_page/widgets/statistic_page_line_chart.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(height: 300, child: StatisticPageLineChart()),
      ),
    );
  }
}
