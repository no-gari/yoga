import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

Map<String, double> dataMap = {
  "목표 시간": 7,
  "남은 시간": 3,
};
final colorList = [kBackgroundColorMain, Colors.grey];

class PieChartGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '이번 주 운동시간',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: getProportionateHeight(10)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getProportionalWidth(15)),
              child: PieChart(
                dataMap: dataMap,
                chartLegendSpacing: getProportionalWidth(15),
                animationDuration: Duration(milliseconds: 500),
                chartRadius: getProportionalWidth(55),
                chartType: ChartType.ring,
                colorList: colorList,
                initialAngleInDegree: 270.0,
                centerText: "2.5H",
                ringStrokeWidth: getProportionalWidth(10),
                legendOptions: LegendOptions(
                  showLegends: false,
                  legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionalWidth(10)),
                  legendPosition: LegendPosition.bottom,
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: CircleAvatar(
                          radius: getProportionalWidth(3),
                          backgroundColor: Colors.teal,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: '목표 운동시간   ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '5시간 '),
                            // TextSpan(text: '/ 일주일\n'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: CircleAvatar(
                          radius: getProportionalWidth(3),
                          backgroundColor: kBackgroundColorMain,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: '실제 운동시간   ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '2시간 30분 '),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: CircleAvatar(
                          radius: getProportionalWidth(3),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: '남은 운동시간   ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '5시간 '),
                            // TextSpan(text: '/ 일주일\n'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
