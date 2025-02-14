import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowUnitRecord extends FirestoreRecord {
  RowUnitRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "unit_type" field.
  String? _unitType;
  String get unitType => _unitType ?? '';
  bool hasUnitType() => _unitType != null;

  // "row_ref" field.
  DocumentReference? _rowRef;
  DocumentReference? get rowRef => _rowRef;
  bool hasRowRef() => _rowRef != null;

  // "unit_prompt" field.
  String? _unitPrompt;
  String get unitPrompt => _unitPrompt ?? '';
  bool hasUnitPrompt() => _unitPrompt != null;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _unitType = snapshotData['unit_type'] as String?;
    _rowRef = snapshotData['row_ref'] as DocumentReference?;
    _unitPrompt = snapshotData['unit_prompt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('row_unit');

  static Stream<RowUnitRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RowUnitRecord.fromSnapshot(s));

  static Future<RowUnitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RowUnitRecord.fromSnapshot(s));

  static RowUnitRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RowUnitRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RowUnitRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RowUnitRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RowUnitRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RowUnitRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRowUnitRecordData({
  int? index,
  String? unitType,
  DocumentReference? rowRef,
  String? unitPrompt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'unit_type': unitType,
      'row_ref': rowRef,
      'unit_prompt': unitPrompt,
    }.withoutNulls,
  );

  return firestoreData;
}

class RowUnitRecordDocumentEquality implements Equality<RowUnitRecord> {
  const RowUnitRecordDocumentEquality();

  @override
  bool equals(RowUnitRecord? e1, RowUnitRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.unitType == e2?.unitType &&
        e1?.rowRef == e2?.rowRef &&
        e1?.unitPrompt == e2?.unitPrompt;
  }

  @override
  int hash(RowUnitRecord? e) => const ListEquality()
      .hash([e?.index, e?.unitType, e?.rowRef, e?.unitPrompt]);

  @override
  bool isValidKey(Object? o) => o is RowUnitRecord;
}
