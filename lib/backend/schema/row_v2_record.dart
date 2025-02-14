import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowV2Record extends FirestoreRecord {
  RowV2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "section_ref" field.
  DocumentReference? _sectionRef;
  DocumentReference? get sectionRef => _sectionRef;
  bool hasSectionRef() => _sectionRef != null;

  // "row_index" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  bool hasRowIndex() => _rowIndex != null;

  // "row_text" field.
  String? _rowText;
  String get rowText => _rowText ?? '';
  bool hasRowText() => _rowText != null;

  void _initializeFields() {
    _sectionRef = snapshotData['section_ref'] as DocumentReference?;
    _rowIndex = castToType<int>(snapshotData['row_index']);
    _rowText = snapshotData['row_text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rowV2');

  static Stream<RowV2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RowV2Record.fromSnapshot(s));

  static Future<RowV2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RowV2Record.fromSnapshot(s));

  static RowV2Record fromSnapshot(DocumentSnapshot snapshot) => RowV2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RowV2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RowV2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RowV2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RowV2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRowV2RecordData({
  DocumentReference? sectionRef,
  int? rowIndex,
  String? rowText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'section_ref': sectionRef,
      'row_index': rowIndex,
      'row_text': rowText,
    }.withoutNulls,
  );

  return firestoreData;
}

class RowV2RecordDocumentEquality implements Equality<RowV2Record> {
  const RowV2RecordDocumentEquality();

  @override
  bool equals(RowV2Record? e1, RowV2Record? e2) {
    return e1?.sectionRef == e2?.sectionRef &&
        e1?.rowIndex == e2?.rowIndex &&
        e1?.rowText == e2?.rowText;
  }

  @override
  int hash(RowV2Record? e) =>
      const ListEquality().hash([e?.sectionRef, e?.rowIndex, e?.rowText]);

  @override
  bool isValidKey(Object? o) => o is RowV2Record;
}
