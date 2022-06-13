import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  // Map<String, dynamic> _options = {
  //   "today deals": {
  //     "name": "today deals",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Chiken": {
  //     "name": "Chiken",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Fish & Seafood": {
  //     "name": "Fish & Seafood",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Mutton": {
  //     "name": "Mutton",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Ready to Cook": {
  //     "name": "Ready to Cook",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Prawns": {
  //     "name": "Prawns",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Cold Cuts": {
  //     "name": "Cold Cuts",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Spreads": {
  //     "name": "Spreads",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Eggs": {
  //     "name": "Eggs",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Kebabs & Tandoor": {
  //     "name": "Kebabs & Tandoor",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Combos": {
  //     "name": "Combos",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Lunchbox Speci": {
  //     "name": "Lunchbox Speci",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  //   "Snacks": {
  //     "name": "Snacks",
  //     "url": "assets/images/icons/todayDeals.png"
  //   },
  // };

  final options = const [
    "assets/images/icons/readyToCook.png",
    "assets/images/icons/chiken.png",
    "assets/images/icons/fish.png",
    "assets/images/icons/mutton.png",
    "assets/images/icons/readyToCook.png",
    "assets/images/icons/prawns.png",
    "assets/images/icons/coldCuts.png",
    "assets/images/icons/spreads.png",
    "assets/images/icons/eggs.png",
    "assets/images/icons/kebabs&Tandoor.png",
    "assets/images/icons/combos.png",
    "assets/images/icons/lunchboxSpeci.png",
    "assets/images/icons/readyToCook.png"
  ];

  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 57.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...options
              .map((url) => Column(
                    children: [
                      Image.asset(
                        url,
                        width: 50,
                        height: 50,
                        scale: 3.2,
                      ),
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}


// Container(
//           margin: const EdgeInsets.symmetric(vertical: 20.0),
//           height: 200.0,
//           child: ListView(
//             // This next line does the trick.
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               Container(
//                 width: 160.0,
//                 color: Colors.red,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.blue,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.green,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.yellow,
//               ),
//               Container(
//                 width: 160.0,
//                 color: Colors.orange,
//               ),
//             ],
//           ),
//         ),


// Container(
//             margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
//             height: 30.0,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: const <Widget>[
//                 ListTile(
//                   title: Text('Today Deals'),
//                   leading: Image(
//                     image: AssetImage('assets/images/icons/todayDeals.png'),
//                   ),
//                 )
//               ],
//             ))
