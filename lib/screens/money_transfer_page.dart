
import 'package:flutter/material.dart';
import 'package:cbdc_app/models/light_color.dart';
import 'package:cbdc_app/screens/transaction/title_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
class MoneyTransferPage extends StatefulWidget {
  MoneyTransferPage({Key key}) : super(key: key);

  @override
  _MoneyTransferPageState createState() => _MoneyTransferPageState();
}

class _MoneyTransferPageState extends State<MoneyTransferPage> {

  Align _buttonWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: MediaQuery.of(context).size.height * .15,
            decoration: BoxDecoration(
                //color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: <Widget>[
                _transferButton()
              ],
            )));
  }

  Widget _transferButton() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: LightColor.navyBlue2,
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
              text: "Transfer",
              color: Colors.white,
            ),
          ],
        ));
  }

  Widget _icon(IconData icon, bool isBackground) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: isBackground
                      ? LightColor.lightGrey
                      : Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Icon(icon),
            ),
            !isBackground
                ? SizedBox()
                : Text(
              "Change",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: LightColor.navyBlue2),
            )
          ],
        ));
  }

  Widget _countButton(String text) {
    return Material(
        child: InkWell(
            onTap: () {
              print("Sfsf");
            },
            child: Container(
              alignment: Alignment.center,
              child: TitleText(
                text: text,
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    // Container(
                    //   height: 55,
                    //   width: 60,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage('assets/images/user_image.png'),
                    //           fit: BoxFit.cover),
                    //       borderRadius: BorderRadius.all(Radius.circular(15))),
                    //
                    // ),

                    SizedBox(height : 20),
                    TextField(decoration: InputDecoration (
                      prefixIcon: Icon(Icons.person, size :18),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder (
                        borderRadius: BorderRadius.circular (10),
                      ),
                      hintText: 'Payee\'s Name',
                    ),
                    ),
                    SizedBox(height : 20),

                    TextField(decoration: InputDecoration (
                      prefixIcon: Icon(Icons.person, size :18),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder (
                        borderRadius: BorderRadius.circular (10),
                      ),
                      hintText: 'Payee\'s ID',
                    ),
                    ),



              SizedBox(height : 20),
              TextField(decoration: InputDecoration (
                prefixIcon: Icon(Icons.attach_money_rounded, size :18, color: Colors.white),
                filled: true,
                fillColor: LightColor.navyBlue2,
                border: OutlineInputBorder (
                  borderRadius: BorderRadius.circular (10),
                ),
                hintText: 'Amount in CBDC',
                hintStyle: TextStyle (color: Colors.white),

              ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
                    // Expanded(
                    //   flex: 2,
                    //   child: SizedBox(),
                    // ),
                    SizedBox(height : 20),
                    TextField(decoration: InputDecoration (
                      prefixIcon: Icon(Icons.attach_money_rounded, size :18, color: Colors.white),
                      filled: true,
                      fillColor: LightColor.navyBlue2,
                      border: OutlineInputBorder (
                        borderRadius: BorderRadius.circular (10),
                      ),
                      hintText: 'Amount in Cash',
                      hintStyle: TextStyle (color: Colors.white),

                    ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                    Container (

                    )
                  ],
                ),
              ),
              Positioned(
                left: -140,
                top: -270,
                child: CircleAvatar(
                  radius: 190,
                  backgroundColor: LightColor.lightBlue2,
                ),
              ),
              Positioned(
                left: -130,
                top: -300,
                child: CircleAvatar(
                  radius: 190,
                  backgroundColor: LightColor.lightBlue1,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .8,
                right: -150,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: LightColor.yellow2,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .8,
                right: -180,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: LightColor.yellow,
                ),
              ),
              Positioned(
                  left: 0,
                  top: 40,
                  child: Row(
                    children: <Widget>[
                      BackButton(color: Colors.white,),
                      SizedBox(width: 20),
                      Text('Send', style:GoogleFonts.inter(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      )
                    ],
                  )),
              _buttonWidget(),
            ],
          ),
        ));
  }
}
