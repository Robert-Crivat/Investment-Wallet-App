// ignore_for_file: unnecessary_import, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:investment_wallet_app/themes/app_theme.dart';

class CustomBox extends StatelessWidget {
  String actualPrice;
  String Target;
  String mountIncrementValue;

  CustomBox({required this.actualPrice, required this.Target, required this.mountIncrementValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.only(top : 14.0, left: 12.0, right: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("\$"+actualPrice, style: TextStyle(color: mainTextColor, fontSize: MediaQuery.of(context).size.height * 0.025, fontWeight: FontWeight.w400)),
            Text(Target, style: TextStyle(color: secondaryTextColor, fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w400)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: mountIncrement,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: Center(
                    child: Text(
                      "+"+mountIncrementValue+"%",
                      style: TextStyle(
                        color: mountIncrementText,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text("🏡", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.033,),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}