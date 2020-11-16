import 'package:cbdc_app/constants/color_constant.dart';
import 'package:cbdc_app/piechart/cargories_row_transaction.dart';
import 'package:cbdc_app/piechart/part_chart_view_transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cbdc_app/piechart/categories_row.dart';
import 'package:cbdc_app/piechart/pie_chart_view.dart';

class MonthlyExpenseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Color.fromRGBO(224, 224, 224, 224),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            SizedBox(
              height: height * 0.43,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height * 0.063),
                    Text(
                      'Saving',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          CategoriesRow(),
                          PieChartView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height1 * 0.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height1 * 0.063),
                    Text(
                      'Transaction',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          CategoriesRowTransaction(),
                          PieChartViewTransaction(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
