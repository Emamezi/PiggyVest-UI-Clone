import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final IconData icon2;
  final Color color2;
  final String text;
  final Color color1;
  AccountListTile(
      {this.color1, this.color2, this.icon, this.icon2, this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
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
}
