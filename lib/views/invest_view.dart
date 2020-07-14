import 'package:flutter/material.dart';
import 'package:practiceapp/widgets/buttonfield.dart';
import 'package:practiceapp/widgets/exploretab.dart';

class InvestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 60,
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
        Container(
          // color: Colors.blue,
          height: deviceSize.height - 400,
          child: DefaultTabController(
            length: 3,
            child: SizedBox(
              // height: 200,
              child: Column(
                children: <Widget>[
                  Container(
                    height: deviceSize.height * 0.05,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(width: 0.5, style: BorderStyle.solid),
                      ),
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Text('Active'),
                        Text('Explore'),
                        Text('Mature'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ActiveTabDisplay(),
                        ExploreTab(),
                        ActiveTabDisplay(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ActiveTabDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              'Start Investing!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Start investing in verified opportunities. Lets help you get Started,',
            textAlign: TextAlign.center,
          ),
          ButtonField(
            title: 'INVEST NOW',
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).buttonColor,
            borderColor: Theme.of(context).accentColor,
          ),
          ButtonField(
            title: 'LEARN MORE',
            borderColor: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
