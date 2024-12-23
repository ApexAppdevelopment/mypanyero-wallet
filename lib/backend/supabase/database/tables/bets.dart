import '../database.dart';

class BetsTable extends SupabaseTable<BetsRow> {
  @override
  String get tableName => 'bets';

  @override
  BetsRow createRow(Map<String, dynamic> data) => BetsRow(data);
}

class BetsRow extends SupabaseDataRow {
  BetsRow(super.data);

  @override
  SupabaseTable get table => BetsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get walletId => getField<String>('wallet_id');
  set walletId(String? value) => setField<String>('wallet_id', value);

  double get betAmount => getField<double>('bet_amount')!;
  set betAmount(double value) => setField<double>('bet_amount', value);

  String? get betStatus => getField<String>('bet_status');
  set betStatus(String? value) => setField<String>('bet_status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
