import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:invest/colors.dart';
import 'package:invest/screens/dashboard/data.dart';
import 'package:invest/screens/dashboard/widgets/minichart.dart';
import 'package:invest/screens/dashboard/widgets/stock.dart';
import 'package:invest/screens/detail.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(LineariconsFree.magnifier),
                  Icon(LineariconsFree.mic)
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Featured Investments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Stock(
                    name: 'Apple Inc.',
                    icon: FontAwesome5.apple,
                    subTitle: 'APPL',
                    color: blue,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stock(
                    name: 'Microsoft.',
                    icon: FontAwesome5.microsoft,
                    subTitle: 'MSFT',
                    color: purple,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stock(
                    name: 'Amazon',
                    icon: FontAwesome5.amazon,
                    subTitle: 'NASDAQ:AMZ',
                    color: pink,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Portfolio",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: black, borderRadius: BorderRadius.circular(25)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Countup(separator: ',',
                  prefix: '\$',
                    begin: 0,
                    end: 1023445,
                    duration: const Duration(seconds: 2),
                    style: const TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const FittedBox(
                      child: Text(
                    '\$ 1 435. 34 . 7.89%',
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.w500),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const DetailChar(title: 'Apple', subTitle: 'APPL');
                }));
              },
              child: MiniChart(
                icon: FontAwesome5.apple,
                name: "Apple",
                subTitle: 'APPL',
                chartData: char1Data,
                assets: '\$ 169.78',
                liquidation: '+ \$5.3',
                chartColor: Colors.green,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MiniChart(
              icon: FontAwesome5.microsoft,
              name: "Microsoft",
              subTitle: 'MSFT',
              chartData: chart2Data,
              assets: '\$ 169.78',
              liquidation: '+ \$5.3',
              chartColor: Colors.red,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.transparent,
        color: Colors.grey,
        colorSelected: Colors.black,
        paddingVertical: 24,
      ),
    );
  }
}
