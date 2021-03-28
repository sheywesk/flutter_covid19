import 'package:covid19/ui/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final bool isCountry;
  final String url;
  Header(this.title, {this.isCountry = false, this.url = ''});

  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 32.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Colors.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text(
              title,
              style: whiteText.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 5.0),
          isCountry
              ? GestureDetector(
                  onTap: () => showDialog(
                      context: context,
                      builder: (_) {
                        return DialogContent();
                      }),
                  child: Center(
                      child: Image.network(
                    url,
                    width: 150,
                  )),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
