import 'package:cbdc_app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
    }
  }
}