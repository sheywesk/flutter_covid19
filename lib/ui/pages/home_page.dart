import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/ui/pages/body_country.dart';
import 'package:covid19/ui/pages/body_world.dart';
import 'package:covid19/ui/widgets/bottom_navigation.dart';
import 'package:covid19/ui/widgets/header.dart';
import 'package:covid19/utils/theme.dart';
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
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: AppColor.primary,
        elevation: 0,
        brightness: Brightness.dark,
        actions: [
          IconButton(
            icon: Icon(
              Icons.info,
              color: AppColor.yellow,
            ),
          ),
        ],
      ),
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
    );
  }

  Widget _buildBody() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
            child: ListView(
          children: [
            Header(),
            this.controller.currentIndex == 0 ? BodyWorld() : BodyCountry(),
          ],
        )),
        Positioned(
          bottom: 0,
          child: BottomNavigationWidget(),
        ),
      ],
    );
  }
}
