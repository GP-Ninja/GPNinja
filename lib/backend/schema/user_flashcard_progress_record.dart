import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFlashcardProgressRecord extends FirestoreRecord {
  UserFlashcardProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "flashcard_id" field.
  DocumentReference? _flashcardId;
  DocumentReference? get flashcardId => _flashcardId;
  bool hasFlashcardId() => _flashcardId != null;

  // "last_reviewed" field.
  DateTime? _lastReviewed;
  DateTime? get lastReviewed => _lastReviewed;
  bool hasLastReviewed() => _lastReviewed != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "review_count" field.
  int? _reviewCount;
  int get reviewCount => _reviewCount ?? 0;
  bool hasReviewCount() => _reviewCount != null;

  // "next_review_date" field.
  DateTime? _nextReviewDate;
  DateTime? get nextReviewDate => _nextReviewDate;
  bool hasNextReviewDate() => _nextReviewDate != null;

  // "interval" field.
  int? _interval;
  int get interval => _interval ?? 0;
  bool hasInterval() => _interval != null;

  // "ease_factor" field.
  int? _easeFactor;
  int get easeFactor => _easeFactor ?? 0;
  bool hasEaseFactor() => _easeFactor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _flashcardId = snapshotData['flashcard_id'] as DocumentReference?;
    _lastReviewed = snapshotData['last_reviewed'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _reviewCount = castToType<int>(snapshotData['review_count']);
    _nextReviewDate = snapshotData['next_review_date'] as DateTime?;
    _interval = castToType<int>(snapshotData['interval']);
    _easeFactor = castToType<int>(snapshotData['ease_factor']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_flashcard_progress')
          : FirebaseFirestore.instance
              .collectionGroup('user_flashcard_progress');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_flashcard_progress').doc(id);

  static Stream<UserFlashcardProgressRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UserFlashcardProgressRecord.fromSnapshot(s));

  static Future<UserFlashcardProgressRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserFlashcardProgressRecord.fromSnapshot(s));

  static UserFlashcardProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserFlashcardProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserFlashcardProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserFlashcardProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserFlashcardProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserFlashcardProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserFlashcardProgressRecordData({
  DocumentReference? flashcardId,
  DateTime? lastReviewed,
  String? status,
  int? reviewCount,
  DateTime? nextReviewDate,
  int? interval,
  int? easeFactor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'flashcard_id': flashcardId,
      'last_reviewed': lastReviewed,
      'status': status,
      'review_count': reviewCount,
      'next_review_date': nextReviewDate,
      'interval': interval,
      'ease_factor': easeFactor,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserFlashcardProgressRecordDocumentEquality
    implements Equality<UserFlashcardProgressRecord> {
  const UserFlashcardProgressRecordDocumentEquality();

  @override
  bool equals(
      UserFlashcardProgressRecord? e1, UserFlashcardProgressRecord? e2) {
    return e1?.flashcardId == e2?.flashcardId &&
        e1?.lastReviewed == e2?.lastReviewed &&
        e1?.status == e2?.status &&
        e1?.reviewCount == e2?.reviewCount &&
        e1?.nextReviewDate == e2?.nextReviewDate &&
        e1?.interval == e2?.interval &&
        e1?.easeFactor == e2?.easeFactor;
  }

  @override
  int hash(UserFlashcardProgressRecord? e) => const ListEquality().hash([
        e?.flashcardId,
        e?.lastReviewed,
        e?.status,
        e?.reviewCount,
        e?.nextReviewDate,
        e?.interval,
        e?.easeFactor
      ]);

  @override
  bool isValidKey(Object? o) => o is UserFlashcardProgressRecord;
}
