import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String description;
  final String date;
  final Image image;
  const News({
    Key key,
    @required this.description,
    @required this.date,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 5.0, left: 0.0),
      elevation: 0.4,
      child: ListTile(
        leading: this.image,
        title: Text(
          this.description,
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
          maxLines: 4,
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.access_time,
              color: Color.fromRGBO(125, 129, 136, 1),
              size: 16.0,
            ),
            Text(
              this.date,
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(125, 129, 136, 1),
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
