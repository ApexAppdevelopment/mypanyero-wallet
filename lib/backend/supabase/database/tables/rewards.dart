import '../database.dart';

class RewardsTable extends SupabaseTable<RewardsRow> {
  @override
  String get tableName => 'rewards';

  @override
  RewardsRow createRow(Map<String, dynamic> data) => RewardsRow(data);
}

class RewardsRow extends SupabaseDataRow {
  RewardsRow(super.data);

  @override
  SupabaseTable get table => RewardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get level => getField<int>('level');
  set level(int? value) => setField<int>('level', value);

  double? get rewardAmount => getField<double>('reward_amount');
  set rewardAmount(double? value) => setField<double>('reward_amount', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
