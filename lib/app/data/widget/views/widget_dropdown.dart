import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dropdown_search/dropdown_search.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Dynamic DropDownList REST API'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(bottom: 100, top: 100),
          child: Text(
            'DropDown',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
      ],
    ),
  );
}
