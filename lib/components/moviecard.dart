
import 'package:flutter/material.dart';
import 'package:movies_app/models%20/moiesModel.dart';
import 'package:movies_app/screen/Deatails.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      //  ExpansionTile  it's the  widget attribute that gives us the  small top bottom arrow when we cloick we can exapnd the list
      //  of the widget that inside of there
      child: ExpansionTile(
        title: Text(movie.title),
        subtitle: Text(
          "Director ${movie.director}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),

        // leading: CircleAvatar(child: Text(movie.title[0])),
        leading: CircleAvatar(
          child: Image.network(
            movie.images[0],
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 75),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.start,

                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,

                    children: [
                      TextSpan(
                        text: "Released",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '${movie.released}  \n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Plot",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: movie.plot,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Deatails(movie: movie,))
                  );

                }, child: Text(" Click More ")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
