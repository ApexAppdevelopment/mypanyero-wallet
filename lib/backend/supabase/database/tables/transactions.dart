import '../database.dart';

class TransactionsTable extends SupabaseTable<TransactionsRow> {
  @override
  String get tableName => 'transactions';

  @override
  TransactionsRow createRow(Map<String, dynamic> data) => TransactionsRow(data);
}

class TransactionsRow extends SupabaseDataRow {
  TransactionsRow(super.data);

  @override
  SupabaseTable get table => TransactionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get walletId => getField<String>('wallet_id');
  set walletId(String? value) => setField<String>('wallet_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String? get referenceId => getField<String>('reference_id');
  set referenceId(String? value) => setField<String>('reference_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
