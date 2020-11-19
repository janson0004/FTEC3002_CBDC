import 'package:cbdc_app/converter/currency_list.dart';
import 'package:cbdc_app/converter/currencyservice.dart';
import 'package:cbdc_app/converter/red_input.dart';
import 'package:cbdc_app/converter/white_input.dart';
import 'package:cbdc_app/models/light_color.dart';
import 'package:cbdc_app/screens/transaction/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final isWhite;

  DashboardPage(
      {this.currencyVal,
        this.convertedCurrency,
        this.currencyone,
        this.currencytwo,
        this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFEC5759)),
          Container(
            child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => CurrencyList()));
                        },
                        child: Text(
                          CurrencyService().getCurrencyString(widget.currencyone),

                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontFamily: 'Quicksand'),
                        )),
                    SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => InputRedPage(
                                  origCurrency: widget.currencyone,
                                  convCurrency: widget.currencytwo)));
                        },
                        child: Text(
                          widget.currencyVal.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 120.0,
                              fontFamily: 'Quicksand'),
                        )),
                    Text(
                      widget.currencyone,
                      style: TextStyle(
                          color: Color(0xFFFFB6B6),
                          fontSize: 17.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25.0),
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          color: Colors.white,
                          border: Border.all(
                              color: Color(0xFFEC5759),
                              style: BorderStyle.solid,
                              width: 5.0)),
                      child: Center(
                        child: widget.isWhite
                            ? Icon(
                          Icons.arrow_upward,
                          size: 60.0,
                          color: Color(0xFFEC5759),
                        )
                            : Icon(
                          Icons.arrow_downward,
                          size: 60.0,
                          color: Color(0xFFEC5759),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      widget.currencytwo,
                      style: TextStyle(
                          color: Color(0xFFFFB6B6),
                          fontSize: 17.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => InputWhitePage(
                                origCurrency: widget.currencyone,
                                convCurrency: widget.currencytwo)));
                      },
                      child: Text(
                        widget.convertedCurrency.toString(),
                        style: TextStyle(
                            color: Color(0xFFEC5759),
                            fontSize: 120.0,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      CurrencyService().getCurrencyString(widget.currencytwo),
                      style: TextStyle(
                          color: Color(0xFFEC5759),
                          fontSize: 22.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ],
                )),
          ),
          Container (
              margin: EdgeInsets.only(top: 680, left: 118),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFEC5759),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Wrap(
                children: <Widget>[
                  Transform.rotate(
                    angle: 70,
                    child: Icon(
                      Icons.swap_calls,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  TitleText(
                    text: "Convert",
                    color: Colors.white,
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
