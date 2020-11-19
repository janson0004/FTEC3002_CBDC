import 'dart:async';
import 'dart:convert';
import 'package:cbdc_app/screens/home_screen.dart';
import 'package:cbdc_app/test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;
  String cashBalance;
  String CBDCBalance;
  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementTop, this.cardElementBottom, this.cashBalance, this.CBDCBalance);
}

List<CardModel> cards = cardData.map(
  (item) => CardModel(
    item['user'],
    item['cardNumber'],
    item['cardExpired'],
    item['cardType'],
    item['cardBackground'],
    item['cardElementTop'],
    item['cardElementBottom'],
    item ['cashBalance'],
      item ['CBDCBalance']
  ),
).toList();

var cardData = [
  {
    "user": "Janson Cheung",
    "cashBalance": "10000",
    "CBDCBalance": "10000",
    "cardExpired": "03-01-2023",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "assets/svg/ellipse_top_pink.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_pink.svg",
    "cardNumber": "**** **** **** 0001"
  }
  // {
  //   "user": "Amanda Alex",
  //   "cardNumber": "**** **** **** 0001",
  //   "cardExpired": "03-01-2025",
  //   "cardType": "assets/images/mastercard_logo.png",
  //   "cardBackground": 0xFFFF70A3,
  //   "cardElementTop": "assets/svg/ellipse_top_blue.svg",
  //   "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg",
  //   "cashBalance": "10000"
  // }
];


