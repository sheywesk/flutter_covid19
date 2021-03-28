import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String data;

  const CardWidget({Key key, this.color, this.icon, this.title, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle whiteText = TextStyle(color: Colors.white);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      icon,
                      color: Colors.white,
                    ),
                    title: Text(
                      title,
                      style: whiteText.copyWith(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      data,
                      style: whiteText.copyWith(
                          fontWeight: FontWeight.w300, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
