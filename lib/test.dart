import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class APIService {
  String test;
  String test2 = "abc";
  Map data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            "https://h5cgqsjggj.execute-api.us-east-1.amazonaws.com/dev/user/000001"),
        headers: {
          "Accept": "application/json"
        }
    );
    data = json.decode(response.body);
    test = data["id"].toString();
    return test;
  }
}
