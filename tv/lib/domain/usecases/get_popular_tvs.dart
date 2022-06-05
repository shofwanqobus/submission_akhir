import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:tv/domain/entities/tv.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class GetPopularTvs {
  final TVRepository repository;

  GetPopularTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getPopularTvs();
  }
}
