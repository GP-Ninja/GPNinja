import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteCommentsRecord extends FirestoreRecord {
  ClicknoteCommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "template_ref" field.
  DocumentReference? _templateRef;
  DocumentReference? get templateRef => _templateRef;
  bool hasTemplateRef() => _templateRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

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

  // "template_title" field.
  String? _templateTitle;
  String get templateTitle => _templateTitle ?? '';
  bool hasTemplateTitle() => _templateTitle != null;

  void _initializeFields() {
    _templateRef = snapshotData['template_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _userName = snapshotData['user_name'] as String?;
    _commentText = snapshotData['comment_text'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _likeCount = castToType<int>(snapshotData['like_count']);
    _likedBy = getDataList(snapshotData['liked_by']);
    _templateTitle = snapshotData['template_title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clicknote_comments');

  static Stream<ClicknoteCommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteCommentsRecord.fromSnapshot(s));

  static Future<ClicknoteCommentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClicknoteCommentsRecord.fromSnapshot(s));

  static ClicknoteCommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteCommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteCommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteCommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteCommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteCommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteCommentsRecordData({
  DocumentReference? templateRef,
  DocumentReference? userRef,
  String? userName,
  String? commentText,
  DateTime? timestamp,
  int? likeCount,
  String? templateTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'template_ref': templateRef,
      'user_ref': userRef,
      'user_name': userName,
      'comment_text': commentText,
      'timestamp': timestamp,
      'like_count': likeCount,
      'template_title': templateTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteCommentsRecordDocumentEquality
    implements Equality<ClicknoteCommentsRecord> {
  const ClicknoteCommentsRecordDocumentEquality();

  @override
  bool equals(ClicknoteCommentsRecord? e1, ClicknoteCommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.templateRef == e2?.templateRef &&
        e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.commentText == e2?.commentText &&
        e1?.timestamp == e2?.timestamp &&
        e1?.likeCount == e2?.likeCount &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.templateTitle == e2?.templateTitle;
  }

  @override
  int hash(ClicknoteCommentsRecord? e) => const ListEquality().hash([
        e?.templateRef,
        e?.userRef,
        e?.userName,
        e?.commentText,
        e?.timestamp,
        e?.likeCount,
        e?.likedBy,
        e?.templateTitle
      ]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteCommentsRecord;
}
