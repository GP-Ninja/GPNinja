import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlattenedTemplateCommentsRecord extends FirestoreRecord {
  FlattenedTemplateCommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "comment_text" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "like_count" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  bool hasLikeCount() => _likeCount != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _userName = snapshotData['user_name'] as String?;
    _commentText = snapshotData['comment_text'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _likeCount = castToType<int>(snapshotData['like_count']);
    _likedBy = getDataList(snapshotData['liked_by']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('flattened_template_comments')
          : FirebaseFirestore.instance
              .collectionGroup('flattened_template_comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('flattened_template_comments').doc(id);

  static Stream<FlattenedTemplateCommentsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => FlattenedTemplateCommentsRecord.fromSnapshot(s));

  static Future<FlattenedTemplateCommentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FlattenedTemplateCommentsRecord.fromSnapshot(s));

  static FlattenedTemplateCommentsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      FlattenedTemplateCommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlattenedTemplateCommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlattenedTemplateCommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlattenedTemplateCommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlattenedTemplateCommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlattenedTemplateCommentsRecordData({
  DocumentReference? userId,
  String? userName,
  String? commentText,
  DateTime? timestamp,
  int? likeCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'user_name': userName,
      'comment_text': commentText,
      'timestamp': timestamp,
      'like_count': likeCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlattenedTemplateCommentsRecordDocumentEquality
    implements Equality<FlattenedTemplateCommentsRecord> {
  const FlattenedTemplateCommentsRecordDocumentEquality();

  @override
  bool equals(FlattenedTemplateCommentsRecord? e1,
      FlattenedTemplateCommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.commentText == e2?.commentText &&
        e1?.timestamp == e2?.timestamp &&
        e1?.likeCount == e2?.likeCount &&
        listEquality.equals(e1?.likedBy, e2?.likedBy);
  }

  @override
  int hash(FlattenedTemplateCommentsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.userName,
        e?.commentText,
        e?.timestamp,
        e?.likeCount,
        e?.likedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is FlattenedTemplateCommentsRecord;
}
