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
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: 370,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [Text('Premium'), Text('Produce')],
                      ),
                      Column(
                        children: [
                          Text('World-Class Central'),
                          Text('Production Unit')
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [Text('150 Quality'), Text('Cheks')],
                      ),
                      Column(
                        children: [Text('Delivered Fresh'), Text('Everyday')],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
