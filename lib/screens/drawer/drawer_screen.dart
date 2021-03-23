import 'package:flutter/material.dart';
import 'package:food_flutter/constants.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatelessWidget {
  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuItem(
            title: "Home",
            press: () {
              context.read<DrawerNotifier>().setCurrendPage(0);
            },
          ),
          Divider(color: Colors.white),
          MenuItem(
            title: "Detail",
            press: () {
              context.read<DrawerNotifier>().setCurrendPage(1);
            },
          ),
          Divider(color: Colors.white),
          MenuItem(
            title: "Menu 3",
            press: () {},
          ),
          Divider(color: Colors.white),
          MenuItem(
            title: "Menu 4",
            press: () {},
          ),
          Divider(color: Colors.white),
          MenuItem(
            title: "Menu 5",
            press: () {},
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
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
      ),
      onTap: press,
    );
  }
}
