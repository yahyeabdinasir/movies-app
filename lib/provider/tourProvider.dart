import 'package:flutter/cupertino.dart';
import 'package:movies_app/models%20/TourModel.dart';
import 'package:movies_app/service/TourService.dart';

class Tourprovider extends ChangeNotifier {
  bool Loading = false;

  final Tourservice _service = Tourservice();

  List<TourModel> _tours = [];

  Future<void> loadData() async {
    Loading = true;
    notifyListeners();

    _tours = await _service.fetchTours();
    notifyListeners();
  }
}


// Algorithm Thinking
// Start loading
// ↓
// Call service
// ↓
// Receive tours
// ↓
// Store tours
// ↓
// Notify UI
// ↓
// UI rebuilds