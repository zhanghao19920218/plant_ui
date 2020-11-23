import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 62,
                        width: 62,
                        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                        padding: const EdgeInsets.all(kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-15, -15),
                              blurRadius: 60,
                              color: kPrimaryColor.withOpacity(0.29)
                            )
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/sun.svg"),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63)
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29)
                    )
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png")
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
