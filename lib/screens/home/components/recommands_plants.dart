import 'package:flutter/material.dart';
import 'package:plant_ui/screens/home/components/recommand_plant_card.dart';

class RecommandsPlants extends StatelessWidget {
  const RecommandsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandPlantCard(
            assertUrl: "assets/images/image_1.png",
            name: "Samantha",
            location: "Russia",
            price: "440",
            onPressed: () {},
          ),
          RecommandPlantCard(
            assertUrl: "assets/images/image_2.png",
            name: "Angelica",
            location: "Russia",
            price: "440",
            onPressed: () {},
          ),
          RecommandPlantCard(
            assertUrl: "assets/images/image_3.png",
            name: "Angelica",
            location: "Russia",
            price: "440",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}