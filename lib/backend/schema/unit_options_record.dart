import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnitOptionsRecord extends FirestoreRecord {
  UnitOptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "option_text" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  bool hasOptionText() => _optionText != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _optionText = snapshotData['option_text'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('unit_options')
          : FirebaseFirestore.instance.collectionGroup('unit_options');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('unit_options').doc(id);

  static Stream<UnitOptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnitOptionsRecord.fromSnapshot(s));

  static Future<UnitOptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnitOptionsRecord.fromSnapshot(s));

  static UnitOptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UnitOptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnitOptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnitOptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnitOptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnitOptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnitOptionsRecordData({
  int? index,
  String? optionText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'option_text': optionText,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnitOptionsRecordDocumentEquality implements Equality<UnitOptionsRecord> {
  const UnitOptionsRecordDocumentEquality();

  @override
  bool equals(UnitOptionsRecord? e1, UnitOptionsRecord? e2) {
    return e1?.index == e2?.index && e1?.optionText == e2?.optionText;
  }

  @override
  int hash(UnitOptionsRecord? e) =>
      const ListEquality().hash([e?.index, e?.optionText]);

  @override
  bool isValidKey(Object? o) => o is UnitOptionsRecord;
}
