import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime? get createdTime => getField<DateTime>('created_time');
  set createdTime(DateTime? value) => setField<DateTime>('created_time', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  int? get walletbalance => getField<int>('walletbalance');
  set walletbalance(int? value) => setField<int>('walletbalance', value);

  int? get tokenbalance => getField<int>('tokenbalance');
  set tokenbalance(int? value) => setField<int>('tokenbalance', value);

  String? get usertype => getField<String>('usertype');
  set usertype(String? value) => setField<String>('usertype', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get qrcodeimage => getField<String>('qrcodeimage');
  set qrcodeimage(String? value) => setField<String>('qrcodeimage', value);

  String? get sponsorphone => getField<String>('sponsorphone');
  set sponsorphone(String? value) => setField<String>('sponsorphone', value);

  int? get notification => getField<int>('notification');
  set notification(int? value) => setField<int>('notification', value);
}
