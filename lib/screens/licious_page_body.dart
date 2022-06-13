import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return _liciousWay();
  }
}

Widget _liciousWay() {
  return SizedBox(
    height: 80,
    width: 370,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(child: Text('Premium Produce')),
                      Center(child: Text('World-Class Central Production Unit'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Center(child: Text('150 Quality Cheks')),
                      Center(child: Text('Delivered Fresh Everyday'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Center(child: Text('Extraordinary Cooking'))
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black54,
                      width: 1.0,
                      style: BorderStyle.solid)),
            ),
          ],
        ),
        // Center(child: Text('150 Quality Cheks')),
        // Center(child: Text('Delivered Fresh Everyday')),
        // Center(child: Text('Extraordinary Cooking')),
      ],
    ),
  );
}
