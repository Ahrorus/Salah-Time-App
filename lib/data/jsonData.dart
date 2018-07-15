import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'util.dart' as util;
import '../ui/second_screen.dart' as secondScreen;

String fajrTime = util.defaultTime;
String shurooqTime = util.defaultTime;
String dzhuhrTime = util.defaultTime;
String asrTime = util.defaultTime;
String maghribTime = util.defaultTime;
String ishaTime = util.defaultTime;
String title;
// Requests json api data
Future<Map> getSalah(String loc) async {
  String apiUrl = 'http://muslimsalat.com/$loc/'
      '4.json?key=345019fe6c8f26d47545f7b1b4b7dc4e';
  http.Response response = await http.get(apiUrl);
  return jsonDecode(response.body);  // Returns a map
}
// Changes salah times and title of the Home Screen
void changeTimes(String location) async {
  Map data = await getSalah(location);
  Map items = data['items'][0];
  print(items.toString());
  if (items != null) {
    // If data is available, then set the times
    fajrTime = items['fajr'].toString();
    shurooqTime = items['shurooq'].toString();
    dzhuhrTime = items['dhuhr'].toString();
    asrTime = items['asr'].toString();
    maghribTime = items['maghrib'].toString();
    ishaTime = items['isha'].toString();
    title = location + ' ' + items['date_for'].toString();
  } else {
    // If data is not available, then use default times
    fajrTime = util.defaultTime;
    shurooqTime = util.defaultTime;
    dzhuhrTime = util.defaultTime;
    asrTime = util.defaultTime;
    maghribTime = util.defaultTime;
    ishaTime = util.defaultTime;
  }
}