import 'package:flutter/material.dart';
import 'package:practiceapp/views/app_view.dart';
import '../views/account_view.dart';
import '../views/home_view.dart';
import '../views/invest_view.dart';
import '../views/savings_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedViewIndex = 0;
  final List<Widget> _screens = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AppView(),
    AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedViewIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        currentIndex: _selectedViewIndex,
        backgroundColor: Theme.of(context).backgroundColor,
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).iconTheme.color,
        elevation: 5.0,
        // selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              // size: 20,
              color: _selectedViewIndex == 0
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).iconTheme.color,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            // Icons.track_changes
            icon: Icon(
              FontAwesomeIcons.podcast,
              // size: 20,
              color: _selectedViewIndex == 1
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).iconTheme.color,
            ),
            title: Text('Savings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.rocket,
              // size: 20,
              color: _selectedViewIndex == 2
                  ? Theme.of(context).accentColor
                  : Theme.of(context).iconTheme.color,
            ),
            title: Column(
              children: <Widget>[
                Text('Invest'),
                if (_selectedViewIndex == 2)
                  Text(
                    '●',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cube,
              // size: 20,
              color: _selectedViewIndex == 3
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).iconTheme.color,
            ),
            title: Column(
              children: <Widget>[
                Text('App'),
                if (_selectedViewIndex == 3)
                  Text(
                    '●',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userTie,
              // size: 20,
              color: _selectedViewIndex == 4
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).iconTheme.color,
            ),
            title: Column(
              children: <Widget>[
                Text('Account'),
                if (_selectedViewIndex == 4)
                  Text(
                    '●',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
              ],
            ),
            // activeIcon: Column(
            //   children: <Widget>[
            //     Icon(Icons.golf_course, size:40, color:Colors.blue[900]),
            //     // Text('Home'),
            //     Icon(Icons.donut_large),
            //   ],
            // )
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedViewIndex = index;
          });
        },
      ),
    );
  }
}
