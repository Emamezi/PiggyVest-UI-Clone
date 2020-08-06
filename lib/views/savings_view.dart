import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/model/products.dart';
import 'package:practiceapp/views/invest_view.dart';
import 'package:practiceapp/widgets/wrapper.dart';

class SavingsView extends StatelessWidget {
  static const String routeName = 'saving';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return
        // Scaffold(
        //   bottomNavigationBar: Wrapper(),
        //   body:
        Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
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
                        '****',
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
            Wrap(
              children: products
                  .map(
                    (prod) => InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .popAndPushNamed(InvestView.routeName);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.6, vertical: 6.0),
                        width: deviceSize.width * 0.42,
                        height: deviceSize.height * 0.25,
                        decoration: BoxDecoration(
                          color: prod.color,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                prod.icon,
                                color: prod.color2,
                              ),
                              Text(
                                prod.title1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: prod.color2,
                                ),
                              ),
                              Text(
                                prod.title2,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text('****'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ]),
    );
  }
}
