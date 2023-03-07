import 'dart:ui';

import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  int amountText;
  Amount(this.amountText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        amountText.toString(),
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
