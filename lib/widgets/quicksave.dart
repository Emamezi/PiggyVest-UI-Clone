import 'package:flutter/material.dart';

class QuickSave extends StatefulWidget {
  final BuildContext ctx;
  QuickSave(this.ctx);
  @override
  _QuickSaveState createState() => _QuickSaveState();
}

class _QuickSaveState extends State<QuickSave> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isDismissible: false,
          context: context,
          builder: (ctx) => Container(
            height: 700,
            child: Column(
              children: <Widget>[
                Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text(
                        'BACK',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text(
                        'CLOSE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    // height: deviceSize.height - 300,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'QuickSave',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text('Enter an amount and a destination to save to')
                      ],
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



//  Text('Tap here & enter... (e.g 5000)'),
//                           TextField(
//                             decoration: InputDecoration(
//                               labelText: 'Tap here & enter... (e.g 5000)'
//                             ),
//                           ),