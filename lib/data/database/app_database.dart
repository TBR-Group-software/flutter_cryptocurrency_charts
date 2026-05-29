import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../dao/app_settings_dao.dart';

part 'app_database.g.dart';

class AppSettings extends Table {
  TextColumn get key => text()();

  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(tables: [AppSettings], daos: [AppSettingsDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final Directory dbFolder = await getApplicationSupportDirectory();
      final File file = File(p.join(dbFolder.path, 'app_database.sqlite'));

      final DriftIsolate isolate = await DriftIsolate.spawn(
        () => NativeDatabase(file),
      );

      return isolate.connect();
    });
  }

  @override
  int get schemaVersion => 1;
}
