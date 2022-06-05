import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:tv/domain/entities/tv.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class SearchTvs {
  final TVRepository repository;

  SearchTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute(String query) {
    return repository.searchTvs(query);
  }
}
