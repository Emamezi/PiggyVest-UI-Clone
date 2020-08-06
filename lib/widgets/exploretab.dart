import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/widgets/investment_gridview.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            height: 55,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.search),
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13),
                ),
                filled: true,
                labelText: 'Search for investments',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1.0,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          InvestmentGridView(),
        ],
      ),
    );
  }
}
