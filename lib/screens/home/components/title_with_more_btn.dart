import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function onPress;

  const TitleWithMoreBtn({
    Key key,
    @required this.title,
    @required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: Text("More", style: TextStyle(color: Colors.white),),
            color: kPrimaryColor,
            onPressed: onPress,
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String text;

  const TitleWithCustomUnderline({Key key, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2)))
          ],
        ));
  }
}
