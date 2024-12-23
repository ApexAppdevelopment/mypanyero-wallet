import '../database.dart';

class GameTransactionsTable extends SupabaseTable<GameTransactionsRow> {
  @override
  String get tableName => 'game_transactions';

  @override
  GameTransactionsRow createRow(Map<String, dynamic> data) =>
      GameTransactionsRow(data);
}

class GameTransactionsRow extends SupabaseDataRow {
  GameTransactionsRow(super.data);

  @override
  SupabaseTable get table => GameTransactionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get gameId => getField<String>('game_id');
  set gameId(String? value) => setField<String>('game_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
