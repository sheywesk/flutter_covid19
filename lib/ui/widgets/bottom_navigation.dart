import 'package:covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomNavigationWidget extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BottomNavigationBar(
        selectedItemColor: Colors.grey.shade800,
        unselectedItemColor: Colors.grey,
        currentIndex: controller.currentIndex,
        onTap: controller.changePage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Mundo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Pais",
          ),
        ],
      ),
    );
  }
}
