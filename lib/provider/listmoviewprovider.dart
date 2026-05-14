import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:movies_app/models%20/moiesModel.dart';
import 'package:movies_app/service/movieparser.dart';

class Listmoviewprovider extends ChangeNotifier {
   List<Movie> _MoviesName = [
    // "The MatrixWrite a function ",
    // "InceptionFind the first  "
    //     "The Social NetworkCount the.",
    // "The Imitation GameCheck if the",
    // "Source CodeRemove all duplicate ",
    // "HackersDetermine if the string is",
    // "TronGenerate all possible permutaties ",
    // "Ex MachinaFind the maximum occurring",
    // "WarGamesCount how many words ar",
  ];

  List<Movie> get MovieNames => _MoviesName;

  Future<void> accessinjsonData(BuildContext context) async {
    try {
    final   accessingJsonString = await DefaultAssetBundle.of(context).loadString('assets/data/films.json');
    // if (kDebugMode) {
    //   print('this is loaded file data ${accessingJsonString.length }');
    // }

     final movies = MovieParser.parse(accessingJsonString);

    // final movies = MovieParser.parse(jsonString);


    _MoviesName = movies ;
    notifyListeners();

    } catch (e) {
      print(e);
    }
  }
}

// List<String> LoadTheNames() {
//   return MovieNames;
// }
