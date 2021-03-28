import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/pages/body_country.dart';
import 'package:covid19/ui/pages/body_world.dart';
import 'package:covid19/ui/widgets/bottom_navigation.dart';
import 'package:covid19/ui/widgets/card_widget.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final TextStyle whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Observer(
        builder: (_) {
          return (this.controller.world != null &&
                  this.controller.country != null)
              ? _buildBody()
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }

  Widget _buildBody() {
    return this.controller.currentIndex == 0 ? BodyWorld() : BodyCountry();
  }
}
