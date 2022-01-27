import 'package:starterflutter/common/data/domain/sample_web_service.dart';
import 'package:starterflutter/common/data/shared/data_source_protocol.dart';
/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
class RemoteDataSrc implements DataSourceProtocol {
  final SampleWebService _sampleWebService;

  RemoteDataSrc(this._sampleWebService);
}
