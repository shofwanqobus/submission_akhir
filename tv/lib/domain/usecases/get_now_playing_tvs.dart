import 'package:dartz/dartz.dart';
import 'package:tv/domain/entities/tv.dart';
import 'package:core/core.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class GetNowPlayingTvs {
  final TVRepository repository;

  GetNowPlayingTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getNowPlayingTvs();
  }
}
