import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
import 'package:plant_ui/screens/home/components/featured_plants.dart';
import 'package:plant_ui/screens/home/components/header_with_searchbox.dart';
import 'package:plant_ui/screens/home/components/recommands_plants.dart';
import 'package:plant_ui/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //It will provide us total height
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommand", onPress: () {}),
          // it will cover 40% of our total width
          RecommandsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", onPress: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
