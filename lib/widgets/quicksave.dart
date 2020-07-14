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
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        BottomSheet(
            onClosing: null,
            builder: (ctx) => Container(
                  // height: 1400,
                  color: Colors.teal,
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
                          height: 1200,
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                          ),
                          child: SingleChildScrollView(
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
                                ButtonField(
                                  title: 'PROCEED',
                                  borderColor: Theme.of(context).primaryColor,
                                  textColor: Theme.of(context).buttonColor,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
        // showModalBottomSheet(
        //   backgroundColor: Colors.transparent,
        //   isDismissible: false,
        //   context: context,
        //   builder: (ctx) => Container(
        //     // height: 1400,
        //     color: Colors.teal,
        //     child: Column(
        //       children: <Widget>[
        //         Row(
        //           // mainAxisSize: MainAxisSize.max,
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: <Widget>[
        //             FlatButton(
        //               onPressed: () {
        //                 Navigator.of(ctx).pop();
        //               },
        //               child: Text(
        //                 'BACK',
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //             FlatButton(
        //               onPressed: () {
        //                 Navigator.of(ctx).pop();
        //               },
        //               child: Text(
        //                 'CLOSE',
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Expanded(
        //           child: Container(
        //             height: 1200,
        //             padding: EdgeInsets.all(20),
        //             width: double.infinity,
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.only(
        //                 topRight: Radius.circular(30),
        //                 topLeft: Radius.circular(30),
        //               ),
        //             ),
        //             child: SingleChildScrollView(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: <Widget>[
        //                   Text(
        //                     'QuickSave',
        //                     style: TextStyle(
        //                       color: Theme.of(context).primaryColor,
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 30,
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Text('Enter an amount and a destination to save to'),
        //                   QuickSaveOption(
        //                     heading: 'Tap here & enter... (e.g 5000)',
        //                     labelText: 'Tap here & enter... (e.g 5000)',
        //                   ),
        //                   QuickSaveOption(
        //                     heading: 'Choose a Destination',
        //                     labelText: 'My Piggybank -72.00',
        //                   ),
        //                   ButtonField(
        //                     title: 'PROCEED',
        //                     borderColor: Theme.of(context).primaryColor,
        //                     textColor: Theme.of(context).buttonColor,
        //                     color: Theme.of(context).primaryColor,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // );
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
