import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Services/dio_helper/dio_helper.dart';
import 'package:flutter_application_1/core/Services/sp_helper/sp_helper.dart';
import 'package:flutter_application_1/core/utils/Text_Styles.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/home/presention/view/home_view.dart';

void main() {
  DioHelper.init();
  SharedPreferencHelper.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColor.white1color,
            appBarTheme: AppBarTheme(
                titleTextStyle: getTitelstyle(color: AppColor.white1color),
                backgroundColor: AppColor.bluecolor,
                centerTitle: true),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: getBodystyle(),
              fillColor: AppColor.white1color,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.greycolor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.greycolor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.greycolor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.greycolor),
              ),
            )),
        home: const home_view());
  }
}
