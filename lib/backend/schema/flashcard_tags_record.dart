import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlashcardTagsRecord extends FirestoreRecord {
  FlashcardTagsRecord._(
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
      FirebaseFirestore.instance.collection('flashcard_tags');

  static Stream<FlashcardTagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlashcardTagsRecord.fromSnapshot(s));

  static Future<FlashcardTagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlashcardTagsRecord.fromSnapshot(s));

  static FlashcardTagsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlashcardTagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlashcardTagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlashcardTagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlashcardTagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlashcardTagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlashcardTagsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlashcardTagsRecordDocumentEquality
    implements Equality<FlashcardTagsRecord> {
  const FlashcardTagsRecordDocumentEquality();

  @override
  bool equals(FlashcardTagsRecord? e1, FlashcardTagsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(FlashcardTagsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is FlashcardTagsRecord;
}
