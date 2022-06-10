import 'package:flutter/cupertino.dart';

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
    return Stack(children: [
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
      // Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //       height: 220,
      //       margin: const EdgeInsets.only(left: 30, right: 10),
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30),
      //           color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
      //           image: const DecorationImage(
      //               fit: BoxFit.cover,
      //               image: AssetImage("assets/images/small_banner1.png")))),
      // )
    ]);
  }
}
