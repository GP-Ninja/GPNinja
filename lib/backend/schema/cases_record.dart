import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CasesRecord extends FirestoreRecord {
  CasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "case_summary" field.
  String? _caseSummary;
  String get caseSummary => _caseSummary ?? '';
  bool hasCaseSummary() => _caseSummary != null;

  // "date_added" field.
  DateTime? _dateAdded;
  DateTime? get dateAdded => _dateAdded;
  bool hasDateAdded() => _dateAdded != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _caseSummary = snapshotData['case_summary'] as String?;
    _dateAdded = snapshotData['date_added'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cases');

  static Stream<CasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CasesRecord.fromSnapshot(s));

  static Future<CasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CasesRecord.fromSnapshot(s));

  static CasesRecord fromSnapshot(DocumentSnapshot snapshot) => CasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCasesRecordData({
  DocumentReference? user,
  String? caseSummary,
  DateTime? dateAdded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'case_summary': caseSummary,
      'date_added': dateAdded,
    }.withoutNulls,
  );

  return firestoreData;
}

class CasesRecordDocumentEquality implements Equality<CasesRecord> {
  const CasesRecordDocumentEquality();

  @override
  bool equals(CasesRecord? e1, CasesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.caseSummary == e2?.caseSummary &&
        e1?.dateAdded == e2?.dateAdded;
  }

  @override
  int hash(CasesRecord? e) =>
      const ListEquality().hash([e?.user, e?.caseSummary, e?.dateAdded]);

  @override
  bool isValidKey(Object? o) => o is CasesRecord;
}
