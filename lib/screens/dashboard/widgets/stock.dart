import 'package:flutter/material.dart';
import 'package:invest/colors.dart';

class Stock extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  final String subTitle;
  const Stock({
    super.key,
    required this.name,
    required this.icon,
    required this.color,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(15), color: color),
      height: 120,
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 42,
            color: black,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w600),
              ),
              Text(subTitle)
            ],
          )
        ],
      ),
    );
  }
}