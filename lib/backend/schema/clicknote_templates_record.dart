import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteTemplatesRecord extends FirestoreRecord {
  ClicknoteTemplatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "is_published" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  bool hasIsPublished() => _isPublished != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "text_message" field.
  String? _textMessage;
  String get textMessage => _textMessage ?? '';
  bool hasTextMessage() => _textMessage != null;

  // "is_community_template" field.
  bool? _isCommunityTemplate;
  bool get isCommunityTemplate => _isCommunityTemplate ?? false;
  bool hasIsCommunityTemplate() => _isCommunityTemplate != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _image = snapshotData['image'] as String?;
    _isPublished = snapshotData['is_published'] as bool?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _isAdmin = snapshotData['is_admin'] as bool?;
    _textMessage = snapshotData['text_message'] as String?;
    _isCommunityTemplate = snapshotData['is_community_template'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clicknote_templates');

  static Stream<ClicknoteTemplatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteTemplatesRecord.fromSnapshot(s));

  static Future<ClicknoteTemplatesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClicknoteTemplatesRecord.fromSnapshot(s));

  static ClicknoteTemplatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteTemplatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteTemplatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteTemplatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteTemplatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteTemplatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteTemplatesRecordData({
  String? title,
  String? image,
  bool? isPublished,
  DocumentReference? userRef,
  bool? isAdmin,
  String? textMessage,
  bool? isCommunityTemplate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'image': image,
      'is_published': isPublished,
      'user_ref': userRef,
      'is_admin': isAdmin,
      'text_message': textMessage,
      'is_community_template': isCommunityTemplate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteTemplatesRecordDocumentEquality
    implements Equality<ClicknoteTemplatesRecord> {
  const ClicknoteTemplatesRecordDocumentEquality();

  @override
  bool equals(ClicknoteTemplatesRecord? e1, ClicknoteTemplatesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.isPublished == e2?.isPublished &&
        e1?.userRef == e2?.userRef &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.textMessage == e2?.textMessage &&
        e1?.isCommunityTemplate == e2?.isCommunityTemplate;
  }

  @override
  int hash(ClicknoteTemplatesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.image,
        e?.isPublished,
        e?.userRef,
        e?.isAdmin,
        e?.textMessage,
        e?.isCommunityTemplate
      ]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteTemplatesRecord;
}
