// ignore_for_file: unnecessary_import, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:investment_wallet_app/themes/app_theme.dart';

class ButtonBalance extends StatelessWidget {
  String Button_text_value;
  IconData Icons_data;

  ButtonBalance({
    required this.Button_text_value,
    required this.Icons_data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: mainButtonColor,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons_data, size: 25, color: Colors.white,),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
          Center(child: Text(Button_text_value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),)),
        ],
      ),
    );
  }
}
