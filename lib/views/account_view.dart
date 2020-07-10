import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Emamezi Ebebeinwe',
                style: TextStyle(
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SwitchListTile(
                value: true,
                onChanged: (val) {},
                title: Text('Enable Finger Print/Face ID'),
              ),
              SwitchListTile(
                value: true,
                onChanged: (val) {},
                title: Text('Show Dashboard Account Balances'),
              ),
              SwitchListTile(
                value: false,
                onChanged: (val) {},
                title: Text('Enable Dark Mode'),
              ),
              accountListTile(
                  onTap: null,
                  text: 'My Account Setings',
                  icon: Icons.person_outline),
              accountListTile(
                  onTap: () {}, text: 'Self Help', icon: Icons.attach_file),
              accountListTile(
                  onTap: null, text: 'Add Your BVN', icon: Icons.lock_outline),
              accountListTile(
                  onTap: null, text: 'Refer & Eran 1,000', icon: Icons.share),
              accountListTile(
                  onTap: null,
                  text: 'Withdraw Funds',
                  icon: Icons.attach_money),
              accountListTile(
                  onTap: null,
                  text: 'My Card & Bank Setings',
                  icon: Icons.credit_card),
              accountListTile(
                  onTap: null,
                  text: 'View PiggyVest Library',
                  icon: Icons.bookmark),
              accountListTile(
                onTap: null,
                text: 'Contact US',
                icon: FontAwesomeIcons.phoneAlt,
              ),
              accountListTile(
                  onTap: null,
                  text: 'log Out',
                  color1: Theme.of(context).errorColor,
                  icon: FontAwesomeIcons.signOutAlt,
                  color2: Colors.redAccent,
                  icon2: Icons.navigate_next),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget accountListTile(
    {Function onTap,
    IconData icon,
    IconData icon2,
    Color color2,
    String text,
    Color color1}) {
  return Column(
    children: <Widget>[
      SizedBox(height: 15),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: ListTile(
          onTap: onTap,
          leading: Icon(
            icon,
            color: color2,
          ),
          title: Text(
            text,
            style: TextStyle(color: color1),
          ),
          trailing: Icon(icon2),
        ),
      ),
    ],
  );
}
