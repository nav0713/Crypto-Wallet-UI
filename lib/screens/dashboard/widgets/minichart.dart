import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:invest/colors.dart';

class MiniChart extends StatelessWidget {
  final IconData icon;
  final String name;
  final String subTitle;
  final List<double> chartData;
  final String assets;
  final String liquidation;
  final Color chartColor;
  const MiniChart({
    super.key, required this.icon, required this.name, required this.subTitle, required this.chartData, required this.assets, required this.liquidation,required this.chartColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        radius: 28,
        backgroundColor: black,
        child:  Icon(
   icon,
          color: Colors.white,
          size: 28,
        ),
      ),
      const SizedBox(
        width: 16,
      ),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(name,style: const TextStyle(fontWeight: FontWeight.bold),), Text(subTitle,style: const TextStyle(fontSize: 12),)],
      ),
      const Expanded(child: SizedBox()),
      SizedBox(
        width: 60,
        height: 30,
        child: Sparkline(
            lineColor: chartColor, lineWidth: 2, data: chartData),
      ),
      const SizedBox(
        width: 34,
      ),
       Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            assets,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
          liquidation,
            style:  TextStyle(
                color: chartColor,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          )
        ],
      )
    ]);
  }
}
