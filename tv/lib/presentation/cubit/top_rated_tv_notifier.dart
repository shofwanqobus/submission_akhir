import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_top_rated_tvs.dart';
import 'package:flutter/foundation.dart';

class TopRatedTVsNotifier extends ChangeNotifier {
  final GetTopRatedTvs getTopRatedTVs;

  TopRatedTVsNotifier({required this.getTopRatedTVs});

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<TV> _tvs = [];
  List<TV> get tvs => _tvs;

  String _message = '';
  String get message => _message;

  Future<void> fetchTopRatedTVs() async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await getTopRatedTVs.execute();

    result.fold(
      (failure) {
        _message = failure.message;
        _state = RequestState.Error;
        notifyListeners();
      },
      (tvsData) {
        _tvs = tvsData;
        _state = RequestState.Loaded;
        notifyListeners();
      },
    );
  }
}
