import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SectionsRecord extends FirestoreRecord {
  SectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sectionName" field.
  String? _sectionName;
  String get sectionName => _sectionName ?? '';
  bool hasSectionName() => _sectionName != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sectionName = snapshotData['sectionName'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sections')
          : FirebaseFirestore.instance.collectionGroup('sections');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('sections').doc(id);

  static Stream<SectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SectionsRecord.fromSnapshot(s));

  static Future<SectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SectionsRecord.fromSnapshot(s));

  static SectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSectionsRecordData({
  String? sectionName,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sectionName': sectionName,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class SectionsRecordDocumentEquality implements Equality<SectionsRecord> {
  const SectionsRecordDocumentEquality();

  @override
  bool equals(SectionsRecord? e1, SectionsRecord? e2) {
    return e1?.sectionName == e2?.sectionName && e1?.order == e2?.order;
  }

  @override
  int hash(SectionsRecord? e) =>
      const ListEquality().hash([e?.sectionName, e?.order]);

  @override
  bool isValidKey(Object? o) => o is SectionsRecord;
}
