import '../database.dart';

class AdminSettingsTable extends SupabaseTable<AdminSettingsRow> {
  @override
  String get tableName => 'admin_settings';

  @override
  AdminSettingsRow createRow(Map<String, dynamic> data) =>
      AdminSettingsRow(data);
}

class AdminSettingsRow extends SupabaseDataRow {
  AdminSettingsRow(super.data);

  @override
  SupabaseTable get table => AdminSettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get settingKey => getField<String>('setting_key')!;
  set settingKey(String value) => setField<String>('setting_key', value);

  String get settingValue => getField<String>('setting_value')!;
  set settingValue(String value) => setField<String>('setting_value', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
