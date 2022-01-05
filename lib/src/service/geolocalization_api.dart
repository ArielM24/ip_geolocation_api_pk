import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ip_geolocation_api_pk/src/model/geolocalization_data.dart';

class GeolocalizationApi {
  static Future<GeolocationData?> getData({String ip = ""}) async {
    try {
      http.Response response = await http.get(Uri.parse(
          "https://api.ipgeolocation.io/ipgeo?apiKey=9a114644be6a42e3b731dc519bf58056&ip=$ip"));
      if (response.statusCode == 200) {
        final js = jsonDecode(response.body);
        print("response $js");
        GeolocationData g = GeolocationData.fromJson(js);
        return g;
      }
      print("request failed ${response.statusCode}");
    } catch (ex) {
      print("$ex");
    }
  }
}
