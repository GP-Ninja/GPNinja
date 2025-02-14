import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteV2UsageRecord extends FirestoreRecord {
  ClicknoteV2UsageRecord._(
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

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  bool hasVersion() => _version != null;

  void _initializeFields() {
    _clicknoteRef = snapshotData['clicknote_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _clicknoteTitle = snapshotData['clicknote_title'] as String?;
    _version = snapshotData['version'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clicknote_v2_usage');

  static Stream<ClicknoteV2UsageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteV2UsageRecord.fromSnapshot(s));

  static Future<ClicknoteV2UsageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClicknoteV2UsageRecord.fromSnapshot(s));

  static ClicknoteV2UsageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteV2UsageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteV2UsageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteV2UsageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteV2UsageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteV2UsageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteV2UsageRecordData({
  DocumentReference? clicknoteRef,
  DocumentReference? userRef,
  DateTime? timestamp,
  String? clicknoteTitle,
  String? version,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clicknote_ref': clicknoteRef,
      'user_ref': userRef,
      'timestamp': timestamp,
      'clicknote_title': clicknoteTitle,
      'version': version,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteV2UsageRecordDocumentEquality
    implements Equality<ClicknoteV2UsageRecord> {
  const ClicknoteV2UsageRecordDocumentEquality();

  @override
  bool equals(ClicknoteV2UsageRecord? e1, ClicknoteV2UsageRecord? e2) {
    return e1?.clicknoteRef == e2?.clicknoteRef &&
        e1?.userRef == e2?.userRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.clicknoteTitle == e2?.clicknoteTitle &&
        e1?.version == e2?.version;
  }

  @override
  int hash(ClicknoteV2UsageRecord? e) => const ListEquality().hash([
        e?.clicknoteRef,
        e?.userRef,
        e?.timestamp,
        e?.clicknoteTitle,
        e?.version
      ]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteV2UsageRecord;
}
