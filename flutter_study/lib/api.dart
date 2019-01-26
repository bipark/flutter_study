import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://cfvdo.com";

class API {
  static Future getCuration() {
    var url = baseUrl + "/api/curation/master";
    return http.get(url);
  }
}