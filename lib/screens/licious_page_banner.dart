import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBanner extends StatefulWidget {
  const FoodPageBanner({Key? key}) : super(key: key);

  @override
  State<FoodPageBanner> createState() => _FoodPageBannerState();
}

class _FoodPageBannerState extends State<FoodPageBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 1,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Column(children: [
      Container(
        height: 230,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/small_banner1.png"))),
      ),
      Container(
        height: 40,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                child: Image(
                    image:
                        AssetImage("assets/images/loyalty_licious_logo.png"))),
            Container(
              alignment: Alignment.topLeft,
              child: FloatingActionButton(
                  backgroundColor: Colors.red[700],
                  tooltip: 'Join Now',
                  child: Text(
                    'Join Now',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {}),
            )
          ],
        ),
      ),
    ]);
  }
}