import 'package:cbdc_app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == 'CASH') return 'HKD';
    if (currency == 'CBDC') return 'HKD';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'CASH') {
      {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                DashboardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount).roundToDouble(),
                    currencyone: fromCurrency,
                    currencytwo: toCurrency,
                    isWhite: false)));
      }
      if (fromCurrency == 'CBDC') {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                DashboardPage(
                  currencyVal: (amount).roundToDouble(),
                  convertedCurrency: amount,
                  currencyone: toCurrency,
                  currencytwo: fromCurrency,
                  isWhite: true,
                )));
      }
    }Future CBDCExchange() async{
      String url = "https://zb509xftc2.execute-api.us-east-1.amazonaws.com/test/cbdcexchange?Name=Chan+Siu+Man&amount=${amount}&fromCurrency=${fromCurrency}";
      await http.post(url);
  }
    CBDCExchange();
  }
}