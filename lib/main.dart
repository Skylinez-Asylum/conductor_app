import 'package:conductorapp/screen/screenHome.dart';
import 'package:conductorapp/screen/screenLogin.dart';
import 'package:conductorapp/screen/screenProfile.dart';
import 'package:conductorapp/screen/screenTicket_Unpaid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Condutor());
}

class Condutor extends StatelessWidget {
  const Condutor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: TicketsUnpaid(),
    );
  }
}