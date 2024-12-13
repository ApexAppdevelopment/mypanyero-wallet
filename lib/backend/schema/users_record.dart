import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "waletbalance" field.
  int? _waletbalance;
  int get waletbalance => _waletbalance ?? 0;
  bool hasWaletbalance() => _waletbalance != null;

  // "tokenbalance" field.
  int? _tokenbalance;
  int get tokenbalance => _tokenbalance ?? 0;
  bool hasTokenbalance() => _tokenbalance != null;

  // "usertype" field.
  String? _usertype;
  String get usertype => _usertype ?? '';
  bool hasUsertype() => _usertype != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "qrcodeImage" field.
  String? _qrcodeImage;
  String get qrcodeImage => _qrcodeImage ?? '';
  bool hasQrcodeImage() => _qrcodeImage != null;

  // "sponsorphone" field.
  String? _sponsorphone;
  String get sponsorphone => _sponsorphone ?? '';
  bool hasSponsorphone() => _sponsorphone != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _waletbalance = castToType<int>(snapshotData['waletbalance']);
    _tokenbalance = castToType<int>(snapshotData['tokenbalance']);
    _usertype = snapshotData['usertype'] as String?;
    _status = snapshotData['status'] as String?;
    _qrcodeImage = snapshotData['qrcodeImage'] as String?;
    _sponsorphone = snapshotData['sponsorphone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? waletbalance,
  int? tokenbalance,
  String? usertype,
  String? status,
  String? qrcodeImage,
  String? sponsorphone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'waletbalance': waletbalance,
      'tokenbalance': tokenbalance,
      'usertype': usertype,
      'status': status,
      'qrcodeImage': qrcodeImage,
      'sponsorphone': sponsorphone,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.waletbalance == e2?.waletbalance &&
        e1?.tokenbalance == e2?.tokenbalance &&
        e1?.usertype == e2?.usertype &&
        e1?.status == e2?.status &&
        e1?.qrcodeImage == e2?.qrcodeImage &&
        e1?.sponsorphone == e2?.sponsorphone;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.waletbalance,
        e?.tokenbalance,
        e?.usertype,
        e?.status,
        e?.qrcodeImage,
        e?.sponsorphone
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
