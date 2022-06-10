import 'package:flutter/material.dart';

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
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
          height: 30.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                  child: const Image(
                image: AssetImage('assets/images/icons/todayDeals.png'),
              )),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/chiken.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/fish.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/mutton.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/readyToCook.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/prawns.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/coldCuts.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/spreads.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/eggs.png'))
              ]),
              Column(children: [
                Image(
                    image: AssetImage('assets/images/icons/kebabs&Tandoor.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/combos.png'))
              ]),
              Column(children: [
                Image(
                    image: AssetImage('assets/images/icons/lunchboxSpeci.png'))
              ]),
              Column(children: [
                Image(image: AssetImage('assets/images/icons/readyToCook.png'))
              ]),

              // Column(width: 95, child: Text('Today´s deals')),
              // Column(width: 55, child: Text('Chiken')),
              // Column(width: 95, child: Text('Fish & Seafood')),
              // Column(width: 95, child: Text('Mutton')),
              // Column(width: 95, child: Text('Ready to Cook')),
              // Column(width: 95, child: Text('Prawns')),
              // Column(width: 95, child: Text('Cold Cuts')),
              // Column(width: 95, child: Text('Spreads')),
              // Column(width: 95, child: Text('Eggs')),
              // Column(width: 95, child: Text('Kebabs & Tandoor')),
              // Column(width: 95, child: Text('Combos')),
              // Column(width: 95, child: Text('Lunchbox Speci')),
              // Column(width: 95, child: Text('Snacks')),
            ],
          ),
        )
      ]),
    );
  }
}
