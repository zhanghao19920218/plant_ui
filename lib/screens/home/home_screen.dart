import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }


  Widget buildAppBar() {
     return AppBar(
                    elevation: 0,
                    leading: IconButton(
                      icon: SvgPicture.asset("assets/icons/menu.svg"),
                      onPressed: (){},
                    )
                    );
  }
}