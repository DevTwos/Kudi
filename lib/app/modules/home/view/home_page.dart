// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kudi/app/Utils/Color/default_colors.dart';
import 'package:kudi/app/widgets/drawer/customDrawer.dart';
import 'package:kudi/app/widgets/navbar/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: ColorApp.BACKGROUNDCOLOR,
      body: Column(
        children: [
          Observer(builder: ((context) {
            return NavApp();
          }))
        ],
      ),
    );
  }
}
