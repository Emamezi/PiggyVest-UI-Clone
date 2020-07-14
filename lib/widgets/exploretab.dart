import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp/model/investment_dummydata.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 60,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.search),
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(13),
              ),
              filled: true,
              labelText: 'Search for Investments',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1.0,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
        Container(
          height: 700,
          child: GridView.builder(
              itemCount: investmentData.length,
              physics: ScrollPhysics(
                parent: NeverScrollableScrollPhysics(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // childAspectRatio: 1.5,
              ),
              itemBuilder: (builder, i) => ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Container(
                      // height: 600,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            investmentData[i].image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 100,
                          ),
                          Container(
                            // height: 500,
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  investmentData[i].title,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            investmentData[i].price.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Per farm share')
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            investmentData[i]
                                                .investors
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Iinvestors')
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
