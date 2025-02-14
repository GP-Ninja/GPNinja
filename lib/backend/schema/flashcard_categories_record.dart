import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlashcardCategoriesRecord extends FirestoreRecord {
  FlashcardCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flashcard_categories');

  static Stream<FlashcardCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlashcardCategoriesRecord.fromSnapshot(s));

  static Future<FlashcardCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FlashcardCategoriesRecord.fromSnapshot(s));

  static FlashcardCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlashcardCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlashcardCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlashcardCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlashcardCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlashcardCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlashcardCategoriesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlashcardCategoriesRecordDocumentEquality
    implements Equality<FlashcardCategoriesRecord> {
  const FlashcardCategoriesRecordDocumentEquality();

  @override
  bool equals(FlashcardCategoriesRecord? e1, FlashcardCategoriesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(FlashcardCategoriesRecord? e) =>
      const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is FlashcardCategoriesRecord;
}
