import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/widgets/card_widget.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BodyCountry extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(controller.country.name,
              isCountry: true, url: controller.country.urlCountryFlag),
          const SizedBox(height: 20.0),
          CardWidget(
            color: Colors.brown,
            icon: Icons.person_outline,
            title: "Total de Infectados",
            data: controller.country.cases.toString(),
          ),
          const SizedBox(height: 16.0),
          CardWidget(
              color: Colors.red,
              icon: Icons.person_pin,
              title: "Mortes",
              data: controller.country.deaths.toString()),
          const SizedBox(height: 16.0),
          CardWidget(
              color: Colors.green,
              icon: Icons.person_add,
              title: "Recuperados",
              data: controller.country.recovered.toString()),
        ],
      ),
    );
  }
}
