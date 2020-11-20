import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';

class RecommandPlantCard extends StatelessWidget {
  final String assertUrl;
  final String name;
  final String location;
  final String price;
  final Function onPressed;
  const RecommandPlantCard(
      {Key key,
      @required this.assertUrl,
      @required this.name,
      @required this.location,
      @required this.price,
      @required this.onPressed
      // @required this.size,
      })
      : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      child: Column(children: [
        Image.asset(assertUrl),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.only(
                left: kDefaultPadding / 2,
                top: kDefaultPadding / 2,
                right: kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            width: size.width * 0.4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$name\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: "$location\n".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                ])),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
