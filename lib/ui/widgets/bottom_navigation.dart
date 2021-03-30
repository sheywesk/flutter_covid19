import 'dart:ffi';

import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomNavigationWidget extends StatelessWidget {
  final controller = Modular.get<HomeController>();
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Color.fromRGBO(0,0,0, 1),
        padding: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(
                    width: 1,
                    color: Colors.black,
                  ),
                )),
                margin: EdgeInsets.only(left: 10),
                height: 65,
                child: ElevatedButton(
                  child: ListTile(
                    title: Icon(Icons.public,color:controller.currentIndex == 0
                            ? AppColor.text
                            : Colors.white),
                    subtitle: Text(
                      "Mundo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: controller.currentIndex == 0
                            ? AppColor.text
                            : Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    controller.changePage(0);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: controller.currentIndex == 0 ? 0 : 10,
                    primary: AppColor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: 65,
                child: ElevatedButton(
                  child: ListTile(
                    title: Icon(Icons.place,color: controller.currentIndex == 1
                            ? AppColor.text
                            : Colors.white,),
                    subtitle: Text(
                      "País",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: controller.currentIndex == 1
                            ? AppColor.text
                            : Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    controller.changePage(1);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: controller.currentIndex == 1 ? 0 : 10,
                    primary: AppColor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
