import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/widgets/card_widget.dart';
import 'package:covid19/ui/widgets/dialog_widget.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:covid19/utils/theme.dart';
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
          Padding(
            padding: const EdgeInsets.only(top:10,left: 16.0,bottom: 8),
            child: Text(
                "Toque para trocar de país",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: AppColor.text,
                )),
          ),
          GestureDetector(
            
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return DialogContent();
                  });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(controller.country.urlCountryFlag),
                      alignment: Alignment.centerRight,
                    ),
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(30)),
                height: 50,
                child: ListTile(
                  leading: Text(controller.country.name,style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          CardWidget(
            color: AppColor.brown,
            icon: Icons.person,
            title: "Total de Infectados",
            data: controller.country.cases.toString(),
          ),
          const SizedBox(height: 10.0),
          CardWidget(
              color: AppColor.red,
              icon: Icons.dangerous,
              title: "Mortes",
              data: controller.country.deaths.toString()),
          const SizedBox(height: 10.0),
          CardWidget(
              color: AppColor.green,
              icon: Icons.person_add,
              title: "Recuperados",
              data: controller.country.recovered.toString()),
        ],
      ),
    );
  }
}
