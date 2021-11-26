import 'package:clean_app/domain/entity/global_data.dart';

abstract class GlobalDataService {
  Future<GlobalData> getGlobalData();
}
