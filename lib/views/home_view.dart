import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/widgets/options_listview.dart';
import 'package:practiceapp/widgets/quicksave.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: QuickSave(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Emamezi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text('Good morning, wash your hands ⛅️'),
              SizedBox(height: 20),
              Container(
                height: deviceSize.height * 0.16,
                width: double.infinity,
                color: Colors.transparent,
                child: OptionsListView(deviceSize: deviceSize),
              ),
              SizedBox(height: 30),
              Text('WATCH THE LAST OPENHOUSE 🤓'),
              SizedBox(
                height: 150,
              ),
              Text('T0-DO-LIST'),
              buildInfoContainer(
                  'Get Piggybank Savings Interest for May',
                  'Tap to earn interest on your Piggybank Savings for June',
                  FontAwesomeIcons.gift,
                  context),
              buildInfoContainer(
                  'Stay Informed: COVID-19',
                  'Get the latest Information directly from the NCDC about coronavirus in Nigeria',
                  FontAwesomeIcons.chartLine,
                  context),
              buildInfoContainer(
                  'See you urecent activities',
                  'See your most recent activity on PiggyVest',
                  FontAwesomeIcons.thumbsUp,
                  context),
              buildInfoContainer(
                  'Create a Safelock',
                  'Avoid spending temptations.Tap to create a safelock',
                  FontAwesomeIcons.lock,
                  context),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoContainer(
    String text1, text2, IconData icon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.width * 0.99,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        border: Border.all(
          width: 1.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 30.0,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    // overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    // softWrap: true,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    text2,
                    softWrap: true,
                    textAlign: TextAlign.left,
                    // overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 13,
                      // decoration: TextDecoration.
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
