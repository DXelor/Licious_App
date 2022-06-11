import 'package:flutter/material.dart';
import 'package:licious/widgets/list_items.dart';

import '../utils/colors.dart';
import '../widgets/main_text.dart';
import '../widgets/secondary_text.dart';

class FoodPageHeader extends StatelessWidget {
  const FoodPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      margin: const EdgeInsets.only(top: 32),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              MainText(
                text: "Japan",
                color: AppColors.mainColor,
                size: 30,
              ),
              Row(
                children: [
                  SecondaryText(
                    text: 'Tokio',
                    color: Colors.black54,
                  ),
                  Icon(Icons.arrow_drop_down_rounded)
                ],
              )
            ],
          ),
          Center(
            child: Container(
              width: 105,
              height: 43,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/licious_logo.png"))),
            ),
          ),
          Center(
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor),
              child: const Icon(Icons.search),
            ),
          )
        ]),
        const ListviewScreen()
      ]),
    );
  }
}
