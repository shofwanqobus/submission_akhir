import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:movies/domain/entities/movie_detail.dart';
import 'package:movies/domain/repositories/movie_repository.dart';
import 'package:tv/domain/entities/tv_detail.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class SaveWatchlist {
  final MovieRepository repository;

  SaveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(MovieDetail movie) {
    return repository.saveWatchlist(movie);
  }
}

class SaveWatchlistTV {
  final TVRepository tvRepository;

  SaveWatchlistTV(this.tvRepository);

  Future<Either<Failure, String>> execute(TVDetail tv) {
    return tvRepository.saveWatchlist(tv);
  }
}
