import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.greenAccent)),
      home: Home(title: "Movies"),
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final MoviesName = [
  "The MatrixWrite a function to reverse the string in place" ,
  "InceptionFind the first non-repeated character in the string "
  "The Social NetworkCount the total number of vowels and consonants in the title." ,
  "The Imitation GameCheck if the title is an anagram of another scrambled string" ,
  "Source CodeRemove all duplicate characters from the string",
   "HackersDetermine if the string is a palindrome",
  "TronGenerate all possible permutations of the characters in the title" ,
  "Ex MachinaFind the maximum occurring character in the string",
  "WarGamesCount how many words are in the string",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Card(
          color: Theme.of(context).colorScheme.onInverseSurface,
          margin: EdgeInsets.all(10),
          child: Center(
            child: ListView.builder(
              itemCount: MoviesName.length,

              itemBuilder: (context,  index) {

              return Text("${MoviesName[index]}");
            },

            ),
          ),
        ),
      ),
    );
  }
}
