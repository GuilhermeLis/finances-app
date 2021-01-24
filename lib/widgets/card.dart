import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Color(0xFF42A5F5),
        ),
        child: Text('Teste de Container com cor'));
  }
}
