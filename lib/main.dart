// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:investment_wallet_app/widgets/custom_box.dart';
import 'package:investment_wallet_app/widgets/top_bar.dart';
import 'package:investment_wallet_app/widgets/balance_wallet_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet investment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData iconqr = FontAwesome.qrcode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Navbar(Icon_value: iconqr),
                SizedBox(height: 7.5,),
              ],
            ),
          ),
          BalanceContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBox(actualPrice: "16,384.98", Target: "House", mountIncrementValue: '7.32',),
              CustomBox(actualPrice: "8,301.01", Target: "Tesla model S ", mountIncrementValue: '3.98',),
            ],
          )
        ],
      ),
    );
  }
}
