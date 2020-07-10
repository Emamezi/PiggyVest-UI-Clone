import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/model/products.dart';

class SavingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return
        // Scaffold(
        //   body:
        Padding(
      padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
      child: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Savings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '40000.00',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ],
                ),
                Icon(
                  Icons.error_outline,
                  color: Colors.blue,
                  size: 30.0,
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: deviceSize.height * 0.16,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Introducing',
                        style: TextStyle(
                          color: Colors.green,
                        )),
                    Text(
                      'Flex Dollar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                Icon(
                  FontAwesomeIcons.dollarSign,
                  size: 70,
                  color: Colors.green,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 600,
            child: GridView(
              physics: ScrollPhysics(
                parent: NeverScrollableScrollPhysics(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: <Widget>[
                ...products
                    .map((prod) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: prod.color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(prod.icon),
                                  Text(prod.title1),
                                  Text(prod.title2),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList()
              ],
            ),
          ),
        ],
      ),
    );
    // );
  }
}
