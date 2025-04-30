import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticPageLineChart extends StatelessWidget {
  const StatisticPageLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 0),
              FlSpot(1, 3),
              FlSpot(2, 4),
              FlSpot(4, 1),
              FlSpot(6, 3),
            ],
            isCurved: true,
            preventCurveOverShooting: true,
            color: Colors.black,
            barWidth: 3,
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.deepPurpleAccent, Colors.red],
            ),
          ),
        ],
      ),
    );
  }
}
