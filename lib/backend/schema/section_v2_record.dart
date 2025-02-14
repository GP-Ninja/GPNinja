import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SectionV2Record extends FirestoreRecord {
  SectionV2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "section_name" field.
  String? _sectionName;
  String get sectionName => _sectionName ?? '';
  bool hasSectionName() => _sectionName != null;

  // "section_index" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  bool hasSectionIndex() => _sectionIndex != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sectionName = snapshotData['section_name'] as String?;
    _sectionIndex = castToType<int>(snapshotData['section_index']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sectionV2')
          : FirebaseFirestore.instance.collectionGroup('sectionV2');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('sectionV2').doc(id);

  static Stream<SectionV2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SectionV2Record.fromSnapshot(s));

  static Future<SectionV2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SectionV2Record.fromSnapshot(s));

  static SectionV2Record fromSnapshot(DocumentSnapshot snapshot) =>
      SectionV2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SectionV2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SectionV2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SectionV2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SectionV2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSectionV2RecordData({
  String? sectionName,
  int? sectionIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'section_name': sectionName,
      'section_index': sectionIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class SectionV2RecordDocumentEquality implements Equality<SectionV2Record> {
  const SectionV2RecordDocumentEquality();

  @override
  bool equals(SectionV2Record? e1, SectionV2Record? e2) {
    return e1?.sectionName == e2?.sectionName &&
        e1?.sectionIndex == e2?.sectionIndex;
  }

  @override
  int hash(SectionV2Record? e) =>
      const ListEquality().hash([e?.sectionName, e?.sectionIndex]);

  @override
  bool isValidKey(Object? o) => o is SectionV2Record;
}
