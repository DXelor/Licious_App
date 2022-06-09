import 'package:flutter/material.dart';
import 'package:licious/screens/licious_page_body.dart';
import 'package:licious/utils/colors.dart';
import 'package:licious/widgets/main_text.dart';
import 'package:licious/widgets/secondary_text.dart';

class MainLicious extends StatefulWidget {
  const MainLicious({Key? key}) : super(key: key);

  @override
  State<MainLicious> createState() => _MainLiciousState();
}

class _MainLiciousState extends State<MainLicious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                      child: const Icon(Icons.search),
                    ),
                  )
                ]),
          ),
        ),
        FoodPageBody()
      ],
    ));
  }
}
