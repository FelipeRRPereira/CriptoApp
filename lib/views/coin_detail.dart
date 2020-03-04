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
                                  Image(
                                    image: AssetImage('images/ic_chart.png'),
                                    width: 278,
                                    height: 62,
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
                                    padding: const EdgeInsets.only(bottom: 10.0),
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
                                        News(),
                                        News(),
                                        News(),
                                        News(),
                                        News(),
                                        News(),
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

class News extends StatelessWidget {
  const News({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 5.0, left: 0.0),
      elevation: 0.0,
      child: ListTile(
        leading: Image(
          image: AssetImage('images/person_chart.png'),
        ),
        title: Text(
          'CME Report: Bitcoin Futures Average Daily Volume up 93% in Second Quarter',
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.access_time,
              color: Color.fromRGBO(125, 129, 136, 1),
              size: 16.0,
            ),
            Text(
              '14:30 pm 10 July 2020',
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(125, 129, 136, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
