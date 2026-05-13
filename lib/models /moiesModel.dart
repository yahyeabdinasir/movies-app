class Movie {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String poster;
  final String metascore;
  final String imdbRating;
  final String imdbVotes;
  final String imdbID;
  final String type;
  final String response;
  final List<String> images;

  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
    required this.response,
    required this.images,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {

    return Movie(
    //    small cenario of the key and value how we are constructing in our factory
    //   Go to JSON 📦
    // Find 'Title' 🔑
    // Take its value "Spiderman" 🎁
    // Put it into your object’s title 🧾


      // so that means we are storing the container  of the string the  value that comes from the  json
      //  json['Title']  so this means go and get it the value of the title or the value that the title key had

       //  supposed this sample
      // json = {
      //   "Title": "Spiderman"
      // };
      //  so the our json has the title as a key and also the  spider man as a value
      // Now this line:
      //
      // title: json['Title'] as String,
      //  now this line it doing that go inside ef the title and get the value of the title and also it must be the string the value that u get it our there


       //  so the conclude  is that the title is string that comes the class object so we are just telling that
       // the value of the title it will be the the title value that comes from  the  data json and this is the
      // what the title is gonna and store "Title": "Avatar",

      title: json['Title'] as String,
      year: json['Year'] as String,
      rated: json['Rated'] as String,
      released: json['Released'] as String,
      runtime: json['Runtime'] as String,
      genre: json['Genre'] as String,
      director: json['Director'] as String,
      writer: json['Writer'] as String,
      actors: json['Actors'] as String,
      plot: json['Plot'] as String,
      language: json['Language'] as String,
      country: json['Country'] as String,
      awards: json['Awards'] as String,
      poster: json['Poster'] as String,
      metascore: json['Metascore'] as String,
      imdbRating: json['imdbRating'] as String,
      imdbVotes: json['imdbVotes'] as String,
      imdbID: json['imdbID'] as String,
      type: json['Type'] as String,
      response: json['Response'] as String,
      images: List<String>.from(json['Images'] as List),
    );
  }

  void operator [](int other) {}
}