import 'package:flutter/material.dart';
import 'package:practiceapp/widgets/options_container.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;
  // final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: deviceSize.width - 20,
      addSemanticIndexes: true,
      // semanticChildCount: 3,
      // dragStartBehavior: DragStartBehavior.start,
      children: <Widget>[
        OptionsContainer(
          color: Theme.of(context).primaryColor,
          icons: Icons.verified_user,
          iconColor: Colors.white,
          text1: 'Total Savings',
          text2: '400,000',
        ),
        OptionsContainer(
          color: Colors.deepPurple,
          icons: Icons.trending_up,
          iconColor: Colors.white,
          text1: 'Total Investments',
          text2: '50,000',
        ),
        OptionsContainer(
          color: Colors.black,
          icons: Icons.attach_money,
          iconColor: Colors.white,
          text1: 'Flex Dollar',
          text2: '4,000',
        ),
        OptionsContainer(
          color: Colors.white,
          icons: Icons.local_movies,
          iconColor: Colors.pink,
          text1: 'Flex Naira',
          text2: '\$1,000',
        ),
      ],
    );
  }
}
