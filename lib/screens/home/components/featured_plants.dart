import 'package:flutter/material.dart';
import 'package:plant_ui/screens/home/components/feature_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            assertUrl: "assets/images/bottom_img_1.png",
            onPressed: () {},
          ),
          FeaturePlantCard(
            assertUrl: "assets/images/bottom_img_2.png",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}