import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/widgets/card_widget.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BodyWorld extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header("Informações COVID-19 "),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Dados atualizados em ${controller.world.lastUpdate.day}/0${controller.world.lastUpdate.month} às ${controller.world.lastUpdate.hour}:${controller.world.lastUpdate.minute}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Colors.white,
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.bottomCenter,
                      width: 45.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 20,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 25,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 40,
                            width: 8.0,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 30,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    title: Text("Paises Afetados"),
                    subtitle:
                        Text(controller.world.affectedCountries.toString()),
                  ),
                ),
              ],
            ),
          ),
          CardWidget(
              color: Colors.brown,
              icon: Icons.person_outline,
              title: "Total de Infectados",
              data: controller.world.cases.toString()),
          SizedBox(height: 16.0),
          CardWidget(
              color: Colors.red,
              icon: Icons.person_pin,
              title: "Mortes",
              data: controller.world.deaths.toString()),
          const SizedBox(height: 16.0),
          CardWidget(
              color: Colors.green,
              icon: Icons.person_add,
              title: "Recuperados",
              data: controller.world.recovered.toString()),
        ],
      ),
    );
  }
}
