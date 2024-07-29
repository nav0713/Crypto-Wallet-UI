import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:invest/colors.dart';
import 'package:invest/screens/dashboard/data.dart';

class DetailChar extends StatelessWidget {
  final String title;
  final String subTitle;
  const DetailChar({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 6,),
             Text(subTitle,style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Entypo.left_open),),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Entypo.heart_empty))],
      ),

      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$ 172,72',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '+\$ 3.29 . 1,94%',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: black,
                      child: const Icon(
                        Entypo.chart_line,
                        color: Colors.white,
                        size: 14,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              )
            ],
          ),
          SizedBox(
              height: 280,
              width: double.infinity,
              child: Sparkline(
                data: detailData,
                averageLine: true,
                averageLabel: true,
                useCubicSmoothing: true,
                cubicSmoothingFactor: 0.2,
                lineWidth: 2,
              )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                    color: blue.withOpacity(.5),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Filter(text: '1D'),
                    const Filter(text: '1W'),
                    const Filter(text: '3M'),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(25),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset.zero,
                                  blurRadius: 20)
                            ]),
                        child: const Filter(text: '6M')),
                    const Filter(text: '1Y'),
                    const Filter(text: 'All')
                  ],
                )),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text('About the company',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            child: Text.rich(
                style: const TextStyle(fontWeight: FontWeight.w400),
                TextSpan(children: [
                  TextSpan(
                      text:
                          "Apple Inc. is an American multinational corporation and technology company headquartered in Cupertino Calfornia",style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16)),
                  const TextSpan(
                      text: ' ...more', style: TextStyle(color: Colors.blue))
                ])),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: black,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sell',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: black)),
                        onPressed: () {},
                        child: const Text(
                          'Buy',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class Filter extends StatelessWidget {
  final String text;
  const Filter({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }
}
