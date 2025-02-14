import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteSectionsRecord extends FirestoreRecord {
  ClicknoteSectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "section_title" field.
  String? _sectionTitle;
  String get sectionTitle => _sectionTitle ?? '';
  bool hasSectionTitle() => _sectionTitle != null;

  // "section_index" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  bool hasSectionIndex() => _sectionIndex != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sectionTitle = snapshotData['section_title'] as String?;
    _sectionIndex = castToType<int>(snapshotData['section_index']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('clicknote_sections')
          : FirebaseFirestore.instance.collectionGroup('clicknote_sections');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('clicknote_sections').doc(id);

  static Stream<ClicknoteSectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteSectionsRecord.fromSnapshot(s));

  static Future<ClicknoteSectionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClicknoteSectionsRecord.fromSnapshot(s));

  static ClicknoteSectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteSectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteSectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteSectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteSectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteSectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteSectionsRecordData({
  String? sectionTitle,
  int? sectionIndex,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'section_title': sectionTitle,
      'section_index': sectionIndex,
      'user_ref': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteSectionsRecordDocumentEquality
    implements Equality<ClicknoteSectionsRecord> {
  const ClicknoteSectionsRecordDocumentEquality();

  @override
  bool equals(ClicknoteSectionsRecord? e1, ClicknoteSectionsRecord? e2) {
    return e1?.sectionTitle == e2?.sectionTitle &&
        e1?.sectionIndex == e2?.sectionIndex &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(ClicknoteSectionsRecord? e) =>
      const ListEquality().hash([e?.sectionTitle, e?.sectionIndex, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteSectionsRecord;
}
