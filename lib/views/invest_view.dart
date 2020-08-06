import 'package:flutter/material.dart';
import 'package:practiceapp/widgets/exploretab.dart';
import 'package:practiceapp/widgets/investview_activetab_diaplay.dart';

final ValueNotifier<int> indexNotifier = ValueNotifier(0);

class InvestView extends StatelessWidget {
  static const String routeName = 'invest';
  final List<String> tabs = ['Active', 'Explore', 'Matured'];
  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    return Material(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 70,
          horizontal: 23,
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Investify',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Icon(
                Icons.error_outline,
                color: Theme.of(context).accentColor,
                size: 30.0,
              )
            ],
          ),
          SizedBox(height: 200),
          ValueListenableBuilder(
              valueListenable: indexNotifier,
              builder: (context, currentIndex, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    for (int index = 0; index < tabs.length; index++)
                      Expanded(
                        child: MaterialButton(
                          color: currentIndex == index
                              ? Theme.of(context).accentColor
                              : Colors.white,
                          child: Text(tabs[index],
                              style: TextStyle(
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              )),
                          onPressed: () {
                            indexNotifier.value = index;
                          },
                        ),
                      )
                  ],
                );
              }),
          ValueListenableBuilder(
              valueListenable: indexNotifier,
              builder: (context, currentIndex, _) {
                if (currentIndex == 0) return ActiveTabDisplay();
                if (currentIndex == 1) return ExploreTab();
                if (currentIndex == 2) return ActiveTabDisplay();
                return Offstage();
              })
        ],
      ),
    );
  }
}
