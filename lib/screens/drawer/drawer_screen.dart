import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_flutter/constants.dart';
import 'package:food_flutter/model/menu_model.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatelessWidget {
  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            menuList.length,
            (index) => MenuItem(
              title: menuList[index].title,
              iconSrc: menuList[index].icon,
              press: () {
                context.read<DrawerNotifier>().setCurrendPage(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    @required this.title,
    @required this.press,
    this.iconSrc,
  }) : super(key: key);

  final String title, iconSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconSrc != "" ? SvgPicture.asset(iconSrc) : null,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: press,
    );
  }
}
