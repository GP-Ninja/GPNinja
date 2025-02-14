import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlashcardFeedbackRecord extends FirestoreRecord {
  FlashcardFeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "flashcard_id" field.
  DocumentReference? _flashcardId;
  DocumentReference? get flashcardId => _flashcardId;
  bool hasFlashcardId() => _flashcardId != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _flashcardId = snapshotData['flashcard_id'] as DocumentReference?;
    _comment = snapshotData['comment'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flashcard_feedback');

  static Stream<FlashcardFeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlashcardFeedbackRecord.fromSnapshot(s));

  static Future<FlashcardFeedbackRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FlashcardFeedbackRecord.fromSnapshot(s));

  static FlashcardFeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlashcardFeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlashcardFeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlashcardFeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlashcardFeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlashcardFeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlashcardFeedbackRecordData({
  DocumentReference? userId,
  DocumentReference? flashcardId,
  String? comment,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'flashcard_id': flashcardId,
      'comment': comment,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlashcardFeedbackRecordDocumentEquality
    implements Equality<FlashcardFeedbackRecord> {
  const FlashcardFeedbackRecordDocumentEquality();

  @override
  bool equals(FlashcardFeedbackRecord? e1, FlashcardFeedbackRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.flashcardId == e2?.flashcardId &&
        e1?.comment == e2?.comment &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(FlashcardFeedbackRecord? e) => const ListEquality()
      .hash([e?.userId, e?.flashcardId, e?.comment, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is FlashcardFeedbackRecord;
}
