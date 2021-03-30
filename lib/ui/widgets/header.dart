import 'package:covid19/utils/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      color: AppColor.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 200,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text(
                "Cuide da sua família. Cuide de quem você ama. Use máscara e álcool em gel. ",
                style: TextStyle(fontSize: 16,color: Colors.white),),
          ),
          const SizedBox(height: 5.0),
          
        ],
      ),
    );
  }
}
