import 'package:cripto_app/components/coin_card.dart';
import 'package:cripto_app/components/news.dart';
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Card(
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
                                  Image.asset(
                                    'images/ic_chart.png',
                                    width: 320,
                                    height: 70,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: constaints.maxWidth,
                            padding: EdgeInsets.only(top: 15.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          'NEWS',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(26, 26, 37, 0.5),
                                            fontSize: 16.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 340,
                                    child: ListView(
                                      children: <Widget>[
                                        News(
                                          description:
                                              'CME Report: Bitcoin Futures Average Daily Volume up 93% in Second Quarter',
                                          date: '14:30 pm 10 July 2020',
                                          image: Image.asset(
                                            'images/person_chart.png',
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'Bitcoin ETF Decision Gets an Overwhelming Amount of Public Opinion',
                                          date: '17:29 pm 10 July 2020',
                                          image: Image.asset(
                                            'images/coins.png',
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'MasterCard applied for a payment system that combines blockchain and fi payments',
                                          date: '11:08 am 9 July 2020',
                                          image: Image.asset(
                                            'images/person_chart.png',
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'The \$ 40 million bitcoin hack that never happened',
                                          date: '14:30 pm 8 July 2020',
                                          image: Image.asset(
                                            'images/person_chart.png',
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
