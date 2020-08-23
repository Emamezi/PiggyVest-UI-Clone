import 'package:flutter/material.dart';
import 'package:practiceapp/views/account_settings_view.dart';
import 'package:practiceapp/views/savings_view.dart';
import 'package:practiceapp/widgets/buttonfield.dart';
import 'package:practiceapp/widgets/wrapper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const KBodyTextTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

final ValueNotifier<int> indexNotifier = ValueNotifier(0);
final List<String> tab = ['All', 'Credit', ' Debits'];

class PiggyBankView extends StatelessWidget {
  static const routeName = 'piggybank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
            semanticLabel: 'Back button',
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, SavingsView.routeName);
          },
        ),
        actions: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).primaryColor,
            size: 20.0,
          ),
        ],
      ),
      // bottomNavigationBar: Wrapper(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Piggybankbalance (10%)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$2225.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Build your savings dailu, weekly or monthly',
                        style: KBodyTextTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PiggyContainer(),
                  SizedBox(width: 15),
                  PiggyContainer(),
                ],
              ),
              ButtonField(
                title: 'QUICK SAVE',
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                borderColor: Theme.of(context).primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                    'Your next AutoSave deposit is on Monaday 23rd August 2020 by 12:00:00 PM. Tap to disable',
                    textAlign: TextAlign.center,
                    style: KBodyTextTextStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickSaveOptions(
                    icon: FontAwesomeIcons.percentage,
                    text: 'Interests',
                  ),
                  QuickSaveOptions(
                    icon: FontAwesomeIcons.landmark,
                    text: 'Withdraw',
                  ),
                  QuickSaveOptions(
                    icon: Icons.settings,
                    text: 'Settings',
                  )
                ],
              ),
              SizedBox(height: 50),
              Text(
                'My Transactions',
                style: KBodyTextTextStyle,
                textAlign: TextAlign.right,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ValueListenableBuilder(
                    valueListenable: indexNotifier,
                    builder: (context, currentIndex, _) => Row(
                          children: [
                            for (int index = 0; index < tab.length; index++)
                              Expanded(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: currentIndex == index
                                            ? Radius.circular(5)
                                            : Radius.circular(0)),
                                    border: Border.all(width: 1.0),
                                  ),
                                  child: MaterialButton(
                                      // padding: EdgeInsets.symmetric(vertical: 10),
                                      color: currentIndex == index
                                          ? Colors.grey[400]
                                          : Colors.white,
                                      child: Text(
                                        tab[index],
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      onPressed: () {
                                        indexNotifier.value = index;
                                      }),
                                ),
                              )
                          ],
                        )),
              ),
              SizedBox(height: 500),
              BottomButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

class QuickSaveOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  const QuickSaveOptions({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: KBodyTextTextStyle,
        ),
      ],
    );
  }
}

class PiggyContainer extends StatelessWidget {
  const PiggyContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
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
    );
  }
}

Widget BottomButton(BuildContext context) {
  return Container(
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
      child: Text('VIEW MORE',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          )),
    ),
  );
}
