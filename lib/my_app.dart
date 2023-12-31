import 'package:bs23_flutter_task_101/configs/app_define.dart';
import 'package:bs23_flutter_task_101/configs/my_theme.dart';
import 'package:bs23_flutter_task_101/view/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      defaultTransition: Transition.cupertino,
      title: AppDefine.appName,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            centerTitle: false,
            iconTheme: IconThemeData(color: MyTheme.themeIconDataColor),
            backgroundColor: Colors.white,
            elevation: MyTheme.elevation,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark)),
      ),
      builder: EasyLoading.init(),
      home: const WelcomeScreen(),
    );
  }
}
