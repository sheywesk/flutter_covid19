import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/widgets/card_widget.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:covid19/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BodyWorld extends StatelessWidget {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    final update = controller.world.lastUpdate;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,bottom: 8),
            child: Text(
                "Dados atualizados em ${update.day}/0${update.month} às ${update.hour}:${update.minute}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: AppColor.text,
                )),
          ),
          CardWidget(
              color: AppColor.brown,
              icon: Icons.person,
              title: "Total de Infectados",
              data: controller.world.cases.toString()),
          const SizedBox(height: 16.0),
          CardWidget(
              color: AppColor.red,
              icon: Icons.dangerous,
              title: "Mortes",
              data: controller.world.deaths.toString()),
          const SizedBox(height: 16.0),
          CardWidget(
              color: AppColor.green,
              icon: Icons.person_add,
              title: "Recuperados",
              data: controller.world.recovered.toString()),
        ],
      ),
    );
  }
}
