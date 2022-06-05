import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:tv/domain/entities/tv.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class GetTopRatedTvs {
  final TVRepository repository;

  GetTopRatedTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getTopRatedTvs();
  }
}
