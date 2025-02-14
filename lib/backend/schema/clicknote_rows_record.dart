import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteRowsRecord extends FirestoreRecord {
  ClicknoteRowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "row_title" field.
  String? _rowTitle;
  String get rowTitle => _rowTitle ?? '';
  bool hasRowTitle() => _rowTitle != null;

  // "row_index" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  bool hasRowIndex() => _rowIndex != null;

  // "section_ref" field.
  DocumentReference? _sectionRef;
  DocumentReference? get sectionRef => _sectionRef;
  bool hasSectionRef() => _sectionRef != null;

  // "row_has_url" field.
  bool? _rowHasUrl;
  bool get rowHasUrl => _rowHasUrl ?? false;
  bool hasRowHasUrl() => _rowHasUrl != null;

  // "row_url" field.
  String? _rowUrl;
  String get rowUrl => _rowUrl ?? '';
  bool hasRowUrl() => _rowUrl != null;

  // "row_url_description" field.
  String? _rowUrlDescription;
  String get rowUrlDescription => _rowUrlDescription ?? '';
  bool hasRowUrlDescription() => _rowUrlDescription != null;

  void _initializeFields() {
    _rowTitle = snapshotData['row_title'] as String?;
    _rowIndex = castToType<int>(snapshotData['row_index']);
    _sectionRef = snapshotData['section_ref'] as DocumentReference?;
    _rowHasUrl = snapshotData['row_has_url'] as bool?;
    _rowUrl = snapshotData['row_url'] as String?;
    _rowUrlDescription = snapshotData['row_url_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clicknote_rows');

  static Stream<ClicknoteRowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteRowsRecord.fromSnapshot(s));

  static Future<ClicknoteRowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClicknoteRowsRecord.fromSnapshot(s));

  static ClicknoteRowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteRowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteRowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteRowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteRowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteRowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteRowsRecordData({
  String? rowTitle,
  int? rowIndex,
  DocumentReference? sectionRef,
  bool? rowHasUrl,
  String? rowUrl,
  String? rowUrlDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'row_title': rowTitle,
      'row_index': rowIndex,
      'section_ref': sectionRef,
      'row_has_url': rowHasUrl,
      'row_url': rowUrl,
      'row_url_description': rowUrlDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteRowsRecordDocumentEquality
    implements Equality<ClicknoteRowsRecord> {
  const ClicknoteRowsRecordDocumentEquality();

  @override
  bool equals(ClicknoteRowsRecord? e1, ClicknoteRowsRecord? e2) {
    return e1?.rowTitle == e2?.rowTitle &&
        e1?.rowIndex == e2?.rowIndex &&
        e1?.sectionRef == e2?.sectionRef &&
        e1?.rowHasUrl == e2?.rowHasUrl &&
        e1?.rowUrl == e2?.rowUrl &&
        e1?.rowUrlDescription == e2?.rowUrlDescription;
  }

  @override
  int hash(ClicknoteRowsRecord? e) => const ListEquality().hash([
        e?.rowTitle,
        e?.rowIndex,
        e?.sectionRef,
        e?.rowHasUrl,
        e?.rowUrl,
        e?.rowUrlDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteRowsRecord;
}
