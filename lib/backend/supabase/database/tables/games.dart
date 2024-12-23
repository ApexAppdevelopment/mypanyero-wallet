import '../database.dart';

class GamesTable extends SupabaseTable<GamesRow> {
  @override
  String get tableName => 'games';

  @override
  GamesRow createRow(Map<String, dynamic> data) => GamesRow(data);
}

class GamesRow extends SupabaseDataRow {
  GamesRow(super.data);

  @override
  SupabaseTable get table => GamesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
