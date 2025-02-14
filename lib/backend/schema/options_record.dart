import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptionsRecord extends FirestoreRecord {
  OptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "optionText" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  bool hasOptionText() => _optionText != null;

  // "displayText" field.
  String? _displayText;
  String get displayText => _displayText ?? '';
  bool hasDisplayText() => _displayText != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _optionText = snapshotData['optionText'] as String?;
    _displayText = snapshotData['displayText'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('options')
          : FirebaseFirestore.instance.collectionGroup('options');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('options').doc(id);

  static Stream<OptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OptionsRecord.fromSnapshot(s));

  static Future<OptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OptionsRecord.fromSnapshot(s));

  static OptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOptionsRecordData({
  int? index,
  String? optionText,
  String? displayText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'optionText': optionText,
      'displayText': displayText,
    }.withoutNulls,
  );

  return firestoreData;
}

class OptionsRecordDocumentEquality implements Equality<OptionsRecord> {
  const OptionsRecordDocumentEquality();

  @override
  bool equals(OptionsRecord? e1, OptionsRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.optionText == e2?.optionText &&
        e1?.displayText == e2?.displayText;
  }

  @override
  int hash(OptionsRecord? e) =>
      const ListEquality().hash([e?.index, e?.optionText, e?.displayText]);

  @override
  bool isValidKey(Object? o) => o is OptionsRecord;
}
