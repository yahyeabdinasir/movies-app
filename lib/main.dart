import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movies_app/models%20/moiesModel.dart';
import 'package:movies_app/provider/listmoviewprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return Listmoviewprovider();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white24)),
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
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Listmoviewprovider>(
      context,
      listen: false,
    ).accessinjsonData(context);
    super.initState();
    // Movie.fromJson(json as Map<String , dynamic>);
  }

  @override
  Widget build(BuildContext context) {
    final moviesData = Provider.of<Listmoviewprovider>(context);

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      body: Center(
        // color: Theme.of(context).colorScheme.onInverseSurface,
        // margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: moviesData.MovieNames.length,
          itemBuilder: (context, index) {
            // return Card(child: Text(MoviesName[index]));

            return ListTile(
              title: Text(moviesData.MovieNames[index].title),
              subtitle: Text(moviesData.MovieNames[index].director),
              leading: CircleAvatar(child: Text("yahye")),
            );
          },
        ),
      ),
    );
  }
}
