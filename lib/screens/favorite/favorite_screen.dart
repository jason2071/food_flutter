import 'package:flutter/material.dart';
import 'package:food_flutter/components/custom_container.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = '/favorite';

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Text("FavoriteScreen"),
    );
  }
}
