import 'package:flutter/material.dart';
import 'package:movies_app/components/moviecard.dart';
import 'package:movies_app/models%20/moiesModel.dart';
import 'package:movies_app/provider/listmoviewprovider.dart';
import 'package:provider/provider.dart';

import '../provider/tourProvider.dart';

//  al ways make sure to use the stateles widget when we are passing  and accessing data from the parent widget pulling data
class Deatails extends StatelessWidget {
  const Deatails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    // final movie = Provider.of<Listmoviewprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("movie details")),
      body: Column(
        children: [
          MovieCard(movie: movie),
          SizedBox(
            height: 200,

            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.images.length,
              itemBuilder: (context, index) {
               return   Card(
                 elevation: 4.0,
                 child: Image.network(movie.images[index] ,
                 fit: BoxFit.cover,
                 ),

         
               );
               
              },
            ),
          ),
        ],
      ),
    );
  }
}
