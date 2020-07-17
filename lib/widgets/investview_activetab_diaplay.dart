import 'package:flutter/material.dart';
import 'package:practiceapp/widgets/buttonfield.dart';

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
