import 'package:flutter/material.dart';

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
              AccountListTile(
                  onTap: null,
                  text: 'My Account Setings',
                  icon: Icons.person_outline),
              AccountListTile(
                  onTap: () {}, text: 'Self Help', icon: Icons.attach_file),
              AccountListTile(
                  onTap: null, text: 'Add Your BVN', icon: Icons.lock_outline),
              AccountListTile(
                  onTap: null, text: 'Refer & Eran 1,000', icon: Icons.share),
              AccountListTile(
                  onTap: null,
                  text: 'Withdraw Funds',
                  icon: Icons.attach_money),
              AccountListTile(
                  onTap: null,
                  text: 'My Card & Bank Setings',
                  icon: Icons.credit_card),
              AccountListTile(
                  onTap: null,
                  text: 'View PiggyVest Library',
                  icon: Icons.bookmark),
              AccountListTile(
                  onTap: null, text: 'Contact US', icon: Icons.call),
              AccountListTile(
                  onTap: null,
                  text: 'log Out',
                  icon: Icons.forward,
                  icon2: Icons.navigate_next),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget AccountListTile(
    {Function onTap, IconData icon, IconData icon2, String text}) {
  return Column(
    children: <Widget>[
      SizedBox(height: 15),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: ListTile(
          onTap: onTap,
          leading: Icon(icon),
          title: Text(text),
          trailing: Icon(icon2),
        ),
      ),
    ],
  );
}
