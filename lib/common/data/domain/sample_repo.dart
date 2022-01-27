import 'package:starterflutter/common/data/domain/local_data_source.dart';
import 'package:starterflutter/common/data/domain/remote_data_source.dart';
import 'package:starterflutter/common/data/shared/data_source.dart';
/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
class SampleRepo {
  final RemoteDataSrc _remoteDataSrc;
  final LocalDataSrc _localDataSrc;

  SampleRepo(this._localDataSrc, this._remoteDataSrc);

  getDataSample(DataSource dataSource) {
    switch (dataSource) {
      case DataSource.local:
        // TODO: do Stuff here
        _localDataSrc;
        break;
      case DataSource.remote:
      // TODO: do Stuff here
        _remoteDataSrc;
        break;
    }
  }
}
