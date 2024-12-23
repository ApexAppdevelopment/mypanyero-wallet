import '../database.dart';

class AffiliatesTable extends SupabaseTable<AffiliatesRow> {
  @override
  String get tableName => 'affiliates';

  @override
  AffiliatesRow createRow(Map<String, dynamic> data) => AffiliatesRow(data);
}

class AffiliatesRow extends SupabaseDataRow {
  AffiliatesRow(super.data);

  @override
  SupabaseTable get table => AffiliatesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sponsorId => getField<String>('sponsor_id');
  set sponsorId(String? value) => setField<String>('sponsor_id', value);

  int? get level => getField<int>('level');
  set level(int? value) => setField<int>('level', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
