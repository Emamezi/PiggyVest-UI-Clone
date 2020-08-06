import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/notifier/dark_theme_provider.dart';
import 'package:practiceapp/views/account_settings_view.dart';
import 'package:practiceapp/widgets/aoount_listtile.dart';
import 'package:provider/provider.dart';
import 'package:practiceapp/utils/styles.dart';

class AccountView extends StatefulWidget {
  static const String routeName = 'account';
  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
    return accountBodyView(themeProvider, context);
  }

  Widget accountBodyView(
      DarkThemeProvider themeProvider, BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: Container(
        // color: ,
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('My Account', style: Styles.kAccountHeadingtextStyle),
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
                  // activeColor: Theme.of(context).indicatorColor,
                  value: true,
                  onChanged: (val) {},
                  title: Text('Enable Finger Print/Face ID'),
                ),
                SwitchListTile(
                  activeColor: Theme.of(context).indicatorColor,
                  value: true,
                  onChanged: (val) {},
                  title: Text('Show Dashboard Account Balances'),
                ),
                SwitchListTile(
                  // activeColor: Theme.of(context).indicatorColor,
                  value: themeProvider.getTheme,
                  onChanged: (bool value) {
                    themeProvider.darkTheme = value;
                  },
                  title: Text('Enable Dark Mode'),
                ),
                AccountListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => AccountSettingsView()));
                    },
                    text: 'My Account Setings',
                    icon: Icons.person_outline),
                AccountListTile(
                    onTap: () {}, text: 'Self Help', icon: Icons.attach_file),
                AccountListTile(
                    onTap: null,
                    text: 'Add Your BVN',
                    icon: Icons.lock_outline),
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
                  onTap: null,
                  text: 'Contact US',
                  icon: FontAwesomeIcons.phoneAlt,
                ),
                AccountListTile(
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
      ),
    );
  }
}
