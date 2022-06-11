import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const [
    'today deals',
    'Chiken',
    'Fish & Seafood',
    'Mutton',
    'Ready to Cook',
    'Prawns',
    'Cold Cuts',
    'Spreads',
    'Eggs',
    'Kebabs & Tandoor',
    'Combos',
    'Lunchbox Speci',
    'Snacks'
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
              .map((game) => Column(
                    children: [
                      Text(game),
                      Image.asset(
                        'assets/images/icons/readyToCook.png',
                        width: 40,
                        height: 40,
                      )
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
