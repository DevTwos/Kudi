// ignore_for_file: avoid_unnecessary_containers

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kudi/app/Utils/Color/default_colors.dart';
import 'package:kudi/app/modules/home/controller/home_controller.dart';

class NavApp extends StatelessWidget {
  final int duration = 300;
  final HomeController _homeController = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return AnimatedContainer(
        duration: Duration(milliseconds: duration),
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        height: _homeController.width,
        decoration: const BoxDecoration(
            color: ColorApp.CARDCOLOR,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        child: AnimatedContainer(
          duration: Duration(microseconds: duration),
          margin:
              EdgeInsets.only(top: 15, bottom: _homeController.marginBottom),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                child: Flexible(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      child: IconButton(
                          onPressed: () {
                            log('teste');
                          },
                          icon: const Icon(Icons.person, color: Colors.white)),
                    )),
              ),
              Container(
                child: Flexible(
                    child: InkWell(
                  onTap: () {
                    _homeController.changeNavBar();
                  },
                  child: Row(
                    children: [
                      Container(child: Text('Outubro')),
                      Container(
                        child: const Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                )),
              ),
              Container(
                child: Flexible(
                    flex: 3,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.bell))),
              ),
            ],
          ),
        ),
      );
    });
  }
}
