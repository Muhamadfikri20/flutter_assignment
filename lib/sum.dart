import 'package:flutter/material.dart';

class Sum extends StatelessWidget {
  final Function selectHandler;

  Sum(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text("Tambah"),
      ),
    );
  }
}
