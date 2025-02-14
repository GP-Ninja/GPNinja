import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuditLogsRecord extends FirestoreRecord {
  AuditLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "collectionName" field.
  String? _collectionName;
  String get collectionName => _collectionName ?? '';
  bool hasCollectionName() => _collectionName != null;

  // "docId" field.
  String? _docId;
  String get docId => _docId ?? '';
  bool hasDocId() => _docId != null;

  // "eventType" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "beforeData" field.
  String? _beforeData;
  String get beforeData => _beforeData ?? '';
  bool hasBeforeData() => _beforeData != null;

  // "afterData" field.
  String? _afterData;
  String get afterData => _afterData ?? '';
  bool hasAfterData() => _afterData != null;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _collectionName = snapshotData['collectionName'] as String?;
    _docId = snapshotData['docId'] as String?;
    _eventType = snapshotData['eventType'] as String?;
    _userId = snapshotData['userId'] as String?;
    _beforeData = snapshotData['beforeData'] as String?;
    _afterData = snapshotData['afterData'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audit_logs');

  static Stream<AuditLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AuditLogsRecord.fromSnapshot(s));

  static Future<AuditLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AuditLogsRecord.fromSnapshot(s));

  static AuditLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AuditLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AuditLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AuditLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AuditLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AuditLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAuditLogsRecordData({
  DateTime? timestamp,
  String? collectionName,
  String? docId,
  String? eventType,
  String? userId,
  String? beforeData,
  String? afterData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'collectionName': collectionName,
      'docId': docId,
      'eventType': eventType,
      'userId': userId,
      'beforeData': beforeData,
      'afterData': afterData,
    }.withoutNulls,
  );

  return firestoreData;
}

class AuditLogsRecordDocumentEquality implements Equality<AuditLogsRecord> {
  const AuditLogsRecordDocumentEquality();

  @override
  bool equals(AuditLogsRecord? e1, AuditLogsRecord? e2) {
    return e1?.timestamp == e2?.timestamp &&
        e1?.collectionName == e2?.collectionName &&
        e1?.docId == e2?.docId &&
        e1?.eventType == e2?.eventType &&
        e1?.userId == e2?.userId &&
        e1?.beforeData == e2?.beforeData &&
        e1?.afterData == e2?.afterData;
  }

  @override
  int hash(AuditLogsRecord? e) => const ListEquality().hash([
        e?.timestamp,
        e?.collectionName,
        e?.docId,
        e?.eventType,
        e?.userId,
        e?.beforeData,
        e?.afterData
      ]);

  @override
  bool isValidKey(Object? o) => o is AuditLogsRecord;
}
