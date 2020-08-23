import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/widgets/aoount_listtile.dart';

class AccountSettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Theme.of(context).buttonColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      bottomNavigationBar: AccountSettingsBottomButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ListView(children: [
          Text(
            'Account Settings',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Theme.of(context).primaryColor),
          ),
          AccountListTile(
            text: 'Profile Settings',
            icon: FontAwesomeIcons.user,
          ),
          AccountListTile(
            text: 'Notification Settings',
            icon: FontAwesomeIcons.bellSlash,
          ),
          AccountListTile(
            text: 'Next of Kin Settings',
            icon: FontAwesomeIcons.smile,
          ),
          AccountListTile(
            text: 'Interest Settings',
            icon: FontAwesomeIcons.percentage,
          ),
          AccountListTile(
            text: 'Password Settings',
            icon: FontAwesomeIcons.keycdn,
          ),
          AccountListTile(
            text: 'BVN Settings',
            icon: FontAwesomeIcons.lock,
          ),
          AccountListTile(
            text: 'My Story',
            icon: FontAwesomeIcons.code,
          ),
          AccountListTile(
            text: 'Update KYC ',
            icon: FontAwesomeIcons.box,
          ),
          AccountListTile(
            text: 'Referal Settings ',
            icon: FontAwesomeIcons.userEdit,
          ),
          AccountListTile(
            text: 'My W.A.E.C Score for 2019 ',
            icon: FontAwesomeIcons.gift,
          ),
        ]),
      ),
    );
  }
}

class AccountSettingsBottomButton extends StatelessWidget {
  const AccountSettingsBottomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border.all(
            width: 0.5,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('CANCEL',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              )),
        ),
      ),
    );
  }
}
