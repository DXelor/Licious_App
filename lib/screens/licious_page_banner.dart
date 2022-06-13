import 'package:flutter/material.dart';

class FoodPageBanner extends StatefulWidget {
  const FoodPageBanner({Key? key}) : super(key: key);

  @override
  State<FoodPageBanner> createState() => _FoodPageBannerState();
}

class _FoodPageBannerState extends State<FoodPageBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 225,
          child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Center(
                      child: Image(
                          image: AssetImage(
                              "assets/images/loyalty_licious_logo.png"))),
                  Column(
                    children: [
                      FloatingActionButton(
                          elevation: 2,
                          backgroundColor: Colors.red[700],
                          tooltip: 'Join Now',
                          child: const Text(
                            'Join Now',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () => {}),
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 330,
                child: Divider(
                  height: 5,
                  color: Colors.black,
                ),
              ),
              const Center(
                child: Text(
                  'Enjoy unlimited free delivery & perks crafted for true meat lovers',
                  textScaleFactor: 0.8,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Column(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/small_banner1.png"))),
      ),
    ]);
  }
}
