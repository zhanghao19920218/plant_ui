import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard(
      {Key key, @required this.assertUrl, @required this.onPressed})
      : super(key: key);

  final String assertUrl;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(assertUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
