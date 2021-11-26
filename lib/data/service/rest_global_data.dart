import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/service/global_data.dart';

class RestGlobalDataService implements GlobalDataService {
  final RestGateway _gateway;
  final Factory<GlobalData, GlobalDataDto> _factory;
  RestGlobalDataService(this._gateway, this._factory);

  @override
  Future<GlobalData> getGlobalData() async =>
      _factory.create(await _gateway.getGlobalData());
}
