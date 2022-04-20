import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_11/provider/buy_ticket_provider.dart';
import 'package:task_11/provider/home_bar_provider.dart';
import 'package:task_11/screens/login.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => HomeBarProvider()),
      ChangeNotifierProvider(
        create: (context) => BuyTicketProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login());
  }
}
