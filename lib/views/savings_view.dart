import 'package:flutter/material.dart';
import 'package:practiceapp/model/product.dart';

class SavingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   mainAxisSize: MainAxisSize.max,
          //   children: <Widget>[
          //     Text(
          //       'Savings',
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 40,
          //       ),
          //     ),
          //     Icon(
          //       Icons.error_outline,
          //       color: Colors.blue,
          //       size: 30.0,
          //     )
          //   ],
          // ),
          // Text(
          //   '40000.00',
          //   style: TextStyle(
          //       color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          // ),
          // SizedBox(height: 15),
          // Container(
          //   height: deviceSize.height * 0.16,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.black,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          // ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
