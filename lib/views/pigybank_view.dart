import 'package:flutter/material.dart';

class PiggyBankView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
              Icon(
                Icons.error_outline,
                color: Colors.blue,
                size: 30.0,
              ),
            ],
          ),
          Text('My Piggybankbalance (10%)'),
          Text(
            '\$2220',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Text('Build your savings dailu, weekly or monthly'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              ),
            ),
            child: Column(
              children: <Widget>[
                Text('AutoSave Deposit'),
                Row(
                  children: <Widget>[
                    Text('1,000'),
                    Text(
                      'weekly',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          FlatButton(
            child: Text('QuickSave'),
            onPressed: () {
              //Open QuickSave
            },
          ),
          Text(
              'Your next AutoSave deposit is on Monaday 13th Juy 2020 by 12:00:00 PM. Tap to disable'),
        ],
      ),
    );
  }
}
