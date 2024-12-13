import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BetsRecord extends FirestoreRecord {
  BetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "bettor" field.
  String? _bettor;
  String get bettor => _bettor ?? '';
  bool hasBettor() => _bettor != null;

  // "firstball" field.
  String? _firstball;
  String get firstball => _firstball ?? '';
  bool hasFirstball() => _firstball != null;

  // "scondball" field.
  String? _scondball;
  String get scondball => _scondball ?? '';
  bool hasScondball() => _scondball != null;

  // "bet_amount" field.
  int? _betAmount;
  int get betAmount => _betAmount ?? 0;
  bool hasBetAmount() => _betAmount != null;

  // "expectedwin" field.
  int? _expectedwin;
  int get expectedwin => _expectedwin ?? 0;
  bool hasExpectedwin() => _expectedwin != null;

  // "drawtype" field.
  String? _drawtype;
  String get drawtype => _drawtype ?? '';
  bool hasDrawtype() => _drawtype != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  bool hasDatetime() => _datetime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "agentcommission" field.
  int? _agentcommission;
  int get agentcommission => _agentcommission ?? 0;
  bool hasAgentcommission() => _agentcommission != null;

  // "createdon" field.
  DateTime? _createdon;
  DateTime? get createdon => _createdon;
  bool hasCreatedon() => _createdon != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _bettor = snapshotData['bettor'] as String?;
    _firstball = snapshotData['firstball'] as String?;
    _scondball = snapshotData['scondball'] as String?;
    _betAmount = castToType<int>(snapshotData['bet_amount']);
    _expectedwin = castToType<int>(snapshotData['expectedwin']);
    _drawtype = snapshotData['drawtype'] as String?;
    _datetime = snapshotData['datetime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _agentcommission = castToType<int>(snapshotData['agentcommission']);
    _createdon = snapshotData['createdon'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bets');

  static Stream<BetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BetsRecord.fromSnapshot(s));

  static Future<BetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BetsRecord.fromSnapshot(s));

  static BetsRecord fromSnapshot(DocumentSnapshot snapshot) => BetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBetsRecordData({
  DocumentReference? user,
  String? bettor,
  String? firstball,
  String? scondball,
  int? betAmount,
  int? expectedwin,
  String? drawtype,
  DateTime? datetime,
  String? status,
  int? agentcommission,
  DateTime? createdon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'bettor': bettor,
      'firstball': firstball,
      'scondball': scondball,
      'bet_amount': betAmount,
      'expectedwin': expectedwin,
      'drawtype': drawtype,
      'datetime': datetime,
      'status': status,
      'agentcommission': agentcommission,
      'createdon': createdon,
    }.withoutNulls,
  );

  return firestoreData;
}

class BetsRecordDocumentEquality implements Equality<BetsRecord> {
  const BetsRecordDocumentEquality();

  @override
  bool equals(BetsRecord? e1, BetsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.bettor == e2?.bettor &&
        e1?.firstball == e2?.firstball &&
        e1?.scondball == e2?.scondball &&
        e1?.betAmount == e2?.betAmount &&
        e1?.expectedwin == e2?.expectedwin &&
        e1?.drawtype == e2?.drawtype &&
        e1?.datetime == e2?.datetime &&
        e1?.status == e2?.status &&
        e1?.agentcommission == e2?.agentcommission &&
        e1?.createdon == e2?.createdon;
  }

  @override
  int hash(BetsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.bettor,
        e?.firstball,
        e?.scondball,
        e?.betAmount,
        e?.expectedwin,
        e?.drawtype,
        e?.datetime,
        e?.status,
        e?.agentcommission,
        e?.createdon
      ]);

  @override
  bool isValidKey(Object? o) => o is BetsRecord;
}
