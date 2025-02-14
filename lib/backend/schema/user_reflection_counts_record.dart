import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReflectionCountsRecord extends FirestoreRecord {
  UserReflectionCountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total_reflection_count" field.
  int? _totalReflectionCount;
  int get totalReflectionCount => _totalReflectionCount ?? 0;
  bool hasTotalReflectionCount() => _totalReflectionCount != null;

  // "days_since_account_created" field.
  int? _daysSinceAccountCreated;
  int get daysSinceAccountCreated => _daysSinceAccountCreated ?? 0;
  bool hasDaysSinceAccountCreated() => _daysSinceAccountCreated != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _totalReflectionCount =
        castToType<int>(snapshotData['total_reflection_count']);
    _daysSinceAccountCreated =
        castToType<int>(snapshotData['days_since_account_created']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_reflection_counts')
          : FirebaseFirestore.instance
              .collectionGroup('user_reflection_counts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_reflection_counts').doc(id);

  static Stream<UserReflectionCountsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UserReflectionCountsRecord.fromSnapshot(s));

  static Future<UserReflectionCountsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserReflectionCountsRecord.fromSnapshot(s));

  static UserReflectionCountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserReflectionCountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserReflectionCountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserReflectionCountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserReflectionCountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserReflectionCountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserReflectionCountsRecordData({
  int? totalReflectionCount,
  int? daysSinceAccountCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_reflection_count': totalReflectionCount,
      'days_since_account_created': daysSinceAccountCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserReflectionCountsRecordDocumentEquality
    implements Equality<UserReflectionCountsRecord> {
  const UserReflectionCountsRecordDocumentEquality();

  @override
  bool equals(UserReflectionCountsRecord? e1, UserReflectionCountsRecord? e2) {
    return e1?.totalReflectionCount == e2?.totalReflectionCount &&
        e1?.daysSinceAccountCreated == e2?.daysSinceAccountCreated;
  }

  @override
  int hash(UserReflectionCountsRecord? e) => const ListEquality()
      .hash([e?.totalReflectionCount, e?.daysSinceAccountCreated]);

  @override
  bool isValidKey(Object? o) => o is UserReflectionCountsRecord;
}
