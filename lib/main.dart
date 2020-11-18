import 'package:cbdc_app/screens/auth/auth.dart';
import 'package:cbdc_app/screens/dashboard.dart';
import 'package:cbdc_app/screens/home.dart';
import 'package:cbdc_app/screens/home_screen.dart';
import 'package:cbdc_app/screens/money_transfer_page.dart';
import 'package:cbdc_app/screens/monthly_expense_view.dart';
import 'package:cbdc_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


import 'config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoneyTransferPage(),
    );
  }
}