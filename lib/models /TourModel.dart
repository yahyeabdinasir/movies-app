class TourModel {
  final int id;

  final String title;
  final String body;

  TourModel({required this.id, required this.title, required this.body});

  factory TourModel.fromjson(Map<String, dynamic> json) {
    return TourModel(id: json['id'], title: json['title'], body: json['body']);
  }
}

// algorithm way to solve the promplem


// Call API
// ↓
// Wait for response
// ↓
// Check status code
// ↓
// Decode JSON
// ↓
// Convert each item to TourModel
// ↓
// Return List<TourModel>