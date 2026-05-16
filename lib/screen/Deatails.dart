import 'package:flutter/material.dart';
import 'package:movies_app/models%20/moiesModel.dart';

// class Deatails extends StatefulWidget {
//   const Deatails({super.key, required this.movie});
//    final Movie  movie ;
//
//   @override
//   State<Deatails> createState() => _DeatailsState();
// }
//
// class _DeatailsState extends State<Deatails> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//
//       appBar: AppBar(
//         title: Text(),
//       ),
//
//     );
//   }
// // }
//

class Deatails extends StatelessWidget {
  const Deatails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(movie.title)));
  }
}
