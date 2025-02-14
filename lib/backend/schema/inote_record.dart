import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InoteRecord extends FirestoreRecord {
  InoteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pc" field.
  String? _pc;
  String get pc => _pc ?? '';
  bool hasPc() => _pc != null;

  // "rows" field.
  List<InoteRowStruct>? _rows;
  List<InoteRowStruct> get rows => _rows ?? const [];
  bool hasRows() => _rows != null;

  void _initializeFields() {
    _pc = snapshotData['pc'] as String?;
    _rows = getStructList(
      snapshotData['rows'],
      InoteRowStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inote');

  static Stream<InoteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InoteRecord.fromSnapshot(s));

  static Future<InoteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InoteRecord.fromSnapshot(s));

  static InoteRecord fromSnapshot(DocumentSnapshot snapshot) => InoteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InoteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InoteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InoteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InoteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInoteRecordData({
  String? pc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pc': pc,
    }.withoutNulls,
  );

  return firestoreData;
}

class InoteRecordDocumentEquality implements Equality<InoteRecord> {
  const InoteRecordDocumentEquality();

  @override
  bool equals(InoteRecord? e1, InoteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pc == e2?.pc && listEquality.equals(e1?.rows, e2?.rows);
  }

  @override
  int hash(InoteRecord? e) => const ListEquality().hash([e?.pc, e?.rows]);

  @override
  bool isValidKey(Object? o) => o is InoteRecord;
}
