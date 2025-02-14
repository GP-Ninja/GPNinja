import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReflectionACPRecord extends FirestoreRecord {
  ReflectionACPRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "clinical_case" field.
  String? _clinicalCase;
  String get clinicalCase => _clinicalCase ?? '';
  bool hasClinicalCase() => _clinicalCase != null;

  // "clinical_practice" field.
  String? _clinicalPractice;
  String get clinicalPractice => _clinicalPractice ?? '';
  bool hasClinicalPractice() => _clinicalPractice != null;

  // "leadership_and_management" field.
  String? _leadershipAndManagement;
  String get leadershipAndManagement => _leadershipAndManagement ?? '';
  bool hasLeadershipAndManagement() => _leadershipAndManagement != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  bool hasEducation() => _education != null;

  // "research" field.
  String? _research;
  String get research => _research ?? '';
  bool hasResearch() => _research != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _clinicalCase = snapshotData['clinical_case'] as String?;
    _clinicalPractice = snapshotData['clinical_practice'] as String?;
    _leadershipAndManagement =
        snapshotData['leadership_and_management'] as String?;
    _education = snapshotData['education'] as String?;
    _research = snapshotData['research'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reflection_ACP');

  static Stream<ReflectionACPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReflectionACPRecord.fromSnapshot(s));

  static Future<ReflectionACPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReflectionACPRecord.fromSnapshot(s));

  static ReflectionACPRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReflectionACPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReflectionACPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReflectionACPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReflectionACPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReflectionACPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReflectionACPRecordData({
  DocumentReference? userRef,
  DateTime? timestamp,
  String? clinicalCase,
  String? clinicalPractice,
  String? leadershipAndManagement,
  String? education,
  String? research,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'timestamp': timestamp,
      'clinical_case': clinicalCase,
      'clinical_practice': clinicalPractice,
      'leadership_and_management': leadershipAndManagement,
      'education': education,
      'research': research,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReflectionACPRecordDocumentEquality
    implements Equality<ReflectionACPRecord> {
  const ReflectionACPRecordDocumentEquality();

  @override
  bool equals(ReflectionACPRecord? e1, ReflectionACPRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.clinicalCase == e2?.clinicalCase &&
        e1?.clinicalPractice == e2?.clinicalPractice &&
        e1?.leadershipAndManagement == e2?.leadershipAndManagement &&
        e1?.education == e2?.education &&
        e1?.research == e2?.research;
  }

  @override
  int hash(ReflectionACPRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.timestamp,
        e?.clinicalCase,
        e?.clinicalPractice,
        e?.leadershipAndManagement,
        e?.education,
        e?.research
      ]);

  @override
  bool isValidKey(Object? o) => o is ReflectionACPRecord;
}
