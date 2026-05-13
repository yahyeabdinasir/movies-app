import 'dart:convert';

import 'package:movies_app/models%20/moiesModel.dart';

class MovieParser {
  static List<Movie>  parse(String jsonString){
    final List<dynamic> jsonParseList = json.decode(jsonString);
    return jsonParseList.map((toElement)=> Movie.fromJson(toElement as Map<String , dynamic>)).toList();
    
  }
}