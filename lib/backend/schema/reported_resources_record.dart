import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportedResourcesRecord extends FirestoreRecord {
  ReportedResourcesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "resource_reported" field.
  DocumentReference? _resourceReported;
  DocumentReference? get resourceReported => _resourceReported;
  bool hasResourceReported() => _resourceReported != null;

  // "user_reporting" field.
  DocumentReference? _userReporting;
  DocumentReference? get userReporting => _userReporting;
  bool hasUserReporting() => _userReporting != null;

  // "report_comment" field.
  String? _reportComment;
  String get reportComment => _reportComment ?? '';
  bool hasReportComment() => _reportComment != null;

  // "report_time" field.
  DateTime? _reportTime;
  DateTime? get reportTime => _reportTime;
  bool hasReportTime() => _reportTime != null;

  void _initializeFields() {
    _resourceReported = snapshotData['resource_reported'] as DocumentReference?;
    _userReporting = snapshotData['user_reporting'] as DocumentReference?;
    _reportComment = snapshotData['report_comment'] as String?;
    _reportTime = snapshotData['report_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reported_resources');

  static Stream<ReportedResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportedResourcesRecord.fromSnapshot(s));

  static Future<ReportedResourcesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ReportedResourcesRecord.fromSnapshot(s));

  static ReportedResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportedResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportedResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportedResourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportedResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportedResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportedResourcesRecordData({
  DocumentReference? resourceReported,
  DocumentReference? userReporting,
  String? reportComment,
  DateTime? reportTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'resource_reported': resourceReported,
      'user_reporting': userReporting,
      'report_comment': reportComment,
      'report_time': reportTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportedResourcesRecordDocumentEquality
    implements Equality<ReportedResourcesRecord> {
  const ReportedResourcesRecordDocumentEquality();

  @override
  bool equals(ReportedResourcesRecord? e1, ReportedResourcesRecord? e2) {
    return e1?.resourceReported == e2?.resourceReported &&
        e1?.userReporting == e2?.userReporting &&
        e1?.reportComment == e2?.reportComment &&
        e1?.reportTime == e2?.reportTime;
  }

  @override
  int hash(ReportedResourcesRecord? e) => const ListEquality().hash(
      [e?.resourceReported, e?.userReporting, e?.reportComment, e?.reportTime]);

  @override
  bool isValidKey(Object? o) => o is ReportedResourcesRecord;
}
