import 'package:flutter/material.dart';
import 'package:food_flutter/constants.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/screens/detail/detail_screen.dart';
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
          ListTile(
            title: Text(
              "Detail",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.routeName);
              context.read<DrawerNotifier>().setDrawer(false);
            },
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              "Menu 2",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              "Menu 3",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              "Menu 4",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              "Menu 5",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
