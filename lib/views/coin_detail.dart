import 'package:cripto_app/components/coin_card.dart';
import 'package:flutter/material.dart';

class CoinDetail extends StatelessWidget {
  const CoinDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Text(
          'Bitcoin',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.show_chart),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constaints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constaints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: Colors.deepPurple[800],
                    width: constaints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          color: Color.fromRGBO(245, 49, 127, 1),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            width: constaints.maxWidth,
                            child: Column(
                              children: <Widget>[
                                CoinCard(
                                  icon: null,
                                  name: 'BTC Bitcoin',
                                  value: '\$6687.49',
                                  percentage: '6.34',
                                  color: Color.fromRGBO(245, 49, 127, 1),
                                  elev: 0.0,
                                ),
                                Image(
                                  image: AssetImage('images/ic_chart.png'),
                                  width: 278,
                                  height: 62,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromRGBO(245, 49, 127, 1),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            width: constaints.maxWidth,
                            child: Column(
                              children: <Widget>[
                                CoinCard(
                                  icon: null,
                                  name: 'BTC Bitcoin',
                                  value: '\$6687.49',
                                  percentage: '6.34',
                                  color: Color.fromRGBO(245, 49, 127, 1),
                                  elev: 0.0,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
