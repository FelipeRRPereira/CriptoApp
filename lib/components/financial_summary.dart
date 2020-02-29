import 'package:flutter/material.dart';

class FinancialSummary extends StatelessWidget {
  final BoxConstraints constaints;
  final String title;

  const FinancialSummary({
    Key key,
    @required this.constaints,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[800],
      height: 120,
      width: this.constaints.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
          ),
          Text(
            '\$100.250.185,36',
            style: TextStyle(
              fontSize: 34.0,
              color: Color.fromRGBO(255, 255, 255, 1.0),
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Icon(
              Icons.expand_less,
              size: 16.0,
              color: Color.fromRGBO(42, 245, 152, 1),
            ),
            Text(
              '28.6%',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromRGBO(42, 245, 152, 1),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
