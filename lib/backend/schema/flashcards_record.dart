import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlashcardsRecord extends FirestoreRecord {
  FlashcardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "category_id" field.
  DocumentReference? _categoryId;
  DocumentReference? get categoryId => _categoryId;
  bool hasCategoryId() => _categoryId != null;

  // "difficulty_level" field.
  String? _difficultyLevel;
  String get difficultyLevel => _difficultyLevel ?? '';
  bool hasDifficultyLevel() => _difficultyLevel != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "tags" field.
  List<DocumentReference>? _tags;
  List<DocumentReference> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "external_resource_link" field.
  String? _externalResourceLink;
  String get externalResourceLink => _externalResourceLink ?? '';
  bool hasExternalResourceLink() => _externalResourceLink != null;

  // "source_link" field.
  String? _sourceLink;
  String get sourceLink => _sourceLink ?? '';
  bool hasSourceLink() => _sourceLink != null;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _answer = snapshotData['answer'] as String?;
    _categoryId = snapshotData['category_id'] as DocumentReference?;
    _difficultyLevel = snapshotData['difficulty_level'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _externalResourceLink = snapshotData['external_resource_link'] as String?;
    _sourceLink = snapshotData['source_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flashcards');

  static Stream<FlashcardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlashcardsRecord.fromSnapshot(s));

  static Future<FlashcardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlashcardsRecord.fromSnapshot(s));

  static FlashcardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlashcardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlashcardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlashcardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlashcardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlashcardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlashcardsRecordData({
  String? question,
  String? answer,
  DocumentReference? categoryId,
  String? difficultyLevel,
  String? imageUrl,
  String? externalResourceLink,
  String? sourceLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'answer': answer,
      'category_id': categoryId,
      'difficulty_level': difficultyLevel,
      'image_url': imageUrl,
      'external_resource_link': externalResourceLink,
      'source_link': sourceLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlashcardsRecordDocumentEquality implements Equality<FlashcardsRecord> {
  const FlashcardsRecordDocumentEquality();

  @override
  bool equals(FlashcardsRecord? e1, FlashcardsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.question == e2?.question &&
        e1?.answer == e2?.answer &&
        e1?.categoryId == e2?.categoryId &&
        e1?.difficultyLevel == e2?.difficultyLevel &&
        e1?.imageUrl == e2?.imageUrl &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.externalResourceLink == e2?.externalResourceLink &&
        e1?.sourceLink == e2?.sourceLink;
  }

  @override
  int hash(FlashcardsRecord? e) => const ListEquality().hash([
        e?.question,
        e?.answer,
        e?.categoryId,
        e?.difficultyLevel,
        e?.imageUrl,
        e?.tags,
        e?.externalResourceLink,
        e?.sourceLink
      ]);

  @override
  bool isValidKey(Object? o) => o is FlashcardsRecord;
}
