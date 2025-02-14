import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowsRecord extends FirestoreRecord {
  RowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sectionID" field.
  DocumentReference? _sectionID;
  DocumentReference? get sectionID => _sectionID;
  bool hasSectionID() => _sectionID != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  bool hasPrompt() => _prompt != null;

  // "multiselect" field.
  bool? _multiselect;
  bool get multiselect => _multiselect ?? false;
  bool hasMultiselect() => _multiselect != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _sectionID = snapshotData['sectionID'] as DocumentReference?;
    _prompt = snapshotData['prompt'] as String?;
    _multiselect = snapshotData['multiselect'] as bool?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rows');

  static Stream<RowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RowsRecord.fromSnapshot(s));

  static Future<RowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RowsRecord.fromSnapshot(s));

  static RowsRecord fromSnapshot(DocumentSnapshot snapshot) => RowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRowsRecordData({
  DocumentReference? sectionID,
  String? prompt,
  bool? multiselect,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sectionID': sectionID,
      'prompt': prompt,
      'multiselect': multiselect,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class RowsRecordDocumentEquality implements Equality<RowsRecord> {
  const RowsRecordDocumentEquality();

  @override
  bool equals(RowsRecord? e1, RowsRecord? e2) {
    return e1?.sectionID == e2?.sectionID &&
        e1?.prompt == e2?.prompt &&
        e1?.multiselect == e2?.multiselect &&
        e1?.order == e2?.order;
  }

  @override
  int hash(RowsRecord? e) => const ListEquality()
      .hash([e?.sectionID, e?.prompt, e?.multiselect, e?.order]);

  @override
  bool isValidKey(Object? o) => o is RowsRecord;
}
