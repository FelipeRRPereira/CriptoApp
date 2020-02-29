import 'package:cripto_app/components/coin_card.dart';
import 'package:cripto_app/components/financial_summary.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 50.0,
                    horizontal: 20.0,
                  ),
                  child: FinancialSummary(
                    title: 'BALANCE',
                    constaints: constaints,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                    color: Colors.deepPurple[800],
                    height: 30,
                    width: constaints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Your Coins',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Icon(
                              Icons.add_circle_outline,
                              size: 24.0,
                              color: Color.fromRGBO(42, 245, 152, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: Colors.deepPurple[800],
                    width: constaints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CoinCard(
                          icon: Image.asset('images/ic_btc.png'),
                          name: 'BTC Bitcoin',
                          value: '\$6687.49',
                          percentage: '6.34',
                          color: Color.fromRGBO(245, 49, 127, 1),
                        ),
                        CoinCard(
                          icon: Image.asset('images/ic_eth.png'),
                          name: 'ETH Ethereum',
                          value: '\$3587.25',
                          percentage: '18.02',
                          color: Color.fromRGBO(135, 57, 229, 1),
                        ),
                        CoinCard(
                          icon: Image.asset('images/ic_ltc.png'),
                          name: 'LTC Litecoin',
                          value: '\$187.49',
                          percentage: '51.34',
                          color: Color.fromRGBO(229, 99, 54, 1),
                        ),
                        CoinCard(
                          icon: Image.asset('images/ic_xrp.png'),
                          name: 'XRP Ripple',
                          value: '\$0.49',
                          percentage: '594K',
                          color: Color.fromRGBO(165, 233, 74, 1),
                        ),
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