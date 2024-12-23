import '../database.dart';

class ServiceTransactionsTable extends SupabaseTable<ServiceTransactionsRow> {
  @override
  String get tableName => 'service_transactions';

  @override
  ServiceTransactionsRow createRow(Map<String, dynamic> data) =>
      ServiceTransactionsRow(data);
}

class ServiceTransactionsRow extends SupabaseDataRow {
  ServiceTransactionsRow(super.data);

  @override
  SupabaseTable get table => ServiceTransactionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
