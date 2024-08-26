// ignore_for_file: unnecessary_import, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navbar extends StatelessWidget {
  IconData Icon_value;

  Navbar({
    required this.Icon_value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.33,
          height: MediaQuery.of(context).size.height * 0.075,
          child: CircleAvatar(
            radius: 32, // Image radius
            backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/en/e/ed/Nyan_cat_250px_frame.PNG"),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.height * 0.045,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.20,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 186, 182),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.grey),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.black),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.grey),
                  )
                ]),
          ),
        ),
        Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              height: MediaQuery.of(context).size.height * 0.075,
              child: Icon(Icon_value)),
        )
      ],
    );
  }
}
