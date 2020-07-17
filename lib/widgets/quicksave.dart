import 'package:flutter/material.dart';
import 'package:practiceapp/widgets/quicksave_option.dart';

import 'buttonfield.dart';

class QuickSave extends StatefulWidget {
  final BuildContext ctx;
  QuickSave(this.ctx);
  @override
  _QuickSaveState createState() => _QuickSaveState();
}

class _QuickSaveState extends State<QuickSave> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          isDismissible: false,
          context: context,
          builder: (ctx) => Container(
            height: deviceSize.height * 0.8,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    QuickSaveDismissButton(
                      text: 'BACK',
                      ctx: context,
                    ),
                    QuickSaveDismissButton(
                      text: 'CLOSE',
                      ctx: context,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    height: deviceSize.height * 0.8,
                    // padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      primary: true,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 40,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'QuickSave',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                'Enter an amount and a destination to save to'),
                            QuickSaveOption(
                              heading: 'Tap here & enter... (e.g 5000)',
                              labelText: 'Tap here & enter... (e.g 5000)',
                            ),
                            QuickSaveOption(
                              heading: 'Choose a Destination',
                              labelText: 'My Piggybank -72.00',
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 30,
                              ),
                              child: ButtonField(
                                title: 'PROCEED',
                                borderColor: Theme.of(context).primaryColor,
                                textColor: Theme.of(context).buttonColor,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Icon(
        Icons.add,
        size: 40,
      ),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25))),
    );
  }
}

class QuickSaveDismissButton extends StatelessWidget {
  final String text;
  final BuildContext ctx;
  const QuickSaveDismissButton({
    this.text,
    this.ctx,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(ctx).pop();
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
    );
  }
}
