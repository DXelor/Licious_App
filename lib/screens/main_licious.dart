import 'package:flutter/material.dart';
import 'package:licious/screens/licious_page_body.dart';
import 'package:licious/screens/licious_page_header.dart';

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
      children: [FoodPageHeader(), FoodPageBanner()],
    ));
  }
}
