// ignore_for_file: unnecessary_import, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:investment_wallet_app/themes/app_theme.dart';
import 'balance_button.dart';

class BalanceContainer extends StatelessWidget {
  IconData icondsend = Feather.send;
  IconData iconqr = FontAwesome.qrcode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("My Wallet"),
                  Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.012,),
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        color: walletShortAdress,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Center(child: Text("0xcf...320f")),
                    ),
                ],
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("\$60,292.79", style: TextStyle(fontWeight: FontWeight.w800 ,color: Colors.black, fontSize : MediaQuery.of(context).size.height * 0.04, ),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: positivePercente,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Center(child: Text("+5,41%",style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: MediaQuery.of(context).size.height * 0.02,))),
                  )
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonBalance(Icons_data: icondsend,Button_text_value: "Send"),
                ButtonBalance(Icons_data: iconqr,Button_text_value: "recive")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
