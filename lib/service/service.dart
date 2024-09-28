import 'dart:convert';

import '../model/filter_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<FilterModel?> myFilterList() async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        return FilterModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
