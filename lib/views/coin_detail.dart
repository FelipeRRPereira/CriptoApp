import 'package:cripto_app/components/coin_card.dart';
import 'package:cripto_app/components/news.dart';
import 'package:flutter/material.dart';

class CoinDetail extends StatelessWidget {
  final String title;
  final Color color;
  final String name;
  final String value;
  final String percentage;
  const CoinDetail({
    Key key,
    @required this.title,
    @required this.color,
    @required this.name,
    @required this.value,
    @required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
        title: Text(
          this.title,
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
                        CoinCardDetail(
                          name: this.name,
                          value: this.value,
                          percentage: this.percentage,
                          color: this.color,
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
                                    height: 330,
                                    child: ListView(
                                      children: <Widget>[
                                        News(
                                          description:
                                              'CME Report: Bitcoin Futures Average Daily Volume up 93% in Second Quarter',
                                          date: '14:30 pm 10 July 2020',
                                          image: Image.asset(
                                            'images/person_chart.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'Bitcoin ETF Decision Gets an Overwhelming Amount of Public Opinion',
                                          date: '17:29 pm 10 July 2020',
                                          image: Image.asset(
                                            'images/coins.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'MasterCard applied for a payment system that combines blockchain and fi payments',
                                          date: '11:08 am 9 July 2020',
                                          image: Image.asset(
                                            'images/master_coins.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'The \$ 40 million bitcoin hack that never happened',
                                          date: '14:30 pm 8 July 2020',
                                          image: Image.asset(
                                            'images/smartphone.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        News(
                                          description:
                                              'CME Report: Bitcoin Futures Average Daily Volume up 93% in Second Quarter',
                                          date: '14:30 pm 10 July 2020',
                                          image: Image.asset(
                                            'images/person_chart.png',
                                            fit: BoxFit.fitHeight,
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

class CoinCardDetail extends StatelessWidget {
  final String name;
  final String value;
  final String percentage;
  final Color color;
  const CoinCardDetail({
    Key key,
    @required this.name,
    @required this.value,
    @required this.percentage,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        color: this.color,
        child: Container(
          margin: EdgeInsets.only(bottom: 30.0),
          child: Column(
            children: <Widget>[
              CoinCard(
                icon: null,
                name: this.name,
                value: this.value,
                percentage: this.percentage,
                color: this.color,
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
    );
  }
}
