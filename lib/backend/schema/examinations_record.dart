import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExaminationsRecord extends FirestoreRecord {
  ExaminationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "exam" field.
  String? _exam;
  String get exam => _exam ?? '';
  bool hasExam() => _exam != null;

  // "template" field.
  String? _template;
  String get template => _template ?? '';
  bool hasTemplate() => _template != null;

  void _initializeFields() {
    _exam = snapshotData['exam'] as String?;
    _template = snapshotData['template'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('examinations');

  static Stream<ExaminationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExaminationsRecord.fromSnapshot(s));

  static Future<ExaminationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExaminationsRecord.fromSnapshot(s));

  static ExaminationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExaminationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExaminationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExaminationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExaminationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExaminationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExaminationsRecordData({
  String? exam,
  String? template,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'exam': exam,
      'template': template,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExaminationsRecordDocumentEquality
    implements Equality<ExaminationsRecord> {
  const ExaminationsRecordDocumentEquality();

  @override
  bool equals(ExaminationsRecord? e1, ExaminationsRecord? e2) {
    return e1?.exam == e2?.exam && e1?.template == e2?.template;
  }

  @override
  int hash(ExaminationsRecord? e) =>
      const ListEquality().hash([e?.exam, e?.template]);

  @override
  bool isValidKey(Object? o) => o is ExaminationsRecord;
}
