import 'dart:math';

import 'package:movies_app/models%20/TourModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Tourservice {


  Future<List<TourModel>> fetchTours() async {
    final url = Uri.http("https://jsonplaceholder.typicode.com/posts");
    final results = await http.get(url);
    if (results.statusCode == 200) {
      List data = json.decode(results.body);
      print(data);

      return data.map((toElement) =>
          TourModel.fromjson(toElement as Map<String, dynamic>)).toList();
    }
    else {
      throw Exception("Failed to load tours");
    }
  }
}