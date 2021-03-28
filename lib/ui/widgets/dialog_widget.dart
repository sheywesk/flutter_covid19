import 'package:covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DialogContent extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Situação de outro País'),
      content: TextField(
        controller: controller.textFieldController,
        decoration: InputDecoration(hintText: "INFORME O PAÍS:"),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            controller.getInfoCountry(
                countryName:
                    controller.textFieldController.text.toString());
            Modular.to.pop();
          },
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
        ),
        new TextButton(
          child: new Text('CANCELAR'),
          onPressed: () {
            Modular.to.pop();
          },
        )
      ],
    );
  }
}
