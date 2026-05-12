import 'package:flutter/cupertino.dart';

class Listmoviewprovider extends ChangeNotifier {

  final List<String> _MoviesName = [
    "The MatrixWrite a function ",
    "InceptionFind the first  "
        "The Social NetworkCount the.",
    "The Imitation GameCheck if the",
    "Source CodeRemove all duplicate ",
    "HackersDetermine if the string is",
    "TronGenerate all possible permutaties ",
    "Ex MachinaFind the maximum occurring",
    "WarGamesCount how many words ar",

  ];

  List<String> get MovieNames => _MoviesName;

  List<String> LoadTheNames() {
    return MovieNames;
  }
}
