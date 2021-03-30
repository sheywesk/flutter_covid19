import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DialogContent extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Qual país você deseja ?'),
      content: TextField(
        controller: controller.textFieldController,
        decoration:
            InputDecoration(hintText: "Ex: brasil, usa...", labelText: "País"),
      ),
      actions: <Widget>[
        Observer(
          builder: (_) => TextButton(
            onPressed: () async {
              await controller.getInfoCountry(
                  countryName: controller.textFieldController.text.toString());
              Modular.to.pop();
            },
            child: controller.loading
                ? Container(
                    width: 25, height: 25, child: CircularProgressIndicator())
                : Text(
                    "OK",
                    style: TextStyle(color: AppColor.green),
                  ),
          ),
        ),
        TextButton(
          child: Text(
            'CANCELAR',
            style: TextStyle(color: AppColor.red),
          ),
          onPressed: () {
            Modular.to.pop();
          },
        )
      ],
    );
  }
}
