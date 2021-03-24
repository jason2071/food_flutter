import 'package:flutter/material.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/size_config.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DrawerNotifier drawerNotifier = Provider.of<DrawerNotifier>(context);

    return AnimatedContainer(
      transform: Matrix4.translationValues(
          drawerNotifier.xOffset, drawerNotifier.yOffset, 0)
        ..scale(drawerNotifier.scaleFactor)
        ..rotateY(drawerNotifier.isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius:
            BorderRadius.circular(drawerNotifier.isDrawerOpen ? 40 : 0),
      ),
      child: child,
    );
  }
}
