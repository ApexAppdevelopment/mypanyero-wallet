import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountRecord extends FirestoreRecord {
  AccountRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_account" field.
  DocumentReference? _userAccount;
  DocumentReference? get userAccount => _userAccount;
  bool hasUserAccount() => _userAccount != null;

  void _initializeFields() {
    _userAccount = snapshotData['user_account'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('account');

  static Stream<AccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountRecord.fromSnapshot(s));

  static Future<AccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountRecord.fromSnapshot(s));

  static AccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountRecordData({
  DocumentReference? userAccount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_account': userAccount,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountRecordDocumentEquality implements Equality<AccountRecord> {
  const AccountRecordDocumentEquality();

  @override
  bool equals(AccountRecord? e1, AccountRecord? e2) {
    return e1?.userAccount == e2?.userAccount;
  }

  @override
  int hash(AccountRecord? e) => const ListEquality().hash([e?.userAccount]);

  @override
  bool isValidKey(Object? o) => o is AccountRecord;
}
