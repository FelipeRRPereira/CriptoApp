import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final Image icon;
  final String name;
  final String value;
  final String percentage;
  final Color color;
  final double elev;

  const CoinCard({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.value,
    @required this.percentage,
    @required this.color,
    @required this.elev,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      elevation: this.elev,
      child: ListTile(
        leading: this.icon,
        title: Text(
          this.name,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          this.value,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
        trailing: Text(
          this.percentage,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}