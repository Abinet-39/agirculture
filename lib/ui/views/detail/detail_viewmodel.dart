import 'package:charts_flutter/flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DetailViewModel extends BaseViewModel {
  List<List<int>> price = [
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
    [
      2000,
      3000,
      3500,
      4000,
    ],
  ];
  List<charts.Series<TimeSeriesSales, String>> createSampleData(int index) {
    final data = [
      TimeSeriesSales(
          DateTime.now().subtract(Duration(days: 3)), price[index][0]),
      TimeSeriesSales(
          DateTime.now().subtract(Duration(days: 2)), price[index][2]),
      TimeSeriesSales(
          DateTime.now().subtract(Duration(days: 1)), price[index][1]),
      TimeSeriesSales(DateTime.now(), price[index][3]),
    ];

    return [
      new charts.Series<TimeSeriesSales, String>(
        displayName: 'Price',
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time.day.toString(),
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
