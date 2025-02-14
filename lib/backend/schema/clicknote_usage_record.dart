import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteUsageRecord extends FirestoreRecord {
  ClicknoteUsageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clicknote_ref" field.
  DocumentReference? _clicknoteRef;
  DocumentReference? get clicknoteRef => _clicknoteRef;
  bool hasClicknoteRef() => _clicknoteRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "clicknote_title" field.
  String? _clicknoteTitle;
  String get clicknoteTitle => _clicknoteTitle ?? '';
  bool hasClicknoteTitle() => _clicknoteTitle != null;

  void _initializeFields() {
    _clicknoteRef = snapshotData['clicknote_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _clicknoteTitle = snapshotData['clicknote_title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clicknote_usage');

  static Stream<ClicknoteUsageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteUsageRecord.fromSnapshot(s));

  static Future<ClicknoteUsageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClicknoteUsageRecord.fromSnapshot(s));

  static ClicknoteUsageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteUsageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteUsageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteUsageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteUsageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteUsageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteUsageRecordData({
  DocumentReference? clicknoteRef,
  DocumentReference? userRef,
  DateTime? timestamp,
  String? clicknoteTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clicknote_ref': clicknoteRef,
      'user_ref': userRef,
      'timestamp': timestamp,
      'clicknote_title': clicknoteTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteUsageRecordDocumentEquality
    implements Equality<ClicknoteUsageRecord> {
  const ClicknoteUsageRecordDocumentEquality();

  @override
  bool equals(ClicknoteUsageRecord? e1, ClicknoteUsageRecord? e2) {
    return e1?.clicknoteRef == e2?.clicknoteRef &&
        e1?.userRef == e2?.userRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.clicknoteTitle == e2?.clicknoteTitle;
  }

  @override
  int hash(ClicknoteUsageRecord? e) => const ListEquality()
      .hash([e?.clicknoteRef, e?.userRef, e?.timestamp, e?.clicknoteTitle]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteUsageRecord;
}
