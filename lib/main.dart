import 'package:flutter/material.dart';
import 'package:money_manage/ui/router.dart';
import 'package:money_manage/utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MManage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: registerPage,
    );
  }
}
