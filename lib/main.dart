import 'dart:ui_web';
import 'package:container_sized/widgets/2ndbuttonnavigation.dart';
import 'package:container_sized/widgets/Dismissible.dart';
import 'package:container_sized/widgets/alertwidget.dart';
import 'package:container_sized/widgets/animatedText.dart';
import 'package:container_sized/widgets/apiintegration.dart';
import 'package:container_sized/widgets/bottomNavigation.dart';
import 'package:container_sized/widgets/bottomSheet.dart';
import 'package:container_sized/widgets/button.dart';
import 'package:container_sized/widgets/container_And_Sized.dart';
import 'package:container_sized/widgets/day19Ui.dart';
import 'package:container_sized/widgets/drawer.dart';
import 'package:container_sized/widgets/dropdown.dart';
import 'package:container_sized/widgets/forms.dart';
import 'package:container_sized/widgets/geoLocator.dart';
import 'package:container_sized/widgets/imagepicker.dart';
import 'package:container_sized/widgets/imagewidget.dart';
import 'package:container_sized/widgets/instagramprofile.dart';
import 'package:container_sized/widgets/listview_grid.dart';
import 'package:container_sized/widgets/login&singup.dart';
import 'package:container_sized/widgets/rowsandcolums.dart';
import 'package:container_sized/widgets/snakbar.dart';
import 'package:container_sized/widgets/stack.dart';
import 'package:container_sized/widgets/tabbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()  {
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: apiintegration()));
  }
}
