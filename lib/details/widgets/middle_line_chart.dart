import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/asset_provider.dart';
import '../controller/time_window_provider.dart';

class MiddleLineChart extends StatefulHookConsumerWidget {
  const MiddleLineChart({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MiddleLineChart> createState() => _MiddleLineChartState();
}

class _MiddleLineChartState extends ConsumerState<MiddleLineChart> {
  @override
  Widget build(BuildContext context) {
    final asset = ref.watch(assetProvider);
    final days = ref.watch(timeWindowProvider.state);

    List<FlSpot> createGraph() {
      List<FlSpot> graphInfo = [];

      for (int index = 0; index < days.state; index++) {
        graphInfo.add(
            FlSpot(double.parse(index.toString()), asset.cryptoValues[index]));
      }

      return graphInfo;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: days.state.toDouble() - 1,
            maxY: asset.cryptoValues.last * 2,
            minY: 0,
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(show: false),
            lineBarsData: [
              LineChartBarData(
                color: const Color.fromRGBO(224, 43, 87, 1),
                spots: createGraph(),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.red.withOpacity(0.2),
                ),
                barWidth: 2,
                dotData: FlDotData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
