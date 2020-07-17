import 'package:flutter/material.dart';
import 'package:practiceapp/model/investment_dummydata.dart';

const kInvestmentGidTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 18);

class InvestmentGridView extends StatelessWidget {
  const InvestmentGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: investmentData.length,
        physics: ScrollPhysics(
          parent: NeverScrollableScrollPhysics(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, i) => Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      investmentData[i].image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(investmentData[i].title,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: kInvestmentGidTextStyle),
                        RichText(
                          text: TextSpan(text: '12%', children: [
                            TextSpan(text: 'Returns in 9 momths')
                          ]),
                        ),
                        // SizedBox(height: 15),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  investmentData[i].price.toString(),
                                  style: kInvestmentGidTextStyle,
                                ),
                                FittedBox(
                                    child: Text(
                                  'Per farm share',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ))
                              ],
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  investmentData[i].investors.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Investors',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Chip(
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          label: Text('Sold out'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
