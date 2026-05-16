import 'package:flutter/material.dart';
import 'package:movies_app/models%20/moiesModel.dart';

//  al ways make sure to use the stateles widget when we are passing  and accessing data from the parent widget pulling data
class Deatails extends StatelessWidget {
  const Deatails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(movie.title)));
  }
}
